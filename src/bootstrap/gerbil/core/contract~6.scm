(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g82391_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82392_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82393_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82396_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82397_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82400_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82401_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82402_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82403_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82407_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82408_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82409_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82410_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g82414_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46410%_)
        (let* ((_%__stx7705577056%_ _%stx46410%_)
               (_%g4641946628%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7705577056%_))))
          (let ((_%__kont7705877059%_
                 (lambda (_%L47534%_
                          _%L47536%_
                          _%L47537%_
                          _%L47538%_
                          _%L47539%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47539%_ (cons _%L47538%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47539%_
                                                       (cons _%L47537%_
                                                             (cons _%L47536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4758247585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4758347588%_)
                  (cons _%g4758247585%_ _%g4758347588%_))
                '()
                _%L47534%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7706277063%_
                 (lambda (_%L47378%_
                          _%L47380%_
                          _%L47381%_
                          _%L47382%_
                          _%L47383%_
                          _%L47384%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47384%_ (cons _%L47383%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47384%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47381%_ (cons _%L47380%_ '())))
                           (foldr (lambda (_%g4742847431%_ _%g4742947434%_)
                                    (cons _%g4742847431%_ _%g4742947434%_))
                                  '()
                                  _%L47378%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7706677067%_
                 (lambda (_%L47195%_ _%L47197%_ _%L47198%_ _%L47199%_)
                   (let ((_%meta47236%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46410%_
                             _%L47197%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47236%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47199%_
                                           (cons _%L47198%_
                                                 (cons _%L47197%_ '())))
                                     (foldr (lambda (_%g4724047243%_
                                                     _%g4724147246%_)
                                              (cons _%g4724047243%_
                                                    _%g4724147246%_))
                                            '()
                                            _%L47195%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47236%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47199%_
                                               (cons _%L47198%_
                                                     (cons _%L47197%_ '())))
                                         (foldr (lambda (_%g4725047253%_
                                                         _%g4725147256%_)
                                                  (cons _%g4725047253%_
                                                        _%g4725147256%_))
                                                '()
                                                _%L47195%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46410%_
                              _%L47197%_
                              _%meta47236%_))))))
                (_%__kont7707077071%_
                 (lambda (_%L47073%_ _%L47075%_ _%L47076%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47076%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47075%_ '())))
                               (foldr (lambda (_%g4709947102%_ _%g4710047105%_)
                                        (cons _%g4709947102%_ _%g4710047105%_))
                                      '()
                                      _%L47073%_)))))
                (_%__kont7707477075%_
                 (lambda (_%L46931%_
                          _%L46933%_
                          _%L46934%_
                          _%L46935%_
                          _%L46936%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46936%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46935%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46936%_
                                                       (cons _%L46934%_
                                                             (cons _%L46933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4697746980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4697846983%_)
                  (cons _%g4697746980%_ _%g4697846983%_))
                '()
                _%L46931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7707877079%_
                 (lambda (_%L46789%_ _%L46791%_ _%L46792%_ _%L46793%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46793%_ _%L46792%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46791%_
                                                 (foldr (lambda (_%g4681546818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4681646821%_)
                  (cons _%g4681546818%_ _%g4681646821%_))
                '()
                _%L46789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7708277083%_
                 (lambda (_%L46685%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4670346706%_ _%g4670446709%_)
                                        (cons _%g4670346706%_ _%g4670446709%_))
                                      '()
                                      _%L46685%_))))))
            (let* ((_%__match7738877389%_
                    (lambda (_%e4660846635%_
                             _%hd4660946639%_
                             _%tl4661046642%_
                             _%e4661146645%_
                             _%hd4661246649%_
                             _%tl4661346652%_
                             _%__splice7708477085%_
                             _%target4661446655%_
                             _%tl4661646658%_)
                      (letrec ((_%loop4661746661%_
                                (lambda (_%hd4661546665%_ _%body4662146668%_)
                                  (if (gx#stx-pair? _%hd4661546665%_)
                                      (let ((_%e4661846671%_
                                             (gx#syntax-e _%hd4661546665%_)))
                                        (let ((_%lp-tl4662046678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661846671%_)))
                                              (_%lp-hd4661946675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661846671%_))))
                                          (_%loop4661746661%_
                                           _%lp-tl4662046678%_
                                           (cons _%lp-hd4661946675%_
                                                 _%body4662146668%_))))
                                      (let ((_%body4662246681%_
                                             (reverse _%body4662146668%_)))
                                        (_%__kont7708277083%_
                                         _%body4662246681%_))))))
                        (_%loop4661746661%_ _%target4661446655%_ '()))))
                   (_%__match7736677367%_
                    (lambda (_%e4658646719%_
                             _%hd4658746723%_
                             _%tl4658846726%_
                             _%e4658946729%_
                             _%hd4659046733%_
                             _%tl4659146736%_
                             _%e4659246739%_
                             _%hd4659346743%_
                             _%tl4659446746%_
                             _%e4659546749%_
                             _%hd4659646753%_
                             _%tl4659746756%_
                             _%__splice7708077081%_
                             _%target4659846759%_
                             _%tl4660046762%_)
                      (letrec ((_%loop4660146765%_
                                (lambda (_%hd4659946769%_ _%body4660546772%_)
                                  (if (gx#stx-pair? _%hd4659946769%_)
                                      (let ((_%e4660246775%_
                                             (gx#syntax-e _%hd4659946769%_)))
                                        (let ((_%lp-tl4660446782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4660246775%_)))
                                              (_%lp-hd4660346779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4660246775%_))))
                                          (_%loop4660146765%_
                                           _%lp-tl4660446782%_
                                           (cons _%lp-hd4660346779%_
                                                 _%body4660546772%_))))
                                      (let ((_%body4660646785%_
                                             (reverse _%body4660546772%_)))
                                        (let ((_%L46789%_ _%body4660646785%_)
                                              (_%L46791%_ _%tl4659446746%_)
                                              (_%L46792%_ _%tl4659746756%_)
                                              (_%L46793%_ _%hd4659646753%_))
                                          (if (gx#identifier? _%L46793%_)
                                              (_%__kont7707877079%_
                                               _%L46789%_
                                               _%L46791%_
                                               _%L46792%_
                                               _%L46793%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_)))))))))
                        (_%loop4660146765%_ _%target4659846759%_ '()))))
                   (_%__match7735277353%_
                    (lambda (_%e4658646719%_
                             _%hd4658746723%_
                             _%tl4658846726%_
                             _%e4658946729%_
                             _%hd4659046733%_
                             _%tl4659146736%_
                             _%e4659246739%_
                             _%hd4659346743%_
                             _%tl4659446746%_)
                      (if (gx#stx-pair? _%hd4659346743%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4659346743%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (if (gx#stx-pair/null? _%tl4659146736%_)
                                  (let ((_%__splice7708077081%_
                                         (gx#syntax-split-splice
                                          _%tl4659146736%_
                                          '0)))
                                    (let ((_%tl4660046762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '1)))
                                          (_%target4659846759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660046762%_)
                                          (_%__match7736677367%_
                                           _%e4658646719%_
                                           _%hd4658746723%_
                                           _%tl4658846726%_
                                           _%e4658946729%_
                                           _%hd4659046733%_
                                           _%tl4659146736%_
                                           _%e4659246739%_
                                           _%hd4659346743%_
                                           _%tl4659446746%_
                                           _%e4659546749%_
                                           _%hd4659646753%_
                                           _%tl4659746756%_
                                           _%__splice7708077081%_
                                           _%target4659846759%_
                                           _%tl4660046762%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                   (_%__match7733477335%_
                    (lambda (_%e4655246831%_
                             _%hd4655346835%_
                             _%tl4655446838%_
                             _%e4655546841%_
                             _%hd4655646845%_
                             _%tl4655746848%_
                             _%e4655846851%_
                             _%hd4655946855%_
                             _%tl4656046858%_
                             _%e4656146861%_
                             _%hd4656246865%_
                             _%tl4656346868%_
                             _%e4656446871%_
                             _%hd4656546875%_
                             _%tl4656646878%_
                             _%e4656746881%_
                             _%hd4656846885%_
                             _%tl4656946888%_
                             _%e4657046891%_
                             _%hd4657146895%_
                             _%tl4657246898%_
                             _%__splice7707677077%_
                             _%target4657346901%_
                             _%tl4657546904%_)
                      (letrec ((_%loop4657646907%_
                                (lambda (_%hd4657446911%_ _%body4658046914%_)
                                  (if (gx#stx-pair? _%hd4657446911%_)
                                      (let ((_%e4657746917%_
                                             (gx#syntax-e _%hd4657446911%_)))
                                        (let ((_%lp-tl4657946924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4657746917%_)))
                                              (_%lp-hd4657846921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4657746917%_))))
                                          (_%loop4657646907%_
                                           _%lp-tl4657946924%_
                                           (cons _%lp-hd4657846921%_
                                                 _%body4658046914%_))))
                                      (let ((_%body4658146927%_
                                             (reverse _%body4658046914%_)))
                                        (let ((_%L46931%_ _%body4658146927%_)
                                              (_%L46933%_ _%hd4657146895%_)
                                              (_%L46934%_ _%hd4656846885%_)
                                              (_%L46935%_ _%hd4656546875%_)
                                              (_%L46936%_ _%hd4655946855%_))
                                          (if (and (gx#identifier? _%L46936%_)
                                                   (gx#identifier? _%L46933%_)
                                                   (gx#identifier? _%L46934%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46934%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46934%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46934%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46934%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7707477075%_
                                               _%L46931%_
                                               _%L46933%_
                                               _%L46934%_
                                               _%L46935%_
                                               _%L46936%_)
                                              (_%__match7735277353%_
                                               _%e4655246831%_
                                               _%hd4655346835%_
                                               _%tl4655446838%_
                                               _%e4655546841%_
                                               _%hd4655646845%_
                                               _%tl4655746848%_
                                               _%e4655846851%_
                                               _%hd4655946855%_
                                               _%tl4656046858%_))))))))
                        (_%loop4657646907%_ _%target4657346901%_ '()))))
                   (_%__match7727877279%_
                    (lambda (_%e4652346993%_
                             _%hd4652446997%_
                             _%tl4652547000%_
                             _%e4652647003%_
                             _%hd4652747007%_
                             _%tl4652847010%_
                             _%e4652947013%_
                             _%hd4653047017%_
                             _%tl4653147020%_
                             _%e4653247023%_
                             _%hd4653347027%_
                             _%tl4653447030%_
                             _%e4653547033%_
                             _%hd4653647037%_
                             _%tl4653747040%_
                             _%__splice7707277073%_
                             _%target4653847043%_
                             _%tl4654047046%_)
                      (letrec ((_%loop4654147049%_
                                (lambda (_%hd4653947053%_ _%body4654547056%_)
                                  (if (gx#stx-pair? _%hd4653947053%_)
                                      (let ((_%e4654247059%_
                                             (gx#syntax-e _%hd4653947053%_)))
                                        (let ((_%lp-tl4654447066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4654247059%_)))
                                              (_%lp-hd4654347063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4654247059%_))))
                                          (_%loop4654147049%_
                                           _%lp-tl4654447066%_
                                           (cons _%lp-hd4654347063%_
                                                 _%body4654547056%_))))
                                      (let ((_%body4654647069%_
                                             (reverse _%body4654547056%_)))
                                        (let ((_%L47073%_ _%body4654647069%_)
                                              (_%L47075%_ _%hd4653647037%_)
                                              (_%L47076%_ _%hd4653047017%_))
                                          (if (gx#identifier? _%L47076%_)
                                              (_%__kont7707077071%_
                                               _%L47073%_
                                               _%L47075%_
                                               _%L47076%_)
                                              (_%__match7735277353%_
                                               _%e4652346993%_
                                               _%hd4652446997%_
                                               _%tl4652547000%_
                                               _%e4652647003%_
                                               _%hd4652747007%_
                                               _%tl4652847010%_
                                               _%e4652947013%_
                                               _%hd4653047017%_
                                               _%tl4653147020%_))))))))
                        (_%loop4654147049%_ _%target4653847043%_ '()))))
                   (_%__match7725877259%_
                    (lambda (_%e4652346993%_
                             _%hd4652446997%_
                             _%tl4652547000%_
                             _%e4652647003%_
                             _%hd4652747007%_
                             _%tl4652847010%_
                             _%e4652947013%_
                             _%hd4653047017%_
                             _%tl4653147020%_
                             _%e4653247023%_
                             _%hd4653347027%_
                             _%tl4653447030%_)
                      (if (gx#identifier? _%hd4653347027%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82391_|
                               _%hd4653347027%_)
                              (if (gx#stx-pair? _%tl4653447030%_)
                                  (let ((_%e4653547033%_
                                         (gx#syntax-e _%tl4653447030%_)))
                                    (let ((_%tl4653747040%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4653547033%_)))
                                          (_%hd4653647037%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4653547033%_))))
                                      (if (gx#stx-null? _%tl4653747040%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4652847010%_)
                                              (let ((_%__splice7707277073%_
                                                     (gx#syntax-split-splice
                                                      _%tl4652847010%_
                                                      '0)))
                                                (let ((_%tl4654047046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7707277073%_
                                                          '1)))
                                                      (_%target4653847043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7707277073%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4654047046%_)
                                                      (_%__match7727877279%_
                                                       _%e4652346993%_
                                                       _%hd4652446997%_
                                                       _%tl4652547000%_
                                                       _%e4652647003%_
                                                       _%hd4652747007%_
                                                       _%tl4652847010%_
                                                       _%e4652947013%_
                                                       _%hd4653047017%_
                                                       _%tl4653147020%_
                                                       _%e4653247023%_
                                                       _%hd4653347027%_
                                                       _%tl4653447030%_
                                                       _%e4653547033%_
                                                       _%hd4653647037%_
                                                       _%tl4653747040%_
                                                       _%__splice7707277073%_
                                                       _%target4653847043%_
                                                       _%tl4654047046%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4653047017%_)
                                                          (let ((_%e4659546749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4653047017%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653047017%_)
                                                  (let ((_%e4659546749%_
                                                         (gx#syntax-e
                                                          _%hd4653047017%_)))
                                                    (let ((_%tl4659746756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659546749%_)))
                                                          (_%hd4659646753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659546749%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4641946628%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))
                                          (if (gx#stx-pair? _%tl4653747040%_)
                                              (let ((_%e4656746881%_
                                                     (gx#syntax-e
                                                      _%tl4653747040%_)))
                                                (let ((_%tl4656946888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4656746881%_)))
                                                      (_%hd4656846885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4656746881%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4656946888%_)
                                                      (let ((_%e4657046891%_
                                                             (gx#syntax-e
                                                              _%tl4656946888%_)))
                                                        (let ((_%tl4657246898%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657046891%_)))
                      (_%hd4657146895%_
                       (let () (declare (not safe)) (##car _%e4657046891%_))))
                  (if (gx#stx-null? _%tl4657246898%_)
                      (if (gx#stx-pair/null? _%tl4652847010%_)
                          (let ((_%__splice7707677077%_
                                 (gx#syntax-split-splice _%tl4652847010%_ '0)))
                            (let ((_%tl4657546904%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7707677077%_ '1)))
                                  (_%target4657346901%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7707677077%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657546904%_)
                                  (_%__match7733477335%_
                                   _%e4652346993%_
                                   _%hd4652446997%_
                                   _%tl4652547000%_
                                   _%e4652647003%_
                                   _%hd4652747007%_
                                   _%tl4652847010%_
                                   _%e4652947013%_
                                   _%hd4653047017%_
                                   _%tl4653147020%_
                                   _%e4653247023%_
                                   _%hd4653347027%_
                                   _%tl4653447030%_
                                   _%e4653547033%_
                                   _%hd4653647037%_
                                   _%tl4653747040%_
                                   _%e4656746881%_
                                   _%hd4656846885%_
                                   _%tl4656946888%_
                                   _%e4657046891%_
                                   _%hd4657146895%_
                                   _%tl4657246898%_
                                   _%__splice7707677077%_
                                   _%target4657346901%_
                                   _%tl4657546904%_)
                                  (if (gx#stx-pair? _%hd4653047017%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4653047017%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))
                          (if (gx#stx-pair? _%hd4653047017%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4653047017%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                      (if (gx#stx-pair? _%hd4653047017%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4653047017%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (if (gx#stx-pair/null? _%tl4652847010%_)
                                  (let ((_%__splice7708077081%_
                                         (gx#syntax-split-splice
                                          _%tl4652847010%_
                                          '0)))
                                    (let ((_%tl4660046762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '1)))
                                          (_%target4659846759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660046762%_)
                                          (_%__match7736677367%_
                                           _%e4652346993%_
                                           _%hd4652446997%_
                                           _%tl4652547000%_
                                           _%e4652647003%_
                                           _%hd4652747007%_
                                           _%tl4652847010%_
                                           _%e4652947013%_
                                           _%hd4653047017%_
                                           _%tl4653147020%_
                                           _%e4659546749%_
                                           _%hd4659646753%_
                                           _%tl4659746756%_
                                           _%__splice7708077081%_
                                           _%target4659846759%_
                                           _%tl4660046762%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_))))))
              (if (gx#stx-pair? _%hd4653047017%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4653047017%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4652847010%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4652847010%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4652346993%_
                                   _%hd4652446997%_
                                   _%tl4652547000%_
                                   _%e4652647003%_
                                   _%hd4652747007%_
                                   _%tl4652847010%_
                                   _%e4652947013%_
                                   _%hd4653047017%_
                                   _%tl4653147020%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4653047017%_)
                                                  (let ((_%e4659546749%_
                                                         (gx#syntax-e
                                                          _%hd4653047017%_)))
                                                    (let ((_%tl4659746756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659546749%_)))
                                                          (_%hd4659646753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659546749%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4652847010%_)
                                                          (let ((_%__splice7708077081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4652847010%_ '0)))
                    (let ((_%tl4660046762%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '1)))
                          (_%target4659846759%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '0))))
                      (if (gx#stx-null? _%tl4660046762%_)
                          (_%__match7736677367%_
                           _%e4652346993%_
                           _%hd4652446997%_
                           _%tl4652547000%_
                           _%e4652647003%_
                           _%hd4652747007%_
                           _%tl4652847010%_
                           _%e4652947013%_
                           _%hd4653047017%_
                           _%tl4653147020%_
                           _%e4659546749%_
                           _%hd4659646753%_
                           _%tl4659746756%_
                           _%__splice7708077081%_
                           _%target4659846759%_
                           _%tl4660046762%_)
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))))
                                  (if (gx#stx-pair? _%hd4653047017%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4653047017%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4652847010%_)
                                              (let ((_%__splice7708077081%_
                                                     (gx#syntax-split-splice
                                                      _%tl4652847010%_
                                                      '0)))
                                                (let ((_%tl4660046762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '1)))
                                                      (_%target4659846759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660046762%_)
                                                      (_%__match7736677367%_
                                                       _%e4652346993%_
                                                       _%hd4652446997%_
                                                       _%tl4652547000%_
                                                       _%e4652647003%_
                                                       _%hd4652747007%_
                                                       _%tl4652847010%_
                                                       _%e4652947013%_
                                                       _%hd4653047017%_
                                                       _%tl4653147020%_
                                                       _%e4659546749%_
                                                       _%hd4659646753%_
                                                       _%tl4659746756%_
                                                       _%__splice7708077081%_
                                                       _%target4659846759%_
                                                       _%tl4660046762%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4641946628%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                              (if (gx#stx-pair? _%hd4653047017%_)
                                  (let ((_%e4659546749%_
                                         (gx#syntax-e _%hd4653047017%_)))
                                    (let ((_%tl4659746756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659546749%_)))
                                          (_%hd4659646753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659546749%_))))
                                      (if (gx#stx-pair/null? _%tl4652847010%_)
                                          (let ((_%__splice7708077081%_
                                                 (gx#syntax-split-splice
                                                  _%tl4652847010%_
                                                  '0)))
                                            (let ((_%tl4660046762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7708077081%_
                                                      '1)))
                                                  (_%target4659846759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7708077081%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4660046762%_)
                                                  (_%__match7736677367%_
                                                   _%e4652346993%_
                                                   _%hd4652446997%_
                                                   _%tl4652547000%_
                                                   _%e4652647003%_
                                                   _%hd4652747007%_
                                                   _%tl4652847010%_
                                                   _%e4652947013%_
                                                   _%hd4653047017%_
                                                   _%tl4653147020%_
                                                   _%e4659546749%_
                                                   _%hd4659646753%_
                                                   _%tl4659746756%_
                                                   _%__splice7708077081%_
                                                   _%target4659846759%_
                                                   _%tl4660046762%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                          (if (gx#stx-pair? _%hd4653047017%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4653047017%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (if (gx#stx-pair/null? _%tl4652847010%_)
                                      (let ((_%__splice7708077081%_
                                             (gx#syntax-split-splice
                                              _%tl4652847010%_
                                              '0)))
                                        (let ((_%tl4660046762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7708077081%_
                                                  '1)))
                                              (_%target4659846759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7708077081%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4660046762%_)
                                              (_%__match7736677367%_
                                               _%e4652346993%_
                                               _%hd4652446997%_
                                               _%tl4652547000%_
                                               _%e4652647003%_
                                               _%hd4652747007%_
                                               _%tl4652847010%_
                                               _%e4652947013%_
                                               _%hd4653047017%_
                                               _%tl4653147020%_
                                               _%e4659546749%_
                                               _%hd4659646753%_
                                               _%tl4659746756%_
                                               _%__splice7708077081%_
                                               _%target4659846759%_
                                               _%tl4660046762%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_))))))
                   (_%__match7723477235%_
                    (lambda (_%e4649647115%_
                             _%hd4649747119%_
                             _%tl4649847122%_
                             _%e4649947125%_
                             _%hd4650047129%_
                             _%tl4650147132%_
                             _%e4650247135%_
                             _%hd4650347139%_
                             _%tl4650447142%_
                             _%e4650547145%_
                             _%hd4650647149%_
                             _%tl4650747152%_
                             _%e4650847155%_
                             _%hd4650947159%_
                             _%tl4651047162%_
                             _%__splice7706877069%_
                             _%target4651147165%_
                             _%tl4651347168%_)
                      (letrec ((_%loop4651447171%_
                                (lambda (_%hd4651247175%_ _%body4651847178%_)
                                  (if (gx#stx-pair? _%hd4651247175%_)
                                      (let ((_%e4651547181%_
                                             (gx#syntax-e _%hd4651247175%_)))
                                        (let ((_%lp-tl4651747188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4651547181%_)))
                                              (_%lp-hd4651647185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4651547181%_))))
                                          (_%loop4651447171%_
                                           _%lp-tl4651747188%_
                                           (cons _%lp-hd4651647185%_
                                                 _%body4651847178%_))))
                                      (let ((_%body4651947191%_
                                             (reverse _%body4651847178%_)))
                                        (let ((_%L47195%_ _%body4651947191%_)
                                              (_%L47197%_ _%hd4650947159%_)
                                              (_%L47198%_ _%hd4650647149%_)
                                              (_%L47199%_ _%hd4650347139%_))
                                          (if (and (gx#identifier? _%L47199%_)
                                                   (gx#identifier? _%L47197%_)
                                                   (gx#identifier? _%L47198%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47198%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7706677067%_
                                               _%L47195%_
                                               _%L47197%_
                                               _%L47198%_
                                               _%L47199%_)
                                              (_%__match7725877259%_
                                               _%e4649647115%_
                                               _%hd4649747119%_
                                               _%tl4649847122%_
                                               _%e4649947125%_
                                               _%hd4650047129%_
                                               _%tl4650147132%_
                                               _%e4650247135%_
                                               _%hd4650347139%_
                                               _%tl4650447142%_
                                               _%e4650547145%_
                                               _%hd4650647149%_
                                               _%tl4650747152%_))))))))
                        (_%loop4651447171%_ _%target4651147165%_ '()))))
                   (_%__match7719477195%_
                    (lambda (_%e4645947268%_
                             _%hd4646047272%_
                             _%tl4646147275%_
                             _%e4646247278%_
                             _%hd4646347282%_
                             _%tl4646447285%_
                             _%e4646547288%_
                             _%hd4646647292%_
                             _%tl4646747295%_
                             _%e4646847298%_
                             _%hd4646947302%_
                             _%tl4647047305%_
                             _%e4647147308%_
                             _%hd4647247312%_
                             _%tl4647347315%_
                             _%e4647447318%_
                             _%hd4647547322%_
                             _%tl4647647325%_
                             _%e4647747328%_
                             _%hd4647847332%_
                             _%tl4647947335%_
                             _%e4648047338%_
                             _%hd4648147342%_
                             _%tl4648247345%_
                             _%__splice7706477065%_
                             _%target4648347348%_
                             _%tl4648547351%_)
                      (letrec ((_%loop4648647354%_
                                (lambda (_%hd4648447358%_ _%body4649047361%_)
                                  (if (gx#stx-pair? _%hd4648447358%_)
                                      (let ((_%e4648747364%_
                                             (gx#syntax-e _%hd4648447358%_)))
                                        (let ((_%lp-tl4648947371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4648747364%_)))
                                              (_%lp-hd4648847368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4648747364%_))))
                                          (_%loop4648647354%_
                                           _%lp-tl4648947371%_
                                           (cons _%lp-hd4648847368%_
                                                 _%body4649047361%_))))
                                      (let ((_%body4649147374%_
                                             (reverse _%body4649047361%_)))
                                        (let ((_%L47378%_ _%body4649147374%_)
                                              (_%L47380%_ _%hd4648147342%_)
                                              (_%L47381%_ _%hd4647847332%_)
                                              (_%L47382%_ _%hd4647547322%_)
                                              (_%L47383%_ _%hd4646947302%_)
                                              (_%L47384%_ _%hd4646647292%_))
                                          (if (and (gx#identifier? _%L47384%_)
                                                   (gx#identifier? _%L47380%_)
                                                   (gx#identifier? _%L47381%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47381%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47381%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47381%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47381%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7706277063%_
                                               _%L47378%_
                                               _%L47380%_
                                               _%L47381%_
                                               _%L47382%_
                                               _%L47383%_
                                               _%L47384%_)
                                              (_%__match7725877259%_
                                               _%e4645947268%_
                                               _%hd4646047272%_
                                               _%tl4646147275%_
                                               _%e4646247278%_
                                               _%hd4646347282%_
                                               _%tl4646447285%_
                                               _%e4646547288%_
                                               _%hd4646647292%_
                                               _%tl4646747295%_
                                               _%e4646847298%_
                                               _%hd4646947302%_
                                               _%tl4647047305%_))))))))
                        (_%loop4648647354%_ _%target4648347348%_ '()))))
                   (_%__match7716277163%_
                    (lambda (_%e4645947268%_
                             _%hd4646047272%_
                             _%tl4646147275%_
                             _%e4646247278%_
                             _%hd4646347282%_
                             _%tl4646447285%_
                             _%e4646547288%_
                             _%hd4646647292%_
                             _%tl4646747295%_
                             _%e4646847298%_
                             _%hd4646947302%_
                             _%tl4647047305%_
                             _%e4647147308%_
                             _%hd4647247312%_
                             _%tl4647347315%_)
                      (if (gx#identifier? _%hd4647247312%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g82392_|
                               _%hd4647247312%_)
                              (if (gx#stx-pair? _%tl4647347315%_)
                                  (let ((_%e4647447318%_
                                         (gx#syntax-e _%tl4647347315%_)))
                                    (let ((_%tl4647647325%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4647447318%_)))
                                          (_%hd4647547322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4647447318%_))))
                                      (if (gx#stx-pair? _%tl4647647325%_)
                                          (let ((_%e4647747328%_
                                                 (gx#syntax-e
                                                  _%tl4647647325%_)))
                                            (let ((_%tl4647947335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4647747328%_)))
                                                  (_%hd4647847332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4647747328%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4647947335%_)
                                                  (let ((_%e4648047338%_
                                                         (gx#syntax-e
                                                          _%tl4647947335%_)))
                                                    (let ((_%tl4648247345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4648047338%_)))
                                                          (_%hd4648147342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4648047338%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4648247345%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646447285%_)
                                                              (let ((_%__splice7706477065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646447285%_ '0)))
                        (let ((_%tl4648547351%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7706477065%_ '1)))
                              (_%target4648347348%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7706477065%_ '0))))
                          (if (gx#stx-null? _%tl4648547351%_)
                              (_%__match7719477195%_
                               _%e4645947268%_
                               _%hd4646047272%_
                               _%tl4646147275%_
                               _%e4646247278%_
                               _%hd4646347282%_
                               _%tl4646447285%_
                               _%e4646547288%_
                               _%hd4646647292%_
                               _%tl4646747295%_
                               _%e4646847298%_
                               _%hd4646947302%_
                               _%tl4647047305%_
                               _%e4647147308%_
                               _%hd4647247312%_
                               _%tl4647347315%_
                               _%e4647447318%_
                               _%hd4647547322%_
                               _%tl4647647325%_
                               _%e4647747328%_
                               _%hd4647847332%_
                               _%tl4647947335%_
                               _%e4648047338%_
                               _%hd4648147342%_
                               _%tl4648247345%_
                               _%__splice7706477065%_
                               _%target4648347348%_
                               _%tl4648547351%_)
                              (if (gx#stx-pair? _%hd4646647292%_)
                                  (let ((_%e4659546749%_
                                         (gx#syntax-e _%hd4646647292%_)))
                                    (let ((_%tl4659746756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659546749%_)))
                                          (_%hd4659646753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659546749%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))))
                      (if (gx#stx-pair? _%hd4646647292%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4646647292%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                  (if (gx#stx-pair? _%hd4646647292%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4646647292%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (if (gx#stx-pair/null? _%tl4646447285%_)
                              (let ((_%__splice7708077081%_
                                     (gx#syntax-split-splice
                                      _%tl4646447285%_
                                      '0)))
                                (let ((_%tl4660046762%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '1)))
                                      (_%target4659846759%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660046762%_)
                                      (_%__match7736677367%_
                                       _%e4645947268%_
                                       _%hd4646047272%_
                                       _%tl4646147275%_
                                       _%e4646247278%_
                                       _%hd4646347282%_
                                       _%tl4646447285%_
                                       _%e4646547288%_
                                       _%hd4646647292%_
                                       _%tl4646747295%_
                                       _%e4659546749%_
                                       _%hd4659646753%_
                                       _%tl4659746756%_
                                       _%__splice7708077081%_
                                       _%target4659846759%_
                                       _%tl4660046762%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4646947302%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82391_|
                                                           _%hd4646947302%_)
                                                          (if (gx#stx-null?
                                                               _%tl4647947335%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4646447285%_)
                          (let ((_%__splice7707677077%_
                                 (gx#syntax-split-splice _%tl4646447285%_ '0)))
                            (let ((_%tl4657546904%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7707677077%_ '1)))
                                  (_%target4657346901%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7707677077%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657546904%_)
                                  (_%__match7733477335%_
                                   _%e4645947268%_
                                   _%hd4646047272%_
                                   _%tl4646147275%_
                                   _%e4646247278%_
                                   _%hd4646347282%_
                                   _%tl4646447285%_
                                   _%e4646547288%_
                                   _%hd4646647292%_
                                   _%tl4646747295%_
                                   _%e4646847298%_
                                   _%hd4646947302%_
                                   _%tl4647047305%_
                                   _%e4647147308%_
                                   _%hd4647247312%_
                                   _%tl4647347315%_
                                   _%e4647447318%_
                                   _%hd4647547322%_
                                   _%tl4647647325%_
                                   _%e4647747328%_
                                   _%hd4647847332%_
                                   _%tl4647947335%_
                                   _%__splice7707677077%_
                                   _%target4657346901%_
                                   _%tl4657546904%_)
                                  (if (gx#stx-pair? _%hd4646647292%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4646647292%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))
                          (if (gx#stx-pair? _%hd4646647292%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4646647292%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                      (if (gx#stx-pair? _%hd4646647292%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4646647292%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (if (gx#stx-pair/null? _%tl4646447285%_)
                                  (let ((_%__splice7708077081%_
                                         (gx#syntax-split-splice
                                          _%tl4646447285%_
                                          '0)))
                                    (let ((_%tl4660046762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '1)))
                                          (_%target4659846759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660046762%_)
                                          (_%__match7736677367%_
                                           _%e4645947268%_
                                           _%hd4646047272%_
                                           _%tl4646147275%_
                                           _%e4646247278%_
                                           _%hd4646347282%_
                                           _%tl4646447285%_
                                           _%e4646547288%_
                                           _%hd4646647292%_
                                           _%tl4646747295%_
                                           _%e4659546749%_
                                           _%hd4659646753%_
                                           _%tl4659746756%_
                                           _%__splice7708077081%_
                                           _%target4659846759%_
                                           _%tl4660046762%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                  (if (gx#stx-pair? _%hd4646647292%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4646647292%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (if (gx#stx-pair/null? _%tl4646447285%_)
                              (let ((_%__splice7708077081%_
                                     (gx#syntax-split-splice
                                      _%tl4646447285%_
                                      '0)))
                                (let ((_%tl4660046762%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '1)))
                                      (_%target4659846759%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660046762%_)
                                      (_%__match7736677367%_
                                       _%e4645947268%_
                                       _%hd4646047272%_
                                       _%tl4646147275%_
                                       _%e4646247278%_
                                       _%hd4646347282%_
                                       _%tl4646447285%_
                                       _%e4646547288%_
                                       _%hd4646647292%_
                                       _%tl4646747295%_
                                       _%e4659546749%_
                                       _%hd4659646753%_
                                       _%tl4659746756%_
                                       _%__splice7708077081%_
                                       _%target4659846759%_
                                       _%tl4660046762%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
              (if (gx#stx-pair? _%hd4646647292%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4646647292%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4646447285%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4646447285%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4645947268%_
                                   _%hd4646047272%_
                                   _%tl4646147275%_
                                   _%e4646247278%_
                                   _%hd4646347282%_
                                   _%tl4646447285%_
                                   _%e4646547288%_
                                   _%hd4646647292%_
                                   _%tl4646747295%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646647292%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4646647292%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646447285%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646447285%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4645947268%_
                       _%hd4646047272%_
                       _%tl4646147275%_
                       _%e4646247278%_
                       _%hd4646347282%_
                       _%tl4646447285%_
                       _%e4646547288%_
                       _%hd4646647292%_
                       _%tl4646747295%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))))
                                  (if (gx#stx-null? _%tl4647347315%_)
                                      (if (gx#stx-pair/null? _%tl4646447285%_)
                                          (let ((_%__splice7706877069%_
                                                 (gx#syntax-split-splice
                                                  _%tl4646447285%_
                                                  '0)))
                                            (let ((_%tl4651347168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7706877069%_
                                                      '1)))
                                                  (_%target4651147165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7706877069%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4651347168%_)
                                                  (_%__match7723477235%_
                                                   _%e4645947268%_
                                                   _%hd4646047272%_
                                                   _%tl4646147275%_
                                                   _%e4646247278%_
                                                   _%hd4646347282%_
                                                   _%tl4646447285%_
                                                   _%e4646547288%_
                                                   _%hd4646647292%_
                                                   _%tl4646747295%_
                                                   _%e4646847298%_
                                                   _%hd4646947302%_
                                                   _%tl4647047305%_
                                                   _%e4647147308%_
                                                   _%hd4647247312%_
                                                   _%tl4647347315%_
                                                   _%__splice7706877069%_
                                                   _%target4651147165%_
                                                   _%tl4651347168%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4646647292%_)
                                                      (let ((_%e4659546749%_
                                                             (gx#syntax-e
                                                              _%hd4646647292%_)))
                                                        (let ((_%tl4659746756%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659546749%_)))
                      (_%hd4659646753%_
                       (let () (declare (not safe)) (##car _%e4659546749%_))))
                  (let () (declare (not safe)) (_%g4641946628%_))))
              (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646647292%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4646647292%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                      (if (gx#stx-pair? _%hd4646647292%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4646647292%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646447285%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646447285%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4645947268%_
                                                           _%hd4646047272%_
                                                           _%tl4646147275%_
                                                           _%e4646247278%_
                                                           _%hd4646347282%_
                                                           _%tl4646447285%_
                                                           _%e4646547288%_
                                                           _%hd4646647292%_
                                                           _%tl4646747295%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                              (if (gx#stx-null? _%tl4647347315%_)
                                  (if (gx#stx-pair/null? _%tl4646447285%_)
                                      (let ((_%__splice7706877069%_
                                             (gx#syntax-split-splice
                                              _%tl4646447285%_
                                              '0)))
                                        (let ((_%tl4651347168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7706877069%_
                                                  '1)))
                                              (_%target4651147165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7706877069%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4651347168%_)
                                              (_%__match7723477235%_
                                               _%e4645947268%_
                                               _%hd4646047272%_
                                               _%tl4646147275%_
                                               _%e4646247278%_
                                               _%hd4646347282%_
                                               _%tl4646447285%_
                                               _%e4646547288%_
                                               _%hd4646647292%_
                                               _%tl4646747295%_
                                               _%e4646847298%_
                                               _%hd4646947302%_
                                               _%tl4647047305%_
                                               _%e4647147308%_
                                               _%hd4647247312%_
                                               _%tl4647347315%_
                                               _%__splice7706877069%_
                                               _%target4651147165%_
                                               _%tl4651347168%_)
                                              (if (gx#stx-pair?
                                                   _%hd4646647292%_)
                                                  (let ((_%e4659546749%_
                                                         (gx#syntax-e
                                                          _%hd4646647292%_)))
                                                    (let ((_%tl4659746756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659546749%_)))
                                                          (_%hd4659646753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659546749%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4641946628%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))))
                                      (if (gx#stx-pair? _%hd4646647292%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4646647292%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                  (if (gx#identifier? _%hd4646947302%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82391_|
                                           _%hd4646947302%_)
                                          (if (gx#stx-pair? _%tl4647347315%_)
                                              (let ((_%e4656746881%_
                                                     (gx#syntax-e
                                                      _%tl4647347315%_)))
                                                (let ((_%tl4656946888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4656746881%_)))
                                                      (_%hd4656846885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4656746881%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4656946888%_)
                                                      (let ((_%e4657046891%_
                                                             (gx#syntax-e
                                                              _%tl4656946888%_)))
                                                        (let ((_%tl4657246898%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4657046891%_)))
                      (_%hd4657146895%_
                       (let () (declare (not safe)) (##car _%e4657046891%_))))
                  (if (gx#stx-null? _%tl4657246898%_)
                      (if (gx#stx-pair/null? _%tl4646447285%_)
                          (let ((_%__splice7707677077%_
                                 (gx#syntax-split-splice _%tl4646447285%_ '0)))
                            (let ((_%tl4657546904%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7707677077%_ '1)))
                                  (_%target4657346901%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7707677077%_
                                      '0))))
                              (if (gx#stx-null? _%tl4657546904%_)
                                  (_%__match7733477335%_
                                   _%e4645947268%_
                                   _%hd4646047272%_
                                   _%tl4646147275%_
                                   _%e4646247278%_
                                   _%hd4646347282%_
                                   _%tl4646447285%_
                                   _%e4646547288%_
                                   _%hd4646647292%_
                                   _%tl4646747295%_
                                   _%e4646847298%_
                                   _%hd4646947302%_
                                   _%tl4647047305%_
                                   _%e4647147308%_
                                   _%hd4647247312%_
                                   _%tl4647347315%_
                                   _%e4656746881%_
                                   _%hd4656846885%_
                                   _%tl4656946888%_
                                   _%e4657046891%_
                                   _%hd4657146895%_
                                   _%tl4657246898%_
                                   _%__splice7707677077%_
                                   _%target4657346901%_
                                   _%tl4657546904%_)
                                  (if (gx#stx-pair? _%hd4646647292%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4646647292%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))
                          (if (gx#stx-pair? _%hd4646647292%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4646647292%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                      (if (gx#stx-pair? _%hd4646647292%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4646647292%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (if (gx#stx-pair/null? _%tl4646447285%_)
                                  (let ((_%__splice7708077081%_
                                         (gx#syntax-split-splice
                                          _%tl4646447285%_
                                          '0)))
                                    (let ((_%tl4660046762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '1)))
                                          (_%target4659846759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660046762%_)
                                          (_%__match7736677367%_
                                           _%e4645947268%_
                                           _%hd4646047272%_
                                           _%tl4646147275%_
                                           _%e4646247278%_
                                           _%hd4646347282%_
                                           _%tl4646447285%_
                                           _%e4646547288%_
                                           _%hd4646647292%_
                                           _%tl4646747295%_
                                           _%e4659546749%_
                                           _%hd4659646753%_
                                           _%tl4659746756%_
                                           _%__splice7708077081%_
                                           _%target4659846759%_
                                           _%tl4660046762%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_))))))
              (if (gx#stx-pair? _%hd4646647292%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4646647292%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4646447285%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4646447285%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4645947268%_
                                   _%hd4646047272%_
                                   _%tl4646147275%_
                                   _%e4646247278%_
                                   _%hd4646347282%_
                                   _%tl4646447285%_
                                   _%e4646547288%_
                                   _%hd4646647292%_
                                   _%tl4646747295%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4646647292%_)
                                                  (let ((_%e4659546749%_
                                                         (gx#syntax-e
                                                          _%hd4646647292%_)))
                                                    (let ((_%tl4659746756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659546749%_)))
                                                          (_%hd4659646753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659546749%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4646447285%_)
                                                          (let ((_%__splice7708077081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4646447285%_ '0)))
                    (let ((_%tl4660046762%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '1)))
                          (_%target4659846759%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '0))))
                      (if (gx#stx-null? _%tl4660046762%_)
                          (_%__match7736677367%_
                           _%e4645947268%_
                           _%hd4646047272%_
                           _%tl4646147275%_
                           _%e4646247278%_
                           _%hd4646347282%_
                           _%tl4646447285%_
                           _%e4646547288%_
                           _%hd4646647292%_
                           _%tl4646747295%_
                           _%e4659546749%_
                           _%hd4659646753%_
                           _%tl4659746756%_
                           _%__splice7708077081%_
                           _%target4659846759%_
                           _%tl4660046762%_)
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))
                                          (if (gx#stx-pair? _%hd4646647292%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4646647292%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646447285%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646447285%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4645947268%_
                       _%hd4646047272%_
                       _%tl4646147275%_
                       _%e4646247278%_
                       _%hd4646347282%_
                       _%tl4646447285%_
                       _%e4646547288%_
                       _%hd4646647292%_
                       _%tl4646747295%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                      (if (gx#stx-pair? _%hd4646647292%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4646647292%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646447285%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646447285%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4645947268%_
                                                           _%hd4646047272%_
                                                           _%tl4646147275%_
                                                           _%e4646247278%_
                                                           _%hd4646347282%_
                                                           _%tl4646447285%_
                                                           _%e4646547288%_
                                                           _%hd4646647292%_
                                                           _%tl4646747295%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))))
                          (if (gx#stx-null? _%tl4647347315%_)
                              (if (gx#stx-pair/null? _%tl4646447285%_)
                                  (let ((_%__splice7706877069%_
                                         (gx#syntax-split-splice
                                          _%tl4646447285%_
                                          '0)))
                                    (let ((_%tl4651347168%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7706877069%_
                                              '1)))
                                          (_%target4651147165%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7706877069%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4651347168%_)
                                          (_%__match7723477235%_
                                           _%e4645947268%_
                                           _%hd4646047272%_
                                           _%tl4646147275%_
                                           _%e4646247278%_
                                           _%hd4646347282%_
                                           _%tl4646447285%_
                                           _%e4646547288%_
                                           _%hd4646647292%_
                                           _%tl4646747295%_
                                           _%e4646847298%_
                                           _%hd4646947302%_
                                           _%tl4647047305%_
                                           _%e4647147308%_
                                           _%hd4647247312%_
                                           _%tl4647347315%_
                                           _%__splice7706877069%_
                                           _%target4651147165%_
                                           _%tl4651347168%_)
                                          (if (gx#stx-pair? _%hd4646647292%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4646647292%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))))
                                  (if (gx#stx-pair? _%hd4646647292%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4646647292%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                              (if (gx#identifier? _%hd4646947302%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82391_|
                                       _%hd4646947302%_)
                                      (if (gx#stx-pair? _%tl4647347315%_)
                                          (let ((_%e4656746881%_
                                                 (gx#syntax-e
                                                  _%tl4647347315%_)))
                                            (let ((_%tl4656946888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4656746881%_)))
                                                  (_%hd4656846885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4656746881%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4656946888%_)
                                                  (let ((_%e4657046891%_
                                                         (gx#syntax-e
                                                          _%tl4656946888%_)))
                                                    (let ((_%tl4657246898%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4657046891%_)))
                                                          (_%hd4657146895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4657046891%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4657246898%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4646447285%_)
                                                              (let ((_%__splice7707677077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4646447285%_ '0)))
                        (let ((_%tl4657546904%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7707677077%_ '1)))
                              (_%target4657346901%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7707677077%_ '0))))
                          (if (gx#stx-null? _%tl4657546904%_)
                              (_%__match7733477335%_
                               _%e4645947268%_
                               _%hd4646047272%_
                               _%tl4646147275%_
                               _%e4646247278%_
                               _%hd4646347282%_
                               _%tl4646447285%_
                               _%e4646547288%_
                               _%hd4646647292%_
                               _%tl4646747295%_
                               _%e4646847298%_
                               _%hd4646947302%_
                               _%tl4647047305%_
                               _%e4647147308%_
                               _%hd4647247312%_
                               _%tl4647347315%_
                               _%e4656746881%_
                               _%hd4656846885%_
                               _%tl4656946888%_
                               _%e4657046891%_
                               _%hd4657146895%_
                               _%tl4657246898%_
                               _%__splice7707677077%_
                               _%target4657346901%_
                               _%tl4657546904%_)
                              (if (gx#stx-pair? _%hd4646647292%_)
                                  (let ((_%e4659546749%_
                                         (gx#syntax-e _%hd4646647292%_)))
                                    (let ((_%tl4659746756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659546749%_)))
                                          (_%hd4659646753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659546749%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))))
                      (if (gx#stx-pair? _%hd4646647292%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4646647292%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                  (if (gx#stx-pair? _%hd4646647292%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4646647292%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (if (gx#stx-pair/null? _%tl4646447285%_)
                              (let ((_%__splice7708077081%_
                                     (gx#syntax-split-splice
                                      _%tl4646447285%_
                                      '0)))
                                (let ((_%tl4660046762%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '1)))
                                      (_%target4659846759%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660046762%_)
                                      (_%__match7736677367%_
                                       _%e4645947268%_
                                       _%hd4646047272%_
                                       _%tl4646147275%_
                                       _%e4646247278%_
                                       _%hd4646347282%_
                                       _%tl4646447285%_
                                       _%e4646547288%_
                                       _%hd4646647292%_
                                       _%tl4646747295%_
                                       _%e4659546749%_
                                       _%hd4659646753%_
                                       _%tl4659746756%_
                                       _%__splice7708077081%_
                                       _%target4659846759%_
                                       _%tl4660046762%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4646647292%_)
                                                      (let ((_%e4659546749%_
                                                             (gx#syntax-e
                                                              _%hd4646647292%_)))
                                                        (let ((_%tl4659746756%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659546749%_)))
                      (_%hd4659646753%_
                       (let () (declare (not safe)) (##car _%e4659546749%_))))
                  (if (gx#stx-pair/null? _%tl4646447285%_)
                      (let ((_%__splice7708077081%_
                             (gx#syntax-split-splice _%tl4646447285%_ '0)))
                        (let ((_%tl4660046762%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '1)))
                              (_%target4659846759%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '0))))
                          (if (gx#stx-null? _%tl4660046762%_)
                              (_%__match7736677367%_
                               _%e4645947268%_
                               _%hd4646047272%_
                               _%tl4646147275%_
                               _%e4646247278%_
                               _%hd4646347282%_
                               _%tl4646447285%_
                               _%e4646547288%_
                               _%hd4646647292%_
                               _%tl4646747295%_
                               _%e4659546749%_
                               _%hd4659646753%_
                               _%tl4659746756%_
                               _%__splice7708077081%_
                               _%target4659846759%_
                               _%tl4660046762%_)
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4646647292%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4646647292%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4646447285%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4646447285%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4645947268%_
                       _%hd4646047272%_
                       _%tl4646147275%_
                       _%e4646247278%_
                       _%hd4646347282%_
                       _%tl4646447285%_
                       _%e4646547288%_
                       _%hd4646647292%_
                       _%tl4646747295%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                      (if (gx#stx-pair? _%hd4646647292%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4646647292%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4646447285%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4646447285%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4645947268%_
                                                           _%hd4646047272%_
                                                           _%tl4646147275%_
                                                           _%e4646247278%_
                                                           _%hd4646347282%_
                                                           _%tl4646447285%_
                                                           _%e4646547288%_
                                                           _%hd4646647292%_
                                                           _%tl4646747295%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                  (if (gx#stx-pair? _%hd4646647292%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4646647292%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4646447285%_)
                                              (let ((_%__splice7708077081%_
                                                     (gx#syntax-split-splice
                                                      _%tl4646447285%_
                                                      '0)))
                                                (let ((_%tl4660046762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '1)))
                                                      (_%target4659846759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660046762%_)
                                                      (_%__match7736677367%_
                                                       _%e4645947268%_
                                                       _%hd4646047272%_
                                                       _%tl4646147275%_
                                                       _%e4646247278%_
                                                       _%hd4646347282%_
                                                       _%tl4646447285%_
                                                       _%e4646547288%_
                                                       _%hd4646647292%_
                                                       _%tl4646747295%_
                                                       _%e4659546749%_
                                                       _%hd4659646753%_
                                                       _%tl4659746756%_
                                                       _%__splice7708077081%_
                                                       _%target4659846759%_
                                                       _%tl4660046762%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4641946628%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))))
                   (_%__match7713277133%_
                    (lambda (_%e4642647444%_
                             _%hd4642747448%_
                             _%tl4642847451%_
                             _%e4642947454%_
                             _%hd4643047458%_
                             _%tl4643147461%_
                             _%e4643247464%_
                             _%hd4643347468%_
                             _%tl4643447471%_
                             _%e4643547474%_
                             _%hd4643647478%_
                             _%tl4643747481%_
                             _%e4643847484%_
                             _%hd4643947488%_
                             _%tl4644047491%_
                             _%e4644147494%_
                             _%hd4644247498%_
                             _%tl4644347501%_
                             _%__splice7706077061%_
                             _%target4644447504%_
                             _%tl4644647507%_)
                      (letrec ((_%loop4644747510%_
                                (lambda (_%hd4644547514%_ _%body4645147517%_)
                                  (if (gx#stx-pair? _%hd4644547514%_)
                                      (let ((_%e4644847520%_
                                             (gx#syntax-e _%hd4644547514%_)))
                                        (let ((_%lp-tl4645047527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4644847520%_)))
                                              (_%lp-hd4644947524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4644847520%_))))
                                          (_%loop4644747510%_
                                           _%lp-tl4645047527%_
                                           (cons _%lp-hd4644947524%_
                                                 _%body4645147517%_))))
                                      (let ((_%body4645247530%_
                                             (reverse _%body4645147517%_)))
                                        (let ((_%L47534%_ _%body4645247530%_)
                                              (_%L47536%_ _%hd4644247498%_)
                                              (_%L47537%_ _%hd4643947488%_)
                                              (_%L47538%_ _%hd4643647478%_)
                                              (_%L47539%_ _%hd4643347468%_))
                                          (if (and (gx#identifier? _%L47539%_)
                                                   (gx#identifier? _%L47537%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47537%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47537%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47537%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47537%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47537%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7705877059%_
                                               _%L47534%_
                                               _%L47536%_
                                               _%L47537%_
                                               _%L47538%_
                                               _%L47539%_)
                                              (_%__match7716277163%_
                                               _%e4642647444%_
                                               _%hd4642747448%_
                                               _%tl4642847451%_
                                               _%e4642947454%_
                                               _%hd4643047458%_
                                               _%tl4643147461%_
                                               _%e4643247464%_
                                               _%hd4643347468%_
                                               _%tl4643447471%_
                                               _%e4643547474%_
                                               _%hd4643647478%_
                                               _%tl4643747481%_
                                               _%e4643847484%_
                                               _%hd4643947488%_
                                               _%tl4644047491%_))))))))
                        (_%loop4644747510%_ _%target4644447504%_ '())))))
              (if (gx#stx-pair? _%__stx7705577056%_)
                  (let ((_%e4642647444%_ (gx#syntax-e _%__stx7705577056%_)))
                    (let ((_%tl4642847451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4642647444%_)))
                          (_%hd4642747448%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4642647444%_))))
                      (if (gx#stx-pair? _%tl4642847451%_)
                          (let ((_%e4642947454%_
                                 (gx#syntax-e _%tl4642847451%_)))
                            (let ((_%tl4643147461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4642947454%_)))
                                  (_%hd4643047458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4642947454%_))))
                              (if (gx#stx-pair? _%hd4643047458%_)
                                  (let ((_%e4643247464%_
                                         (gx#syntax-e _%hd4643047458%_)))
                                    (let ((_%tl4643447471%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4643247464%_)))
                                          (_%hd4643347468%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4643247464%_))))
                                      (if (gx#stx-pair? _%tl4643447471%_)
                                          (let ((_%e4643547474%_
                                                 (gx#syntax-e
                                                  _%tl4643447471%_)))
                                            (let ((_%tl4643747481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4643547474%_)))
                                                  (_%hd4643647478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4643547474%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4643747481%_)
                                                  (let ((_%e4643847484%_
                                                         (gx#syntax-e
                                                          _%tl4643747481%_)))
                                                    (let ((_%tl4644047491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4643847484%_)))
                                                          (_%hd4643947488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4643847484%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4644047491%_)
                                                          (let ((_%e4644147494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4644047491%_)))
                    (let ((_%tl4644347501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4644147494%_)))
                          (_%hd4644247498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4644147494%_))))
                      (if (gx#stx-null? _%tl4644347501%_)
                          (if (gx#stx-pair/null? _%tl4643147461%_)
                              (let ((_%__splice7706077061%_
                                     (gx#syntax-split-splice
                                      _%tl4643147461%_
                                      '0)))
                                (let ((_%tl4644647507%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7706077061%_
                                          '1)))
                                      (_%target4644447504%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7706077061%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4644647507%_)
                                      (_%__match7713277133%_
                                       _%e4642647444%_
                                       _%hd4642747448%_
                                       _%tl4642847451%_
                                       _%e4642947454%_
                                       _%hd4643047458%_
                                       _%tl4643147461%_
                                       _%e4643247464%_
                                       _%hd4643347468%_
                                       _%tl4643447471%_
                                       _%e4643547474%_
                                       _%hd4643647478%_
                                       _%tl4643747481%_
                                       _%e4643847484%_
                                       _%hd4643947488%_
                                       _%tl4644047491%_
                                       _%e4644147494%_
                                       _%hd4644247498%_
                                       _%tl4644347501%_
                                       _%__splice7706077061%_
                                       _%target4644447504%_
                                       _%tl4644647507%_)
                                      (if (gx#stx-pair? _%hd4643347468%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4643347468%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))))
                              (if (gx#stx-pair? _%hd4643347468%_)
                                  (let ((_%e4659546749%_
                                         (gx#syntax-e _%hd4643347468%_)))
                                    (let ((_%tl4659746756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659546749%_)))
                                          (_%hd4659646753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659546749%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                          (if (gx#identifier? _%hd4643947488%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g82392_|
                                   _%hd4643947488%_)
                                  (if (gx#stx-pair? _%tl4644347501%_)
                                      (let ((_%e4647747328%_
                                             (gx#syntax-e _%tl4644347501%_)))
                                        (let ((_%tl4647947335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4647747328%_)))
                                              (_%hd4647847332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4647747328%_))))
                                          (if (gx#stx-pair? _%tl4647947335%_)
                                              (let ((_%e4648047338%_
                                                     (gx#syntax-e
                                                      _%tl4647947335%_)))
                                                (let ((_%tl4648247345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4648047338%_)))
                                                      (_%hd4648147342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4648047338%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4648247345%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643147461%_)
                                                          (let ((_%__splice7706477065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643147461%_ '0)))
                    (let ((_%tl4648547351%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7706477065%_ '1)))
                          (_%target4648347348%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7706477065%_ '0))))
                      (if (gx#stx-null? _%tl4648547351%_)
                          (_%__match7719477195%_
                           _%e4642647444%_
                           _%hd4642747448%_
                           _%tl4642847451%_
                           _%e4642947454%_
                           _%hd4643047458%_
                           _%tl4643147461%_
                           _%e4643247464%_
                           _%hd4643347468%_
                           _%tl4643447471%_
                           _%e4643547474%_
                           _%hd4643647478%_
                           _%tl4643747481%_
                           _%e4643847484%_
                           _%hd4643947488%_
                           _%tl4644047491%_
                           _%e4644147494%_
                           _%hd4644247498%_
                           _%tl4644347501%_
                           _%e4647747328%_
                           _%hd4647847332%_
                           _%tl4647947335%_
                           _%e4648047338%_
                           _%hd4648147342%_
                           _%tl4648247345%_
                           _%__splice7706477065%_
                           _%target4648347348%_
                           _%tl4648547351%_)
                          (if (gx#stx-pair? _%hd4643347468%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4643347468%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_))))))
                  (if (gx#stx-pair? _%hd4643347468%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
              (if (gx#stx-pair? _%hd4643347468%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4643147461%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4643147461%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4642647444%_
                                   _%hd4642747448%_
                                   _%tl4642847451%_
                                   _%e4642947454%_
                                   _%hd4643047458%_
                                   _%tl4643147461%_
                                   _%e4643247464%_
                                   _%hd4643347468%_
                                   _%tl4643447471%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4643647478%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g82391_|
                                                       _%hd4643647478%_)
                                                      (if (gx#stx-null?
                                                           _%tl4647947335%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4643147461%_)
                                                              (let ((_%__splice7707677077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4643147461%_ '0)))
                        (let ((_%tl4657546904%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7707677077%_ '1)))
                              (_%target4657346901%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7707677077%_ '0))))
                          (if (gx#stx-null? _%tl4657546904%_)
                              (_%__match7733477335%_
                               _%e4642647444%_
                               _%hd4642747448%_
                               _%tl4642847451%_
                               _%e4642947454%_
                               _%hd4643047458%_
                               _%tl4643147461%_
                               _%e4643247464%_
                               _%hd4643347468%_
                               _%tl4643447471%_
                               _%e4643547474%_
                               _%hd4643647478%_
                               _%tl4643747481%_
                               _%e4643847484%_
                               _%hd4643947488%_
                               _%tl4644047491%_
                               _%e4644147494%_
                               _%hd4644247498%_
                               _%tl4644347501%_
                               _%e4647747328%_
                               _%hd4647847332%_
                               _%tl4647947335%_
                               _%__splice7707677077%_
                               _%target4657346901%_
                               _%tl4657546904%_)
                              (if (gx#stx-pair? _%hd4643347468%_)
                                  (let ((_%e4659546749%_
                                         (gx#syntax-e _%hd4643347468%_)))
                                    (let ((_%tl4659746756%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4659546749%_)))
                                          (_%hd4659646753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4659546749%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))))
                      (if (gx#stx-pair? _%hd4643347468%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4643347468%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                  (if (gx#stx-pair? _%hd4643347468%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (if (gx#stx-pair/null? _%tl4643147461%_)
                              (let ((_%__splice7708077081%_
                                     (gx#syntax-split-splice
                                      _%tl4643147461%_
                                      '0)))
                                (let ((_%tl4660046762%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '1)))
                                      (_%target4659846759%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7708077081%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4660046762%_)
                                      (_%__match7736677367%_
                                       _%e4642647444%_
                                       _%hd4642747448%_
                                       _%tl4642847451%_
                                       _%e4642947454%_
                                       _%hd4643047458%_
                                       _%tl4643147461%_
                                       _%e4643247464%_
                                       _%hd4643347468%_
                                       _%tl4643447471%_
                                       _%e4659546749%_
                                       _%hd4659646753%_
                                       _%tl4659746756%_
                                       _%__splice7708077081%_
                                       _%target4659846759%_
                                       _%tl4660046762%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
              (if (gx#stx-pair? _%hd4643347468%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4643147461%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4643147461%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4642647444%_
                                   _%hd4642747448%_
                                   _%tl4642847451%_
                                   _%e4642947454%_
                                   _%hd4643047458%_
                                   _%tl4643147461%_
                                   _%e4643247464%_
                                   _%hd4643347468%_
                                   _%tl4643447471%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643347468%_)
                                                      (let ((_%e4659546749%_
                                                             (gx#syntax-e
                                                              _%hd4643347468%_)))
                                                        (let ((_%tl4659746756%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659546749%_)))
                      (_%hd4659646753%_
                       (let () (declare (not safe)) (##car _%e4659546749%_))))
                  (if (gx#stx-pair/null? _%tl4643147461%_)
                      (let ((_%__splice7708077081%_
                             (gx#syntax-split-splice _%tl4643147461%_ '0)))
                        (let ((_%tl4660046762%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '1)))
                              (_%target4659846759%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '0))))
                          (if (gx#stx-null? _%tl4660046762%_)
                              (_%__match7736677367%_
                               _%e4642647444%_
                               _%hd4642747448%_
                               _%tl4642847451%_
                               _%e4642947454%_
                               _%hd4643047458%_
                               _%tl4643147461%_
                               _%e4643247464%_
                               _%hd4643347468%_
                               _%tl4643447471%_
                               _%e4659546749%_
                               _%hd4659646753%_
                               _%tl4659746756%_
                               _%__splice7708077081%_
                               _%target4659846759%_
                               _%tl4660046762%_)
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4643347468%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4643347468%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643147461%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643147461%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4642647444%_
                                                           _%hd4642747448%_
                                                           _%tl4642847451%_
                                                           _%e4642947454%_
                                                           _%hd4643047458%_
                                                           _%tl4643147461%_
                                                           _%e4643247464%_
                                                           _%hd4643347468%_
                                                           _%tl4643447471%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                  (if (gx#identifier? _%hd4643647478%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82391_|
                                           _%hd4643647478%_)
                                          (if (gx#stx-pair? _%tl4644347501%_)
                                              (let ((_%e4657046891%_
                                                     (gx#syntax-e
                                                      _%tl4644347501%_)))
                                                (let ((_%tl4657246898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4657046891%_)))
                                                      (_%hd4657146895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4657046891%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4657246898%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643147461%_)
                                                          (let ((_%__splice7707677077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643147461%_ '0)))
                    (let ((_%tl4657546904%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7707677077%_ '1)))
                          (_%target4657346901%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7707677077%_ '0))))
                      (if (gx#stx-null? _%tl4657546904%_)
                          (_%__match7733477335%_
                           _%e4642647444%_
                           _%hd4642747448%_
                           _%tl4642847451%_
                           _%e4642947454%_
                           _%hd4643047458%_
                           _%tl4643147461%_
                           _%e4643247464%_
                           _%hd4643347468%_
                           _%tl4643447471%_
                           _%e4643547474%_
                           _%hd4643647478%_
                           _%tl4643747481%_
                           _%e4643847484%_
                           _%hd4643947488%_
                           _%tl4644047491%_
                           _%e4644147494%_
                           _%hd4644247498%_
                           _%tl4644347501%_
                           _%e4657046891%_
                           _%hd4657146895%_
                           _%tl4657246898%_
                           _%__splice7707677077%_
                           _%target4657346901%_
                           _%tl4657546904%_)
                          (if (gx#stx-pair? _%hd4643347468%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4643347468%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_))))))
                  (if (gx#stx-pair? _%hd4643347468%_)
                      (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                        (let ((_%tl4659746756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4659546749%_)))
                              (_%hd4659646753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4659546749%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
              (if (gx#stx-pair? _%hd4643347468%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (if (gx#stx-pair/null? _%tl4643147461%_)
                          (let ((_%__splice7708077081%_
                                 (gx#syntax-split-splice _%tl4643147461%_ '0)))
                            (let ((_%tl4660046762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7708077081%_ '1)))
                                  (_%target4659846759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7708077081%_
                                      '0))))
                              (if (gx#stx-null? _%tl4660046762%_)
                                  (_%__match7736677367%_
                                   _%e4642647444%_
                                   _%hd4642747448%_
                                   _%tl4642847451%_
                                   _%e4642947454%_
                                   _%hd4643047458%_
                                   _%tl4643147461%_
                                   _%e4643247464%_
                                   _%hd4643347468%_
                                   _%tl4643447471%_
                                   _%e4659546749%_
                                   _%hd4659646753%_
                                   _%tl4659746756%_
                                   _%__splice7708077081%_
                                   _%target4659846759%_
                                   _%tl4660046762%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4643347468%_)
                                                  (let ((_%e4659546749%_
                                                         (gx#syntax-e
                                                          _%hd4643347468%_)))
                                                    (let ((_%tl4659746756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4659546749%_)))
                                                          (_%hd4659646753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4659546749%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4643147461%_)
                                                          (let ((_%__splice7708077081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4643147461%_ '0)))
                    (let ((_%tl4660046762%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '1)))
                          (_%target4659846759%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7708077081%_ '0))))
                      (if (gx#stx-null? _%tl4660046762%_)
                          (_%__match7736677367%_
                           _%e4642647444%_
                           _%hd4642747448%_
                           _%tl4642847451%_
                           _%e4642947454%_
                           _%hd4643047458%_
                           _%tl4643147461%_
                           _%e4643247464%_
                           _%hd4643347468%_
                           _%tl4643447471%_
                           _%e4659546749%_
                           _%hd4659646753%_
                           _%tl4659746756%_
                           _%__splice7708077081%_
                           _%target4659846759%_
                           _%tl4660046762%_)
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_))))
                                          (if (gx#stx-pair? _%hd4643347468%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4643347468%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643147461%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643147461%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4642647444%_
                       _%hd4642747448%_
                       _%tl4642847451%_
                       _%e4642947454%_
                       _%hd4643047458%_
                       _%tl4643147461%_
                       _%e4643247464%_
                       _%hd4643347468%_
                       _%tl4643447471%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                      (if (gx#stx-pair? _%hd4643347468%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4643347468%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643147461%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643147461%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4642647444%_
                                                           _%hd4642747448%_
                                                           _%tl4642847451%_
                                                           _%e4642947454%_
                                                           _%hd4643047458%_
                                                           _%tl4643147461%_
                                                           _%e4643247464%_
                                                           _%hd4643347468%_
                                                           _%tl4643447471%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                              (if (gx#identifier? _%hd4643647478%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82391_|
                                       _%hd4643647478%_)
                                      (if (gx#stx-pair? _%tl4644347501%_)
                                          (let ((_%e4657046891%_
                                                 (gx#syntax-e
                                                  _%tl4644347501%_)))
                                            (let ((_%tl4657246898%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4657046891%_)))
                                                  (_%hd4657146895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4657046891%_))))
                                              (if (gx#stx-null?
                                                   _%tl4657246898%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643147461%_)
                                                      (let ((_%__splice7707677077%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643147461%_
                                                              '0)))
                                                        (let ((_%tl4657546904%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7707677077%_ '1)))
                      (_%target4657346901%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7707677077%_ '0))))
                  (if (gx#stx-null? _%tl4657546904%_)
                      (_%__match7733477335%_
                       _%e4642647444%_
                       _%hd4642747448%_
                       _%tl4642847451%_
                       _%e4642947454%_
                       _%hd4643047458%_
                       _%tl4643147461%_
                       _%e4643247464%_
                       _%hd4643347468%_
                       _%tl4643447471%_
                       _%e4643547474%_
                       _%hd4643647478%_
                       _%tl4643747481%_
                       _%e4643847484%_
                       _%hd4643947488%_
                       _%tl4644047491%_
                       _%e4644147494%_
                       _%hd4644247498%_
                       _%tl4644347501%_
                       _%e4657046891%_
                       _%hd4657146895%_
                       _%tl4657246898%_
                       _%__splice7707677077%_
                       _%target4657346901%_
                       _%tl4657546904%_)
                      (if (gx#stx-pair? _%hd4643347468%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4643347468%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                          (let () (declare (not safe)) (_%g4641946628%_))))))
              (if (gx#stx-pair? _%hd4643347468%_)
                  (let ((_%e4659546749%_ (gx#syntax-e _%hd4643347468%_)))
                    (let ((_%tl4659746756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4659546749%_)))
                          (_%hd4659646753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4659546749%_))))
                      (let () (declare (not safe)) (_%g4641946628%_))))
                  (let () (declare (not safe)) (_%g4641946628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643347468%_)
                                                      (let ((_%e4659546749%_
                                                             (gx#syntax-e
                                                              _%hd4643347468%_)))
                                                        (let ((_%tl4659746756%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659546749%_)))
                      (_%hd4659646753%_
                       (let () (declare (not safe)) (##car _%e4659546749%_))))
                  (if (gx#stx-pair/null? _%tl4643147461%_)
                      (let ((_%__splice7708077081%_
                             (gx#syntax-split-splice _%tl4643147461%_ '0)))
                        (let ((_%tl4660046762%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '1)))
                              (_%target4659846759%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '0))))
                          (if (gx#stx-null? _%tl4660046762%_)
                              (_%__match7736677367%_
                               _%e4642647444%_
                               _%hd4642747448%_
                               _%tl4642847451%_
                               _%e4642947454%_
                               _%hd4643047458%_
                               _%tl4643147461%_
                               _%e4643247464%_
                               _%hd4643347468%_
                               _%tl4643447471%_
                               _%e4659546749%_
                               _%hd4659646753%_
                               _%tl4659746756%_
                               _%__splice7708077081%_
                               _%target4659846759%_
                               _%tl4660046762%_)
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643347468%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4643347468%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643147461%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643147461%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4642647444%_
                       _%hd4642747448%_
                       _%tl4642847451%_
                       _%e4642947454%_
                       _%hd4643047458%_
                       _%tl4643147461%_
                       _%e4643247464%_
                       _%hd4643347468%_
                       _%tl4643447471%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))
                                      (if (gx#stx-pair? _%hd4643347468%_)
                                          (let ((_%e4659546749%_
                                                 (gx#syntax-e
                                                  _%hd4643347468%_)))
                                            (let ((_%tl4659746756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4659546749%_)))
                                                  (_%hd4659646753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4659546749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4643147461%_)
                                                  (let ((_%__splice7708077081%_
                                                         (gx#syntax-split-splice
                                                          _%tl4643147461%_
                                                          '0)))
                                                    (let ((_%tl4660046762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '1)))
                                                          (_%target4659846759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7708077081%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4660046762%_)
                                                          (_%__match7736677367%_
                                                           _%e4642647444%_
                                                           _%hd4642747448%_
                                                           _%tl4642847451%_
                                                           _%e4642947454%_
                                                           _%hd4643047458%_
                                                           _%tl4643147461%_
                                                           _%e4643247464%_
                                                           _%hd4643347468%_
                                                           _%tl4643447471%_
                                                           _%e4659546749%_
                                                           _%hd4659646753%_
                                                           _%tl4659746756%_
                                                           _%__splice7708077081%_
                                                           _%target4659846759%_
                                                           _%tl4660046762%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4641946628%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                  (if (gx#stx-pair? _%hd4643347468%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4643347468%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4643147461%_)
                                              (let ((_%__splice7708077081%_
                                                     (gx#syntax-split-splice
                                                      _%tl4643147461%_
                                                      '0)))
                                                (let ((_%tl4660046762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '1)))
                                                      (_%target4659846759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7708077081%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4660046762%_)
                                                      (_%__match7736677367%_
                                                       _%e4642647444%_
                                                       _%hd4642747448%_
                                                       _%tl4642847451%_
                                                       _%e4642947454%_
                                                       _%hd4643047458%_
                                                       _%tl4643147461%_
                                                       _%e4643247464%_
                                                       _%hd4643347468%_
                                                       _%tl4643447471%_
                                                       _%e4659546749%_
                                                       _%hd4659646753%_
                                                       _%tl4659746756%_
                                                       _%__splice7708077081%_
                                                       _%target4659846759%_
                                                       _%tl4660046762%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4641946628%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))))
                  (if (gx#stx-null? _%tl4644047491%_)
                      (if (gx#stx-pair/null? _%tl4643147461%_)
                          (let ((_%__splice7706877069%_
                                 (gx#syntax-split-splice _%tl4643147461%_ '0)))
                            (let ((_%tl4651347168%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7706877069%_ '1)))
                                  (_%target4651147165%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7706877069%_
                                      '0))))
                              (if (gx#stx-null? _%tl4651347168%_)
                                  (_%__match7723477235%_
                                   _%e4642647444%_
                                   _%hd4642747448%_
                                   _%tl4642847451%_
                                   _%e4642947454%_
                                   _%hd4643047458%_
                                   _%tl4643147461%_
                                   _%e4643247464%_
                                   _%hd4643347468%_
                                   _%tl4643447471%_
                                   _%e4643547474%_
                                   _%hd4643647478%_
                                   _%tl4643747481%_
                                   _%e4643847484%_
                                   _%hd4643947488%_
                                   _%tl4644047491%_
                                   _%__splice7706877069%_
                                   _%target4651147165%_
                                   _%tl4651347168%_)
                                  (if (gx#stx-pair? _%hd4643347468%_)
                                      (let ((_%e4659546749%_
                                             (gx#syntax-e _%hd4643347468%_)))
                                        (let ((_%tl4659746756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546749%_)))
                                              (_%hd4659646753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546749%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))
                          (if (gx#stx-pair? _%hd4643347468%_)
                              (let ((_%e4659546749%_
                                     (gx#syntax-e _%hd4643347468%_)))
                                (let ((_%tl4659746756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4659546749%_)))
                                      (_%hd4659646753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4659546749%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_))))
                              (let () (declare (not safe)) (_%g4641946628%_))))
                      (if (gx#stx-pair? _%hd4643347468%_)
                          (let ((_%e4659546749%_
                                 (gx#syntax-e _%hd4643347468%_)))
                            (let ((_%tl4659746756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4659546749%_)))
                                  (_%hd4659646753%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4659546749%_))))
                              (if (gx#stx-pair/null? _%tl4643147461%_)
                                  (let ((_%__splice7708077081%_
                                         (gx#syntax-split-splice
                                          _%tl4643147461%_
                                          '0)))
                                    (let ((_%tl4660046762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '1)))
                                          (_%target4659846759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7708077081%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4660046762%_)
                                          (_%__match7736677367%_
                                           _%e4642647444%_
                                           _%hd4642747448%_
                                           _%tl4642847451%_
                                           _%e4642947454%_
                                           _%hd4643047458%_
                                           _%tl4643147461%_
                                           _%e4643247464%_
                                           _%hd4643347468%_
                                           _%tl4643447471%_
                                           _%e4659546749%_
                                           _%hd4659646753%_
                                           _%tl4659746756%_
                                           _%__splice7708077081%_
                                           _%target4659846759%_
                                           _%tl4660046762%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4641946628%_)))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4643347468%_)
                                                      (let ((_%e4659546749%_
                                                             (gx#syntax-e
                                                              _%hd4643347468%_)))
                                                        (let ((_%tl4659746756%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4659546749%_)))
                      (_%hd4659646753%_
                       (let () (declare (not safe)) (##car _%e4659546749%_))))
                  (if (gx#stx-pair/null? _%tl4643147461%_)
                      (let ((_%__splice7708077081%_
                             (gx#syntax-split-splice _%tl4643147461%_ '0)))
                        (let ((_%tl4660046762%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '1)))
                              (_%target4659846759%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7708077081%_ '0))))
                          (if (gx#stx-null? _%tl4660046762%_)
                              (_%__match7736677367%_
                               _%e4642647444%_
                               _%hd4642747448%_
                               _%tl4642847451%_
                               _%e4642947454%_
                               _%hd4643047458%_
                               _%tl4643147461%_
                               _%e4643247464%_
                               _%hd4643347468%_
                               _%tl4643447471%_
                               _%e4659546749%_
                               _%hd4659646753%_
                               _%tl4659746756%_
                               _%__splice7708077081%_
                               _%target4659846759%_
                               _%tl4660046762%_)
                              (let ()
                                (declare (not safe))
                                (_%g4641946628%_)))))
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4643347468%_)
                                              (let ((_%e4659546749%_
                                                     (gx#syntax-e
                                                      _%hd4643347468%_)))
                                                (let ((_%tl4659746756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4659546749%_)))
                                                      (_%hd4659646753%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4659546749%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4643147461%_)
                                                      (let ((_%__splice7708077081%_
                                                             (gx#syntax-split-splice
                                                              _%tl4643147461%_
                                                              '0)))
                                                        (let ((_%tl4660046762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '1)))
                      (_%target4659846759%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7708077081%_ '0))))
                  (if (gx#stx-null? _%tl4660046762%_)
                      (_%__match7736677367%_
                       _%e4642647444%_
                       _%hd4642747448%_
                       _%tl4642847451%_
                       _%e4642947454%_
                       _%hd4643047458%_
                       _%tl4643147461%_
                       _%e4643247464%_
                       _%hd4643347468%_
                       _%tl4643447471%_
                       _%e4659546749%_
                       _%hd4659646753%_
                       _%tl4659746756%_
                       _%__splice7708077081%_
                       _%target4659846759%_
                       _%tl4660046762%_)
                      (let () (declare (not safe)) (_%g4641946628%_)))))
              (let () (declare (not safe)) (_%g4641946628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4641946628%_))))))
                                  (if (gx#stx-null? _%hd4643047458%_)
                                      (if (gx#stx-pair/null? _%tl4643147461%_)
                                          (let ((_%__splice7708477085%_
                                                 (gx#syntax-split-splice
                                                  _%tl4643147461%_
                                                  '0)))
                                            (let ((_%tl4661646658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7708477085%_
                                                      '1)))
                                                  (_%target4661446655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7708477085%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4661646658%_)
                                                  (_%__match7738877389%_
                                                   _%e4642647444%_
                                                   _%hd4642747448%_
                                                   _%tl4642847451%_
                                                   _%e4642947454%_
                                                   _%hd4643047458%_
                                                   _%tl4643147461%_
                                                   _%__splice7708477085%_
                                                   _%target4661446655%_
                                                   _%tl4661646658%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4641946628%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4641946628%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4641946628%_))))))
                          (let () (declare (not safe)) (_%g4641946628%_)))))
                  (let () (declare (not safe)) (_%g4641946628%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47602%_)
        (let* ((_%g4760647640%_
                (lambda (_%g4760747636%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4760747636%_)))
               (_%g4760547763%_
                (lambda (_%g4760747644%_)
                  (if (gx#stx-pair? _%g4760747644%_)
                      (let ((_%e4761147647%_ (gx#syntax-e _%g4760747644%_)))
                        (let ((_%hd4761247651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4761147647%_)))
                              (_%tl4761347654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4761147647%_))))
                          (if (gx#stx-pair? _%tl4761347654%_)
                              (let ((_%e4761447657%_
                                     (gx#syntax-e _%tl4761347654%_)))
                                (let ((_%hd4761547661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4761447657%_)))
                                      (_%tl4761647664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4761447657%_))))
                                  (if (gx#stx-pair? _%hd4761547661%_)
                                      (let ((_%e4761747667%_
                                             (gx#syntax-e _%hd4761547661%_)))
                                        (let ((_%hd4761847671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4761747667%_)))
                                              (_%tl4761947674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4761747667%_))))
                                          (if (gx#stx-pair? _%tl4761947674%_)
                                              (let ((_%e4762047677%_
                                                     (gx#syntax-e
                                                      _%tl4761947674%_)))
                                                (let ((_%hd4762147681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4762047677%_)))
                                                      (_%tl4762247684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4762047677%_))))
                                                  (if (gx#identifier?
                                                       _%hd4762147681%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82393_|
                                                           _%hd4762147681%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4762247684%_)
                                                              (let ((_%e4762347687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4762247684%_)))
                        (let ((_%hd4762447691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4762347687%_)))
                              (_%tl4762547694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4762347687%_))))
                          (if (gx#stx-null? _%tl4762547694%_)
                              (if (gx#stx-pair/null? _%tl4761647664%_)
                                  (let ((_g82394_
                                         (gx#syntax-split-splice
                                          _%tl4761647664%_
                                          '0)))
                                    (begin
                                      (let ((_g82395_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g82394_)
                                                   (##vector-length _g82394_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g82395_ 2)))
                                            (error "Context expects 2 values"
                                                   _g82395_)))
                                      (let ((_%target4762647697%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82394_ 0)))
                                            (_%tl4762847700%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g82394_ 1))))
                                        (if (gx#stx-null? _%tl4762847700%_)
                                            (letrec ((_%loop4762947703%_
                                                      (lambda (_%hd4762747707%_
                                                               _%body4763347710%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4762747707%_)
                                                            (let ((_%e4763047713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4762747707%_)))
                      (let ((_%lp-hd4763147717%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4763047713%_)))
                            (_%lp-tl4763247720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4763047713%_))))
                        (_%loop4762947703%_
                         _%lp-tl4763247720%_
                         (cons _%lp-hd4763147717%_ _%body4763347710%_))))
                    (let ((_%body4763447723%_ (reverse _%body4763347710%_)))
                      ((lambda (_%L47727%_ _%L47729%_ _%L47730%_)
                         (if (gx#identifier? _%L47730%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47729%_
                                               (cons _%L47730%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4775447757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4775547760%_)
                            (cons _%g4775447757%_ _%g4775547760%_))
                          '()
                          _%L47727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47729%_ (cons _%L47730%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4760647640%_ _%g4760747644%_)))
                       _%body4763447723%_
                       _%hd4762447691%_
                       _%hd4761847671%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4762947703%_
                                               _%target4762647697%_
                                               '()))
                                            (_%g4760647640%_
                                             _%g4760747644%_)))))
                                  (_%g4760647640%_ _%g4760747644%_))
                              (_%g4760647640%_ _%g4760747644%_))))
                      (_%g4760647640%_ _%g4760747644%_))
                  (_%g4760647640%_ _%g4760747644%_))
              (_%g4760647640%_ _%g4760747644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4760647640%_
                                               _%g4760747644%_))))
                                      (_%g4760647640%_ _%g4760747644%_))))
                              (_%g4760647640%_ _%g4760747644%_))))
                      (_%g4760647640%_ _%g4760747644%_)))))
          (_%g4760547763%_ _%$stx47602%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48330%_ _%slot48332%_)
        (let ((_%$e48334%_
               (let ((__obj82231 _%klass48330%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82231
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82231 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82231
                      'slot-types)))))
          (if _%$e48334%_
              ((lambda (_%slot-types48338%_)
                 (assgetq _%slot48332%_ _%slot-types48338%_))
               _%$e48334%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48311%_ _%slot48313%_)
        (let ((_%$e48315%_
               (let ((__obj82232 _%klass48311%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82232
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82232 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82232
                      'slot-defaults)))))
          (if _%$e48315%_
              ((lambda (_%slot-defaults48319%_)
                 (let ((_%$e48322%_
                        (assgetq _%slot48313%_ _%slot-defaults48319%_)))
                   (if _%$e48322%_
                       (gx#syntax-local-introduce _%$e48322%_)
                       '#f)))
               _%$e48315%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48292%_ _%slot48294%_)
        (let ((_%$e48296%_
               (let ((__obj82233 _%klass48292%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj82233
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj82233 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj82233
                      'slot-defaults)))))
          (if _%$e48296%_
              ((lambda (_%slot-defaults48300%_)
                 (let ((_%$e48303%_
                        (assgetq _%slot48294%_ _%slot-defaults48300%_)))
                   (if _%$e48303%_
                       (gx#syntax-local-introduce _%$e48303%_)
                       '#f)))
               _%$e48296%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48060%_ _%slot48062%_)
        (let ((_%contract4806348065%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48060%_
                _%slot48062%_)))
          (if _%contract4806348065%_
              (let* ((_%contract48069%_ _%contract4806348065%_)
                     (_%__stx7739177392%_ _%contract48069%_)
                     (_%g4807448111%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7739177392%_))))
                (let ((_%__kont7739477395%_
                       (lambda (_%L48261%_ _%L48263%_)
                         (not (gx#free-identifier=?
                               _%L48263%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7739677397%_
                       (lambda (_%L48201%_ _%L48203%_ _%L48204%_)
                         (not (gx#free-identifier=?
                               _%L48203%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7739877399%_ (lambda (_%L48138%_) '#f)))
                  (let* ((_%__match7744477445%_
                          (lambda (_%e4808748161%_
                                   _%hd4808848165%_
                                   _%tl4808948168%_
                                   _%e4809048171%_
                                   _%hd4809148175%_
                                   _%tl4809248178%_
                                   _%e4809348181%_
                                   _%hd4809448185%_
                                   _%tl4809548188%_
                                   _%e4809648191%_
                                   _%hd4809748195%_
                                   _%tl4809848198%_)
                            (let ((_%L48201%_ _%hd4809748195%_)
                                  (_%L48203%_ _%hd4809448185%_)
                                  (_%L48204%_ _%hd4809148175%_))
                              (if (and (gx#identifier? _%L48203%_)
                                       (or (gx#free-identifier=?
                                            _%L48203%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48203%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48203%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48203%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7739677397%_
                                   _%L48201%_
                                   _%L48203%_
                                   _%L48204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4807448111%_))))))
                         (_%__match7741477415%_
                          (lambda (_%e4807848241%_
                                   _%hd4807948245%_
                                   _%tl4808048248%_
                                   _%e4808148251%_
                                   _%hd4808248255%_
                                   _%tl4808348258%_)
                            (let ((_%L48261%_ _%hd4808248255%_)
                                  (_%L48263%_ _%hd4807948245%_))
                              (if (and (gx#identifier? _%L48263%_)
                                       (or (gx#free-identifier=?
                                            _%L48263%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48263%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48263%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48263%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7739477395%_ _%L48261%_ _%L48263%_)
                                  (if (gx#identifier? _%hd4807948245%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82396_|
                                           _%hd4807948245%_)
                                          (_%__kont7739877399%_
                                           _%hd4808248255%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4807448111%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4807448111%_))))))))
                    (if (gx#stx-pair? _%__stx7739177392%_)
                        (let ((_%e4807848241%_
                               (gx#syntax-e _%__stx7739177392%_)))
                          (let ((_%tl4808048248%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4807848241%_)))
                                (_%hd4807948245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4807848241%_))))
                            (if (gx#stx-pair? _%tl4808048248%_)
                                (let ((_%e4808148251%_
                                       (gx#syntax-e _%tl4808048248%_)))
                                  (let ((_%tl4808348258%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4808148251%_)))
                                        (_%hd4808248255%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4808148251%_))))
                                    (if (gx#stx-null? _%tl4808348258%_)
                                        (_%__match7741477415%_
                                         _%e4807848241%_
                                         _%hd4807948245%_
                                         _%tl4808048248%_
                                         _%e4808148251%_
                                         _%hd4808248255%_
                                         _%tl4808348258%_)
                                        (if (gx#identifier? _%hd4807948245%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82396_|
                                                 _%hd4807948245%_)
                                                (if (gx#stx-pair?
                                                     _%tl4808348258%_)
                                                    (let ((_%e4809348181%_
                                                           (gx#syntax-e
                                                            _%tl4808348258%_)))
                                                      (let ((_%tl4809548188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4809348181%_)))
                    (_%hd4809448185%_
                     (let () (declare (not safe)) (##car _%e4809348181%_))))
                (if (gx#stx-pair? _%tl4809548188%_)
                    (let ((_%e4809648191%_ (gx#syntax-e _%tl4809548188%_)))
                      (let ((_%tl4809848198%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4809648191%_)))
                            (_%hd4809748195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4809648191%_))))
                        (if (gx#stx-null? _%tl4809848198%_)
                            (_%__match7744477445%_
                             _%e4807848241%_
                             _%hd4807948245%_
                             _%tl4808048248%_
                             _%e4808148251%_
                             _%hd4808248255%_
                             _%tl4808348258%_
                             _%e4809348181%_
                             _%hd4809448185%_
                             _%tl4809548188%_
                             _%e4809648191%_
                             _%hd4809748195%_
                             _%tl4809848198%_)
                            (let () (declare (not safe)) (_%g4807448111%_)))))
                    (let () (declare (not safe)) (_%g4807448111%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4807448111%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4807448111%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4807448111%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4807448111%_)))))
                        (let () (declare (not safe)) (_%g4807448111%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47828%_ _%slot47830%_)
        (let ((_%contract4783147833%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47828%_
                _%slot47830%_)))
          (if _%contract4783147833%_
              (let* ((_%contract47837%_ _%contract4783147833%_)
                     (_%__stx7746577466%_ _%contract47837%_)
                     (_%g4784247879%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7746577466%_))))
                (let ((_%__kont7746877469%_
                       (lambda (_%L48029%_ _%L48031%_)
                         (not (gx#free-identifier=?
                               _%L48031%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7747077471%_
                       (lambda (_%L47969%_ _%L47971%_ _%L47972%_) '#t))
                      (_%__kont7747277473%_ (lambda (_%L47906%_) '#t)))
                  (let* ((_%__match7751877519%_
                          (lambda (_%e4785547929%_
                                   _%hd4785647933%_
                                   _%tl4785747936%_
                                   _%e4785847939%_
                                   _%hd4785947943%_
                                   _%tl4786047946%_
                                   _%e4786147949%_
                                   _%hd4786247953%_
                                   _%tl4786347956%_
                                   _%e4786447959%_
                                   _%hd4786547963%_
                                   _%tl4786647966%_)
                            (let ((_%L47969%_ _%hd4786547963%_)
                                  (_%L47971%_ _%hd4786247953%_)
                                  (_%L47972%_ _%hd4785947943%_))
                              (if (and (gx#identifier? _%L47971%_)
                                       (or (gx#free-identifier=?
                                            _%L47971%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47971%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47971%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47971%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7747077471%_
                                   _%L47969%_
                                   _%L47971%_
                                   _%L47972%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4784247879%_))))))
                         (_%__match7748877489%_
                          (lambda (_%e4784648009%_
                                   _%hd4784748013%_
                                   _%tl4784848016%_
                                   _%e4784948019%_
                                   _%hd4785048023%_
                                   _%tl4785148026%_)
                            (let ((_%L48029%_ _%hd4785048023%_)
                                  (_%L48031%_ _%hd4784748013%_))
                              (if (and (gx#identifier? _%L48031%_)
                                       (or (gx#free-identifier=?
                                            _%L48031%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48031%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48031%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48031%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7746877469%_ _%L48029%_ _%L48031%_)
                                  (if (gx#identifier? _%hd4784748013%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g82397_|
                                           _%hd4784748013%_)
                                          (_%__kont7747277473%_
                                           _%hd4785048023%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4784247879%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4784247879%_))))))))
                    (if (gx#stx-pair? _%__stx7746577466%_)
                        (let ((_%e4784648009%_
                               (gx#syntax-e _%__stx7746577466%_)))
                          (let ((_%tl4784848016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4784648009%_)))
                                (_%hd4784748013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4784648009%_))))
                            (if (gx#stx-pair? _%tl4784848016%_)
                                (let ((_%e4784948019%_
                                       (gx#syntax-e _%tl4784848016%_)))
                                  (let ((_%tl4785148026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4784948019%_)))
                                        (_%hd4785048023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4784948019%_))))
                                    (if (gx#stx-null? _%tl4785148026%_)
                                        (_%__match7748877489%_
                                         _%e4784648009%_
                                         _%hd4784748013%_
                                         _%tl4784848016%_
                                         _%e4784948019%_
                                         _%hd4785048023%_
                                         _%tl4785148026%_)
                                        (if (gx#identifier? _%hd4784748013%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g82397_|
                                                 _%hd4784748013%_)
                                                (if (gx#stx-pair?
                                                     _%tl4785148026%_)
                                                    (let ((_%e4786147949%_
                                                           (gx#syntax-e
                                                            _%tl4785148026%_)))
                                                      (let ((_%tl4786347956%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4786147949%_)))
                    (_%hd4786247953%_
                     (let () (declare (not safe)) (##car _%e4786147949%_))))
                (if (gx#stx-pair? _%tl4786347956%_)
                    (let ((_%e4786447959%_ (gx#syntax-e _%tl4786347956%_)))
                      (let ((_%tl4786647966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4786447959%_)))
                            (_%hd4786547963%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4786447959%_))))
                        (if (gx#stx-null? _%tl4786647966%_)
                            (_%__match7751877519%_
                             _%e4784648009%_
                             _%hd4784748013%_
                             _%tl4784848016%_
                             _%e4784948019%_
                             _%hd4785048023%_
                             _%tl4785148026%_
                             _%e4786147949%_
                             _%hd4786247953%_
                             _%tl4786347956%_
                             _%e4786447959%_
                             _%hd4786547963%_
                             _%tl4786647966%_)
                            (let () (declare (not safe)) (_%g4784247879%_)))))
                    (let () (declare (not safe)) (_%g4784247879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4784247879%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4784247879%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4784247879%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4784247879%_)))))
                        (let () (declare (not safe)) (_%g4784247879%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47814%_)
        (if (gx#identifier? _%id47814%_)
            (let* ((_%str47817%_ (symbol->string (gx#stx-e _%id47814%_)))
                   (_%index4781947821%_ (string-index _%str47817%_ '#\.)))
              (if _%index4781947821%_
                  (let ((_%index47825%_ _%index4781947821%_))
                    (if (let () (declare (not safe)) (##fx> _%index47825%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47817%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47807%_ _%id47809%_)
        (let ((_%parts47811%_
               (string-split (symbol->string (gx#stx-e _%id47809%_)) '#\.)))
          (if (find string-empty? _%parts47811%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47807%_
               _%id47809%_)
              (cons (gx#stx-identifier _%id47809%_ (car _%parts47811%_))
                    (map string->symbol (cdr _%parts47811%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47788%_ _%klass-or-id47790%_ _%slot47791%_)
        (let* ((_%klass47793%_
                (if (gx#identifier? _%klass-or-id47790%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47788%_
                       _%klass-or-id47790%_))
                    _%klass-or-id47790%_))
               (_%accessors47796%_
                (let ((__obj82234 _%klass47793%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj82234
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj82234 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj82234
                       'unchecked-accessors))))
               (_%$e47801%_ (assgetq _%slot47791%_ _%accessors47796%_)))
          (if _%$e47801%_
              _%$e47801%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47788%_
               _%klass47793%_
               _%slot47791%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47768%_
               _%klass-or-id47770%_
               _%slot47771%_
               _%checked?47772%_)
        (let* ((_%klass47774%_
                (if (gx#identifier? _%klass-or-id47770%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47768%_
                       _%klass-or-id47770%_))
                    _%klass-or-id47770%_))
               (_%mutators47777%_
                (if _%checked?47772%_
                    (let ((__obj82235 _%klass47774%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82235
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82235 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82235
                           'mutators)))
                    (let ((__obj82236 _%klass47774%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj82236
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj82236 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj82236
                           'unchecked-mutators)))))
               (_%$e47782%_ (assgetq _%slot47771%_ _%mutators47777%_)))
          (if _%$e47782%_
              _%$e47782%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47768%_
               _%klass47774%_
               _%slot47771%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48343%_)
        (letrec ((_%expand-body48346%_
                  (lambda (_%klass49254%_
                           _%var49256%_
                           _%Type49257%_
                           _%body49258%_
                           _%checked?49259%_)
                    (let* ((_%g4926149305%_
                            (lambda (_%g4926249301%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4926249301%_)))
                           (_%g4926049462%_
                            (lambda (_%g4926249309%_)
                              (if (gx#stx-pair? _%g4926249309%_)
                                  (let ((_%e4927049312%_
                                         (gx#syntax-e _%g4926249309%_)))
                                    (let ((_%hd4927149316%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4927049312%_)))
                                          (_%tl4927249319%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4927049312%_))))
                                      (if (gx#stx-pair? _%tl4927249319%_)
                                          (let ((_%e4927349322%_
                                                 (gx#syntax-e
                                                  _%tl4927249319%_)))
                                            (let ((_%hd4927449326%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4927349322%_)))
                                                  (_%tl4927549329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4927349322%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4927549329%_)
                                                  (let ((_%e4927649332%_
                                                         (gx#syntax-e
                                                          _%tl4927549329%_)))
                                                    (let ((_%hd4927749336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4927649332%_)))
                                                          (_%tl4927849339%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4927649332%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4927849339%_)
                                                          (let ((_%e4927949342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4927849339%_)))
                    (let ((_%hd4928049346%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4927949342%_)))
                          (_%tl4928149349%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4927949342%_))))
                      (if (gx#stx-pair? _%tl4928149349%_)
                          (let ((_%e4928249352%_
                                 (gx#syntax-e _%tl4928149349%_)))
                            (let ((_%hd4928349356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4928249352%_)))
                                  (_%tl4928449359%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4928249352%_))))
                              (if (gx#stx-pair? _%tl4928449359%_)
                                  (let ((_%e4928549362%_
                                         (gx#syntax-e _%tl4928449359%_)))
                                    (let ((_%hd4928649366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4928549362%_)))
                                          (_%tl4928749369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4928549362%_))))
                                      (if (gx#stx-pair? _%tl4928749369%_)
                                          (let ((_%e4928849372%_
                                                 (gx#syntax-e
                                                  _%tl4928749369%_)))
                                            (let ((_%hd4928949376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4928849372%_)))
                                                  (_%tl4929049379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4928849372%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4928949376%_)
                                                  (let ((_g82398_
                                                         (gx#syntax-split-splice
                                                          _%hd4928949376%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82399_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82398_)
                           (##vector-length _g82398_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82399_ 2)))
                    (error "Context expects 2 values" _g82399_)))
              (let ((_%target4929149382%_
                     (let () (declare (not safe)) (##vector-ref _g82398_ 0)))
                    (_%tl4929349385%_
                     (let () (declare (not safe)) (##vector-ref _g82398_ 1))))
                (if (gx#stx-null? _%tl4929349385%_)
                    (letrec ((_%loop4929449388%_
                              (lambda (_%hd4929249392%_ _%body4929849395%_)
                                (if (gx#stx-pair? _%hd4929249392%_)
                                    (let ((_%e4929549398%_
                                           (gx#syntax-e _%hd4929249392%_)))
                                      (let ((_%lp-hd4929649402%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4929549398%_)))
                                            (_%lp-tl4929749405%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4929549398%_))))
                                        (_%loop4929449388%_
                                         _%lp-tl4929749405%_
                                         (cons _%lp-hd4929649402%_
                                               _%body4929849395%_))))
                                    (let ((_%body4929949408%_
                                           (reverse _%body4929849395%_)))
                                      (if (gx#stx-null? _%tl4929049379%_)
                                          ((lambda (_%L49412%_
                                                    _%L49414%_
                                                    _%L49415%_
                                                    _%L49416%_
                                                    _%L49417%_
                                                    _%L49418%_
                                                    _%L49419%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49417%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49418%_ '()))
                                         (cons _%L49417%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49419%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49417%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49416%_ '()))
                               (cons _%L49415%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49414%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4945349456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4945449459%_)
                      (cons _%g4945349456%_ _%g4945449459%_))
                    '()
                    _%L49412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4929949408%_
                                           _%hd4928649366%_
                                           _%hd4928349356%_
                                           _%hd4928049346%_
                                           _%hd4927749336%_
                                           _%hd4927449326%_
                                           _%hd4927149316%_)
                                          (_%g4926149305%_
                                           _%g4926249309%_)))))))
                      (_%loop4929449388%_ _%target4929149382%_ '()))
                    (_%g4926149305%_ _%g4926249309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926149305%_
                                                   _%g4926249309%_))))
                                          (_%g4926149305%_ _%g4926249309%_))))
                                  (_%g4926149305%_ _%g4926249309%_))))
                          (_%g4926149305%_ _%g4926249309%_))))
                  (_%g4926149305%_ _%g4926249309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4926149305%_
                                                   _%g4926249309%_))))
                                          (_%g4926149305%_ _%g4926249309%_))))
                                  (_%g4926149305%_ _%g4926249309%_)))))
                      (_%g4926049462%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj82237 _%klass49254%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82237
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82237
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj82237
                                    'type-descriptor)))
                             _%var49256%_
                             _%klass49254%_
                             _%checked?49259%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49258%_)))))
                 (_%expand48348%_
                  (lambda (_%var49146%_
                           _%Type49148%_
                           _%body49149%_
                           _%checked?49150%_
                           _%checked-mutators?49151%_
                           _%maybe?49152%_)
                    (let* ((_%klass49154%_
                            (gx#syntax-local-value _%Type49148%_ false))
                           (_%expr-body49161%_
                            (_%expand-body48346%_
                             _%klass49154%_
                             _%var49146%_
                             _%Type49148%_
                             _%body49149%_
                             (let ((_%$e49157%_ _%checked?49150%_))
                               (if _%$e49157%_
                                   _%$e49157%_
                                   _%checked-mutators?49151%_)))))
                      (if _%checked?49150%_
                          (let* ((_%g4916649185%_
                                  (lambda (_%g4916749181%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4916749181%_)))
                                 (_%g4916549247%_
                                  (lambda (_%g4916749189%_)
                                    (if (gx#stx-pair? _%g4916749189%_)
                                        (let ((_%e4917149192%_
                                               (gx#syntax-e _%g4916749189%_)))
                                          (let ((_%hd4917249196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4917149192%_)))
                                                (_%tl4917349199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4917149192%_))))
                                            (if (gx#stx-pair? _%tl4917349199%_)
                                                (let ((_%e4917449202%_
                                                       (gx#syntax-e
                                                        _%tl4917349199%_)))
                                                  (let ((_%hd4917549206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4917449202%_)))
                                                        (_%tl4917649209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4917449202%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4917649209%_)
                                                        (let ((_%e4917749212%_
                                                               (gx#syntax-e
                                                                _%tl4917649209%_)))
                                                          (let ((_%hd4917849216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4917749212%_)))
                        (_%tl4917949219%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4917749212%_))))
                    (if (gx#stx-null? _%tl4917949219%_)
                        ((lambda (_%L49222%_ _%L49224%_ _%L49225%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49224%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49225%_ '())))
                                       (cons _%L49222%_ '()))))
                         _%hd4917849216%_
                         _%hd4917549206%_
                         _%hd4917249196%_)
                        (_%g4916649185%_ _%g4916749189%_))))
                (_%g4916649185%_ _%g4916749189%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4916649185%_
                                                 _%g4916749189%_))))
                                        (_%g4916649185%_ _%g4916749189%_)))))
                            (_%g4916549247%_
                             (list (let ((_%instance?49251%_
                                          (let ((__obj82238 _%klass49154%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj82238
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj82238
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj82238
                                                 'predicate)))))
                                     (if _%maybe?49152%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49251%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49251%_))
                                   _%var49146%_
                                   _%expr-body49161%_)))
                          _%expr-body49161%_)))))
          (let* ((_%__stx7753977540%_ _%stx48343%_)
                 (_%g4835448497%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7753977540%_))))
            (let ((_%__kont7754277543%_
                   (lambda (_%L49074%_ _%L49076%_ _%L49077%_ _%L49078%_)
                     (let* ((_%g4910349111%_
                             (lambda (_%g4910449107%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4910449107%_)))
                            (_%g4910249138%_
                             (lambda (_%g4910449115%_)
                               ((lambda (_%L49118%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49078%_
                                                    (cons _%L49077%_
                                                          (cons _%L49118%_
                                                                '())))
                                              (foldr (lambda (_%g4912949132%_
                                                              _%g4913049135%_)
                                                       (cons _%g4912949132%_
                                                             _%g4913049135%_))
                                                     '()
                                                     _%L49074%_))))
                                _%g4910449115%_))))
                       (_%g4910249138%_
                        (let ((__obj82239 (gx#syntax-local-value _%L49076%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj82239
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj82239
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj82239
                               'identifier)))))))
                  (_%__kont7754677547%_
                   (lambda (_%L48952%_ _%L48954%_ _%L48955%_)
                     (_%expand48348%_
                      _%L48955%_
                      _%L48954%_
                      (foldr (lambda (_%g4897848981%_ _%g4897948984%_)
                               (cons _%g4897848981%_ _%g4897948984%_))
                             '()
                             _%L48952%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7755077551%_
                   (lambda (_%L48830%_ _%L48832%_ _%L48833%_)
                     (_%expand48348%_
                      _%L48833%_
                      _%L48832%_
                      (foldr (lambda (_%g4885648859%_ _%g4885748862%_)
                               (cons _%g4885648859%_ _%g4885748862%_))
                             '()
                             _%L48830%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7755477555%_
                   (lambda (_%L48708%_ _%L48710%_ _%L48711%_)
                     (_%expand48348%_
                      _%L48711%_
                      _%L48710%_
                      (foldr (lambda (_%g4873448737%_ _%g4873548740%_)
                               (cons _%g4873448737%_ _%g4873548740%_))
                             '()
                             _%L48708%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7755877559%_
                   (lambda (_%L48584%_ _%L48586%_ _%L48587%_)
                     (_%expand48348%_
                      _%L48587%_
                      _%L48586%_
                      (foldr (lambda (_%g4861248615%_ _%g4861348618%_)
                               (cons _%g4861248615%_ _%g4861348618%_))
                             '()
                             _%L48584%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7777877779%_
                      (lambda (_%e4846848504%_
                               _%hd4846948508%_
                               _%tl4847048511%_
                               _%e4847148514%_
                               _%hd4847248518%_
                               _%tl4847348521%_
                               _%e4847448524%_
                               _%hd4847548528%_
                               _%tl4847648531%_
                               _%e4847748534%_
                               _%hd4847848538%_
                               _%tl4847948541%_
                               _%e4848048544%_
                               _%hd4848148548%_
                               _%tl4848248551%_
                               _%__splice7756077561%_
                               _%target4848348554%_
                               _%tl4848548557%_)
                        (letrec ((_%loop4848648560%_
                                  (lambda (_%hd4848448564%_ _%body4849048567%_)
                                    (if (gx#stx-pair? _%hd4848448564%_)
                                        (let ((_%e4848748570%_
                                               (gx#syntax-e _%hd4848448564%_)))
                                          (let ((_%lp-tl4848948577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4848748570%_)))
                                                (_%lp-hd4848848574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4848748570%_))))
                                            (_%loop4848648560%_
                                             _%lp-tl4848948577%_
                                             (cons _%lp-hd4848848574%_
                                                   _%body4849048567%_))))
                                        (let ((_%body4849148580%_
                                               (reverse _%body4849048567%_)))
                                          (let ((_%L48584%_ _%body4849148580%_)
                                                (_%L48586%_ _%hd4848148548%_)
                                                (_%L48587%_ _%hd4847548528%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48586%_))
                                                (_%__kont7755877559%_
                                                 _%L48584%_
                                                 _%L48586%_
                                                 _%L48587%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))))))))
                          (_%loop4848648560%_ _%target4848348554%_ '()))))
                     (_%__match7773477735%_
                      (lambda (_%e4844148628%_
                               _%hd4844248632%_
                               _%tl4844348635%_
                               _%e4844448638%_
                               _%hd4844548642%_
                               _%tl4844648645%_
                               _%e4844748648%_
                               _%hd4844848652%_
                               _%tl4844948655%_
                               _%e4845048658%_
                               _%hd4845148662%_
                               _%tl4845248665%_
                               _%e4845348668%_
                               _%hd4845448672%_
                               _%tl4845548675%_
                               _%__splice7755677557%_
                               _%target4845648678%_
                               _%tl4845848681%_)
                        (letrec ((_%loop4845948684%_
                                  (lambda (_%hd4845748688%_ _%body4846348691%_)
                                    (if (gx#stx-pair? _%hd4845748688%_)
                                        (let ((_%e4846048694%_
                                               (gx#syntax-e _%hd4845748688%_)))
                                          (let ((_%lp-tl4846248701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4846048694%_)))
                                                (_%lp-hd4846148698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4846048694%_))))
                                            (_%loop4845948684%_
                                             _%lp-tl4846248701%_
                                             (cons _%lp-hd4846148698%_
                                                   _%body4846348691%_))))
                                        (let ((_%body4846448704%_
                                               (reverse _%body4846348691%_)))
                                          (let ((_%L48708%_ _%body4846448704%_)
                                                (_%L48710%_ _%hd4845448672%_)
                                                (_%L48711%_ _%hd4844848652%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48710%_))
                                                (_%__kont7755477555%_
                                                 _%L48708%_
                                                 _%L48710%_
                                                 _%L48711%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))))))))
                          (_%loop4845948684%_ _%target4845648678%_ '()))))
                     (_%__match7769077691%_
                      (lambda (_%e4841448750%_
                               _%hd4841548754%_
                               _%tl4841648757%_
                               _%e4841748760%_
                               _%hd4841848764%_
                               _%tl4841948767%_
                               _%e4842048770%_
                               _%hd4842148774%_
                               _%tl4842248777%_
                               _%e4842348780%_
                               _%hd4842448784%_
                               _%tl4842548787%_
                               _%e4842648790%_
                               _%hd4842748794%_
                               _%tl4842848797%_
                               _%__splice7755277553%_
                               _%target4842948800%_
                               _%tl4843148803%_)
                        (letrec ((_%loop4843248806%_
                                  (lambda (_%hd4843048810%_ _%body4843648813%_)
                                    (if (gx#stx-pair? _%hd4843048810%_)
                                        (let ((_%e4843348816%_
                                               (gx#syntax-e _%hd4843048810%_)))
                                          (let ((_%lp-tl4843548823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4843348816%_)))
                                                (_%lp-hd4843448820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4843348816%_))))
                                            (_%loop4843248806%_
                                             _%lp-tl4843548823%_
                                             (cons _%lp-hd4843448820%_
                                                   _%body4843648813%_))))
                                        (let ((_%body4843748826%_
                                               (reverse _%body4843648813%_)))
                                          (let ((_%L48830%_ _%body4843748826%_)
                                                (_%L48832%_ _%hd4842748794%_)
                                                (_%L48833%_ _%hd4842148774%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48832%_))
                                                (_%__kont7755077551%_
                                                 _%L48830%_
                                                 _%L48832%_
                                                 _%L48833%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))))))))
                          (_%loop4843248806%_ _%target4842948800%_ '()))))
                     (_%__match7764677647%_
                      (lambda (_%e4838748872%_
                               _%hd4838848876%_
                               _%tl4838948879%_
                               _%e4839048882%_
                               _%hd4839148886%_
                               _%tl4839248889%_
                               _%e4839348892%_
                               _%hd4839448896%_
                               _%tl4839548899%_
                               _%e4839648902%_
                               _%hd4839748906%_
                               _%tl4839848909%_
                               _%e4839948912%_
                               _%hd4840048916%_
                               _%tl4840148919%_
                               _%__splice7754877549%_
                               _%target4840248922%_
                               _%tl4840448925%_)
                        (letrec ((_%loop4840548928%_
                                  (lambda (_%hd4840348932%_ _%body4840948935%_)
                                    (if (gx#stx-pair? _%hd4840348932%_)
                                        (let ((_%e4840648938%_
                                               (gx#syntax-e _%hd4840348932%_)))
                                          (let ((_%lp-tl4840848945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4840648938%_)))
                                                (_%lp-hd4840748942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4840648938%_))))
                                            (_%loop4840548928%_
                                             _%lp-tl4840848945%_
                                             (cons _%lp-hd4840748942%_
                                                   _%body4840948935%_))))
                                        (let ((_%body4841048948%_
                                               (reverse _%body4840948935%_)))
                                          (let ((_%L48952%_ _%body4841048948%_)
                                                (_%L48954%_ _%hd4840048916%_)
                                                (_%L48955%_ _%hd4839448896%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48954%_))
                                                (_%__kont7754677547%_
                                                 _%L48952%_
                                                 _%L48954%_
                                                 _%L48955%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))))))))
                          (_%loop4840548928%_ _%target4840248922%_ '()))))
                     (_%__match7762677627%_
                      (lambda (_%e4838748872%_
                               _%hd4838848876%_
                               _%tl4838948879%_
                               _%e4839048882%_
                               _%hd4839148886%_
                               _%tl4839248889%_
                               _%e4839348892%_
                               _%hd4839448896%_
                               _%tl4839548899%_
                               _%e4839648902%_
                               _%hd4839748906%_
                               _%tl4839848909%_)
                        (if (gx#identifier? _%hd4839748906%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82400_|
                                 _%hd4839748906%_)
                                (if (gx#stx-pair? _%tl4839848909%_)
                                    (let ((_%e4839948912%_
                                           (gx#syntax-e _%tl4839848909%_)))
                                      (let ((_%tl4840148919%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4839948912%_)))
                                            (_%hd4840048916%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4839948912%_))))
                                        (if (gx#stx-null? _%tl4840148919%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4839248889%_)
                                                (let ((_%__splice7754877549%_
                                                       (gx#syntax-split-splice
                                                        _%tl4839248889%_
                                                        '0)))
                                                  (let ((_%tl4840448925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7754877549%_
                                                            '1)))
                                                        (_%target4840248922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7754877549%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4840448925%_)
                                                        (_%__match7764677647%_
                                                         _%e4838748872%_
                                                         _%hd4838848876%_
                                                         _%tl4838948879%_
                                                         _%e4839048882%_
                                                         _%hd4839148886%_
                                                         _%tl4839248889%_
                                                         _%e4839348892%_
                                                         _%hd4839448896%_
                                                         _%tl4839548899%_
                                                         _%e4839648902%_
                                                         _%hd4839748906%_
                                                         _%tl4839848909%_
                                                         _%e4839948912%_
                                                         _%hd4840048916%_
                                                         _%tl4840148919%_
                                                         _%__splice7754877549%_
                                                         _%target4840248922%_
                                                         _%tl4840448925%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4835448497%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835448497%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835448497%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82401_|
                                     _%hd4839748906%_)
                                    (if (gx#stx-pair? _%tl4839848909%_)
                                        (let ((_%e4842648790%_
                                               (gx#syntax-e _%tl4839848909%_)))
                                          (let ((_%tl4842848797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4842648790%_)))
                                                (_%hd4842748794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4842648790%_))))
                                            (if (gx#stx-null? _%tl4842848797%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4839248889%_)
                                                    (let ((_%__splice7755277553%_
                                                           (gx#syntax-split-splice
                                                            _%tl4839248889%_
                                                            '0)))
                                                      (let ((_%tl4843148803%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7755277553%_ '1)))
                    (_%target4842948800%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7755277553%_ '0))))
                (if (gx#stx-null? _%tl4843148803%_)
                    (_%__match7769077691%_
                     _%e4838748872%_
                     _%hd4838848876%_
                     _%tl4838948879%_
                     _%e4839048882%_
                     _%hd4839148886%_
                     _%tl4839248889%_
                     _%e4839348892%_
                     _%hd4839448896%_
                     _%tl4839548899%_
                     _%e4839648902%_
                     _%hd4839748906%_
                     _%tl4839848909%_
                     _%e4842648790%_
                     _%hd4842748794%_
                     _%tl4842848797%_
                     _%__splice7755277553%_
                     _%target4842948800%_
                     _%tl4843148803%_)
                    (let () (declare (not safe)) (_%g4835448497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835448497%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4835448497%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82402_|
                                         _%hd4839748906%_)
                                        (if (gx#stx-pair? _%tl4839848909%_)
                                            (let ((_%e4845348668%_
                                                   (gx#syntax-e
                                                    _%tl4839848909%_)))
                                              (let ((_%tl4845548675%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4845348668%_)))
                                                    (_%hd4845448672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4845348668%_))))
                                                (if (gx#stx-null?
                                                     _%tl4845548675%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4839248889%_)
                                                        (let ((_%__splice7755677557%_
                                                               (gx#syntax-split-splice
                                                                _%tl4839248889%_
                                                                '0)))
                                                          (let ((_%tl4845848681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7755677557%_ '1)))
                        (_%target4845648678%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7755677557%_ '0))))
                    (if (gx#stx-null? _%tl4845848681%_)
                        (_%__match7773477735%_
                         _%e4838748872%_
                         _%hd4838848876%_
                         _%tl4838948879%_
                         _%e4839048882%_
                         _%hd4839148886%_
                         _%tl4839248889%_
                         _%e4839348892%_
                         _%hd4839448896%_
                         _%tl4839548899%_
                         _%e4839648902%_
                         _%hd4839748906%_
                         _%tl4839848909%_
                         _%e4845348668%_
                         _%hd4845448672%_
                         _%tl4845548675%_
                         _%__splice7755677557%_
                         _%target4845648678%_
                         _%tl4845848681%_)
                        (let () (declare (not safe)) (_%g4835448497%_)))))
                (let () (declare (not safe)) (_%g4835448497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835448497%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835448497%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82403_|
                                             _%hd4839748906%_)
                                            (if (gx#stx-pair? _%tl4839848909%_)
                                                (let ((_%e4848048544%_
                                                       (gx#syntax-e
                                                        _%tl4839848909%_)))
                                                  (let ((_%tl4848248551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4848048544%_)))
                                                        (_%hd4848148548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4848048544%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4848248551%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4839248889%_)
                                                            (let ((_%__splice7756077561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4839248889%_ '0)))
                      (let ((_%tl4848548557%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7756077561%_ '1)))
                            (_%target4848348554%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7756077561%_ '0))))
                        (if (gx#stx-null? _%tl4848548557%_)
                            (_%__match7777877779%_
                             _%e4838748872%_
                             _%hd4838848876%_
                             _%tl4838948879%_
                             _%e4839048882%_
                             _%hd4839148886%_
                             _%tl4839248889%_
                             _%e4839348892%_
                             _%hd4839448896%_
                             _%tl4839548899%_
                             _%e4839648902%_
                             _%hd4839748906%_
                             _%tl4839848909%_
                             _%e4848048544%_
                             _%hd4848148548%_
                             _%tl4848248551%_
                             _%__splice7756077561%_
                             _%target4848348554%_
                             _%tl4848548557%_)
                            (let () (declare (not safe)) (_%g4835448497%_)))))
                    (let () (declare (not safe)) (_%g4835448497%_)))
                (let () (declare (not safe)) (_%g4835448497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4835448497%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835448497%_))))))
                            (let () (declare (not safe)) (_%g4835448497%_)))))
                     (_%__match7760277603%_
                      (lambda (_%e4836048994%_
                               _%hd4836148998%_
                               _%tl4836249001%_
                               _%e4836349004%_
                               _%hd4836449008%_
                               _%tl4836549011%_
                               _%e4836649014%_
                               _%hd4836749018%_
                               _%tl4836849021%_
                               _%e4836949024%_
                               _%hd4837049028%_
                               _%tl4837149031%_
                               _%e4837249034%_
                               _%hd4837349038%_
                               _%tl4837449041%_
                               _%__splice7754477545%_
                               _%target4837549044%_
                               _%tl4837749047%_)
                        (letrec ((_%loop4837849050%_
                                  (lambda (_%hd4837649054%_ _%body4838249057%_)
                                    (if (gx#stx-pair? _%hd4837649054%_)
                                        (let ((_%e4837949060%_
                                               (gx#syntax-e _%hd4837649054%_)))
                                          (let ((_%lp-tl4838149067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4837949060%_)))
                                                (_%lp-hd4838049064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4837949060%_))))
                                            (_%loop4837849050%_
                                             _%lp-tl4838149067%_
                                             (cons _%lp-hd4838049064%_
                                                   _%body4838249057%_))))
                                        (let ((_%body4838349070%_
                                               (reverse _%body4838249057%_)))
                                          (let ((_%L49074%_ _%body4838349070%_)
                                                (_%L49076%_ _%hd4837349038%_)
                                                (_%L49077%_ _%hd4837049028%_)
                                                (_%L49078%_ _%hd4836749018%_))
                                            (if (let ((__tmp82404
                                                       (gx#syntax-local-value
                                                        _%L49076%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82404))
                                                (_%__kont7754277543%_
                                                 _%L49074%_
                                                 _%L49076%_
                                                 _%L49077%_
                                                 _%L49078%_)
                                                (_%__match7762677627%_
                                                 _%e4836048994%_
                                                 _%hd4836148998%_
                                                 _%tl4836249001%_
                                                 _%e4836349004%_
                                                 _%hd4836449008%_
                                                 _%tl4836549011%_
                                                 _%e4836649014%_
                                                 _%hd4836749018%_
                                                 _%tl4836849021%_
                                                 _%e4836949024%_
                                                 _%hd4837049028%_
                                                 _%tl4837149031%_))))))))
                          (_%loop4837849050%_ _%target4837549044%_ '())))))
                (if (gx#stx-pair? _%__stx7753977540%_)
                    (let ((_%e4836048994%_ (gx#syntax-e _%__stx7753977540%_)))
                      (let ((_%tl4836249001%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4836048994%_)))
                            (_%hd4836148998%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4836048994%_))))
                        (if (gx#stx-pair? _%tl4836249001%_)
                            (let ((_%e4836349004%_
                                   (gx#syntax-e _%tl4836249001%_)))
                              (let ((_%tl4836549011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4836349004%_)))
                                    (_%hd4836449008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4836349004%_))))
                                (if (gx#stx-pair? _%hd4836449008%_)
                                    (let ((_%e4836649014%_
                                           (gx#syntax-e _%hd4836449008%_)))
                                      (let ((_%tl4836849021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4836649014%_)))
                                            (_%hd4836749018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4836649014%_))))
                                        (if (gx#stx-pair? _%tl4836849021%_)
                                            (let ((_%e4836949024%_
                                                   (gx#syntax-e
                                                    _%tl4836849021%_)))
                                              (let ((_%tl4837149031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4836949024%_)))
                                                    (_%hd4837049028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4836949024%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4837149031%_)
                                                    (let ((_%e4837249034%_
                                                           (gx#syntax-e
                                                            _%tl4837149031%_)))
                                                      (let ((_%tl4837449041%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4837249034%_)))
                    (_%hd4837349038%_
                     (let () (declare (not safe)) (##car _%e4837249034%_))))
                (if (gx#stx-null? _%tl4837449041%_)
                    (if (gx#stx-pair/null? _%tl4836549011%_)
                        (let ((_%__splice7754477545%_
                               (gx#syntax-split-splice _%tl4836549011%_ '0)))
                          (let ((_%tl4837749047%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7754477545%_ '1)))
                                (_%target4837549044%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7754477545%_ '0))))
                            (if (gx#stx-null? _%tl4837749047%_)
                                (_%__match7760277603%_
                                 _%e4836048994%_
                                 _%hd4836148998%_
                                 _%tl4836249001%_
                                 _%e4836349004%_
                                 _%hd4836449008%_
                                 _%tl4836549011%_
                                 _%e4836649014%_
                                 _%hd4836749018%_
                                 _%tl4836849021%_
                                 _%e4836949024%_
                                 _%hd4837049028%_
                                 _%tl4837149031%_
                                 _%e4837249034%_
                                 _%hd4837349038%_
                                 _%tl4837449041%_
                                 _%__splice7754477545%_
                                 _%target4837549044%_
                                 _%tl4837749047%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4835448497%_)))))
                        (let () (declare (not safe)) (_%g4835448497%_)))
                    (let () (declare (not safe)) (_%g4835448497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4835448497%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4835448497%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4835448497%_)))))
                            (let () (declare (not safe)) (_%g4835448497%_)))))
                    (let () (declare (not safe)) (_%g4835448497%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49472%_)
        (letrec ((_%expand-body49475%_
                  (lambda (_%var50476%_
                           _%Interface50478%_
                           _%body50479%_
                           _%checked?50480%_)
                    (let* ((_%type50482%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49472%_
                               _%Interface50478%_)))
                           (_%g5048550529%_
                            (lambda (_%g5048650525%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5048650525%_)))
                           (_%g5048450687%_
                            (lambda (_%g5048650533%_)
                              (if (gx#stx-pair? _%g5048650533%_)
                                  (let ((_%e5049450536%_
                                         (gx#syntax-e _%g5048650533%_)))
                                    (let ((_%hd5049550540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5049450536%_)))
                                          (_%tl5049650543%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5049450536%_))))
                                      (if (gx#stx-pair? _%tl5049650543%_)
                                          (let ((_%e5049750546%_
                                                 (gx#syntax-e
                                                  _%tl5049650543%_)))
                                            (let ((_%hd5049850550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5049750546%_)))
                                                  (_%tl5049950553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5049750546%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5049950553%_)
                                                  (let ((_%e5050050556%_
                                                         (gx#syntax-e
                                                          _%tl5049950553%_)))
                                                    (let ((_%hd5050150560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5050050556%_)))
                                                          (_%tl5050250563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5050050556%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5050250563%_)
                                                          (let ((_%e5050350566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5050250563%_)))
                    (let ((_%hd5050450570%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5050350566%_)))
                          (_%tl5050550573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5050350566%_))))
                      (if (gx#stx-pair? _%tl5050550573%_)
                          (let ((_%e5050650576%_
                                 (gx#syntax-e _%tl5050550573%_)))
                            (let ((_%hd5050750580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5050650576%_)))
                                  (_%tl5050850583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5050650576%_))))
                              (if (gx#stx-pair? _%tl5050850583%_)
                                  (let ((_%e5050950586%_
                                         (gx#syntax-e _%tl5050850583%_)))
                                    (let ((_%hd5051050590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5050950586%_)))
                                          (_%tl5051150593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5050950586%_))))
                                      (if (gx#stx-pair? _%tl5051150593%_)
                                          (let ((_%e5051250596%_
                                                 (gx#syntax-e
                                                  _%tl5051150593%_)))
                                            (let ((_%hd5051350600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5051250596%_)))
                                                  (_%tl5051450603%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5051250596%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5051350600%_)
                                                  (let ((_g82405_
                                                         (gx#syntax-split-splice
                                                          _%hd5051350600%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g82406_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g82405_)
                           (##vector-length _g82405_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g82406_ 2)))
                    (error "Context expects 2 values" _g82406_)))
              (let ((_%target5051550606%_
                     (let () (declare (not safe)) (##vector-ref _g82405_ 0)))
                    (_%tl5051750609%_
                     (let () (declare (not safe)) (##vector-ref _g82405_ 1))))
                (if (gx#stx-null? _%tl5051750609%_)
                    (letrec ((_%loop5051850612%_
                              (lambda (_%hd5051650616%_ _%body5052250619%_)
                                (if (gx#stx-pair? _%hd5051650616%_)
                                    (let ((_%e5051950622%_
                                           (gx#syntax-e _%hd5051650616%_)))
                                      (let ((_%lp-hd5052050626%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5051950622%_)))
                                            (_%lp-tl5052150629%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5051950622%_))))
                                        (_%loop5051850612%_
                                         _%lp-tl5052150629%_
                                         (cons _%lp-hd5052050626%_
                                               _%body5052250619%_))))
                                    (let ((_%body5052350632%_
                                           (reverse _%body5052250619%_)))
                                      (if (gx#stx-null? _%tl5051450603%_)
                                          ((lambda (_%L50636%_
                                                    _%L50638%_
                                                    _%L50639%_
                                                    _%L50640%_
                                                    _%L50641%_
                                                    _%L50642%_
                                                    _%L50643%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50640%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50641%_ '()))
                                         (cons _%L50640%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50643%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50640%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50642%_ '()))
                               (cons _%L50639%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50638%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5067850681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5067950684%_)
                      (cons _%g5067850681%_ _%g5067950684%_))
                    '()
                    _%L50636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5052350632%_
                                           _%hd5051050590%_
                                           _%hd5050750580%_
                                           _%hd5050450570%_
                                           _%hd5050150560%_
                                           _%hd5049850550%_
                                           _%hd5049550540%_)
                                          (_%g5048550529%_
                                           _%g5048650533%_)))))))
                      (_%loop5051850612%_ _%target5051550606%_ '()))
                    (_%g5048550529%_ _%g5048650533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5048550529%_
                                                   _%g5048650533%_))))
                                          (_%g5048550529%_ _%g5048650533%_))))
                                  (_%g5048550529%_ _%g5048650533%_))))
                          (_%g5048550529%_ _%g5048650533%_))))
                  (_%g5048550529%_ _%g5048650533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5048550529%_
                                                   _%g5048650533%_))))
                                          (_%g5048550529%_ _%g5048650533%_))))
                                  (_%g5048550529%_ _%g5048650533%_)))))
                      (_%g5048450687%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50482%_
                             (let ((__obj82240 _%type50482%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj82240
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj82240
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj82240
                                    'instance-type)))
                             _%var50476%_
                             _%checked?50480%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50479%_)))))
                 (_%expand49477%_
                  (lambda (_%var50275%_
                           _%Interface50277%_
                           _%body50278%_
                           _%checked?50279%_
                           _%checked-methods?50280%_
                           _%maybe?50281%_)
                    (let* ((_%g5028350291%_
                            (lambda (_%g5028450287%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5028450287%_)))
                           (_%g5028250468%_
                            (lambda (_%g5028450295%_)
                              ((lambda (_%L50298%_)
                                 (if _%checked?50279%_
                                     (if _%maybe?50281%_
                                         (let* ((_%g5031050325%_
                                                 (lambda (_%g5031150321%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5031150321%_)))
                                                (_%g5030950371%_
                                                 (lambda (_%g5031150329%_)
                                                   (if (gx#stx-pair?
                                                        _%g5031150329%_)
                                                       (let ((_%e5031450332%_
                                                              (gx#syntax-e
                                                               _%g5031150329%_)))
                                                         (let ((_%hd5031550336%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5031450332%_)))
                       (_%tl5031650339%_
                        (let () (declare (not safe)) (##cdr _%e5031450332%_))))
                   (if (gx#stx-pair? _%tl5031650339%_)
                       (let ((_%e5031750342%_ (gx#syntax-e _%tl5031650339%_)))
                         (let ((_%hd5031850346%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5031750342%_)))
                               (_%tl5031950349%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5031750342%_))))
                           (if (gx#stx-null? _%tl5031950349%_)
                               ((lambda (_%L50352%_ _%L50354%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50354%_
                                                    (cons (cons _%L50352%_
                                                                (cons _%L50354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50354%_
                                                                (cons _%L50298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50354%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5031850346%_
                                _%hd5031550336%_)
                               (_%g5031050325%_ _%g5031150329%_))))
                       (_%g5031050325%_ _%g5031150329%_))))
               (_%g5031050325%_ _%g5031150329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5030950371%_
                                            (list _%var50275%_
                                                  _%Interface50277%_)))
                                         (let* ((_%g5037550390%_
                                                 (lambda (_%g5037650386%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5037650386%_)))
                                                (_%g5037450434%_
                                                 (lambda (_%g5037650394%_)
                                                   (if (gx#stx-pair?
                                                        _%g5037650394%_)
                                                       (let ((_%e5037950397%_
                                                              (gx#syntax-e
                                                               _%g5037650394%_)))
                                                         (let ((_%hd5038050401%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5037950397%_)))
                       (_%tl5038150404%_
                        (let () (declare (not safe)) (##cdr _%e5037950397%_))))
                   (if (gx#stx-pair? _%tl5038150404%_)
                       (let ((_%e5038250407%_ (gx#syntax-e _%tl5038150404%_)))
                         (let ((_%hd5038350411%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5038250407%_)))
                               (_%tl5038450414%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5038250407%_))))
                           (if (gx#stx-null? _%tl5038450414%_)
                               ((lambda (_%L50417%_ _%L50419%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50419%_
                                                    (cons (cons _%L50417%_
                                                                (cons _%L50419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50298%_ '()))))
                                _%hd5038350411%_
                                _%hd5038050401%_)
                               (_%g5037550390%_ _%g5037650394%_))))
                       (_%g5037550390%_ _%g5037650394%_))))
               (_%g5037550390%_ _%g5037650394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5037450434%_
                                            (list _%var50275%_
                                                  _%Interface50277%_))))
                                     (if _%maybe?50281%_
                                         (let* ((_%g5043850446%_
                                                 (lambda (_%g5043950442%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5043950442%_)))
                                                (_%g5043750464%_
                                                 (lambda (_%g5043950450%_)
                                                   ((lambda (_%L50453%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50298%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50453%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5043950450%_))))
                                           (_%g5043750464%_ _%var50275%_))
                                         _%L50298%_)))
                               _%g5028450295%_))))
                      (_%g5028250468%_
                       (_%expand-body49475%_
                        _%var50275%_
                        _%Interface50277%_
                        _%body50278%_
                        (let ((_%$e50472%_ _%checked?50279%_))
                          (if _%$e50472%_
                              _%$e50472%_
                              _%checked-methods?50280%_))))))))
          (let* ((_%__stx7778177782%_ _%stx49472%_)
                 (_%g4948349626%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7778177782%_))))
            (let ((_%__kont7778477785%_
                   (lambda (_%L50203%_ _%L50205%_ _%L50206%_ _%L50207%_)
                     (let* ((_%g5023250240%_
                             (lambda (_%g5023350236%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5023350236%_)))
                            (_%g5023150267%_
                             (lambda (_%g5023350244%_)
                               ((lambda (_%L50247%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50207%_
                                                    (cons _%L50206%_
                                                          (cons _%L50247%_
                                                                '())))
                                              (foldr (lambda (_%g5025850261%_
                                                              _%g5025950264%_)
                                                       (cons _%g5025850261%_
                                                             _%g5025950264%_))
                                                     '()
                                                     _%L50203%_))))
                                _%g5023350244%_))))
                       (_%g5023150267%_
                        (let ((__obj82241 (gx#syntax-local-value _%L50205%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj82241
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj82241
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj82241
                               'identifier)))))))
                  (_%__kont7778877789%_
                   (lambda (_%L50081%_ _%L50083%_ _%L50084%_)
                     (_%expand49477%_
                      _%L50084%_
                      _%L50083%_
                      (foldr (lambda (_%g5010750110%_ _%g5010850113%_)
                               (cons _%g5010750110%_ _%g5010850113%_))
                             '()
                             _%L50081%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7779277793%_
                   (lambda (_%L49959%_ _%L49961%_ _%L49962%_)
                     (_%expand49477%_
                      _%L49962%_
                      _%L49961%_
                      (foldr (lambda (_%g4998549988%_ _%g4998649991%_)
                               (cons _%g4998549988%_ _%g4998649991%_))
                             '()
                             _%L49959%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7779677797%_
                   (lambda (_%L49837%_ _%L49839%_ _%L49840%_)
                     (_%expand49477%_
                      _%L49840%_
                      _%L49839%_
                      (foldr (lambda (_%g4986349866%_ _%g4986449869%_)
                               (cons _%g4986349866%_ _%g4986449869%_))
                             '()
                             _%L49837%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7780077801%_
                   (lambda (_%L49713%_ _%L49715%_ _%L49716%_)
                     (_%expand49477%_
                      _%L49716%_
                      _%L49715%_
                      (foldr (lambda (_%g4974149744%_ _%g4974249747%_)
                               (cons _%g4974149744%_ _%g4974249747%_))
                             '()
                             _%L49713%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7802078021%_
                      (lambda (_%e4959749633%_
                               _%hd4959849637%_
                               _%tl4959949640%_
                               _%e4960049643%_
                               _%hd4960149647%_
                               _%tl4960249650%_
                               _%e4960349653%_
                               _%hd4960449657%_
                               _%tl4960549660%_
                               _%e4960649663%_
                               _%hd4960749667%_
                               _%tl4960849670%_
                               _%e4960949673%_
                               _%hd4961049677%_
                               _%tl4961149680%_
                               _%__splice7780277803%_
                               _%target4961249683%_
                               _%tl4961449686%_)
                        (letrec ((_%loop4961549689%_
                                  (lambda (_%hd4961349693%_ _%body4961949696%_)
                                    (if (gx#stx-pair? _%hd4961349693%_)
                                        (let ((_%e4961649699%_
                                               (gx#syntax-e _%hd4961349693%_)))
                                          (let ((_%lp-tl4961849706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4961649699%_)))
                                                (_%lp-hd4961749703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4961649699%_))))
                                            (_%loop4961549689%_
                                             _%lp-tl4961849706%_
                                             (cons _%lp-hd4961749703%_
                                                   _%body4961949696%_))))
                                        (let ((_%body4962049709%_
                                               (reverse _%body4961949696%_)))
                                          (let ((_%L49713%_ _%body4962049709%_)
                                                (_%L49715%_ _%hd4961049677%_)
                                                (_%L49716%_ _%hd4960449657%_))
                                            (if (and (gx#identifier?
                                                      _%L49716%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49715%_)))
                                                (_%__kont7780077801%_
                                                 _%L49713%_
                                                 _%L49715%_
                                                 _%L49716%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))))))))
                          (_%loop4961549689%_ _%target4961249683%_ '()))))
                     (_%__match7797677977%_
                      (lambda (_%e4957049757%_
                               _%hd4957149761%_
                               _%tl4957249764%_
                               _%e4957349767%_
                               _%hd4957449771%_
                               _%tl4957549774%_
                               _%e4957649777%_
                               _%hd4957749781%_
                               _%tl4957849784%_
                               _%e4957949787%_
                               _%hd4958049791%_
                               _%tl4958149794%_
                               _%e4958249797%_
                               _%hd4958349801%_
                               _%tl4958449804%_
                               _%__splice7779877799%_
                               _%target4958549807%_
                               _%tl4958749810%_)
                        (letrec ((_%loop4958849813%_
                                  (lambda (_%hd4958649817%_ _%body4959249820%_)
                                    (if (gx#stx-pair? _%hd4958649817%_)
                                        (let ((_%e4958949823%_
                                               (gx#syntax-e _%hd4958649817%_)))
                                          (let ((_%lp-tl4959149830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4958949823%_)))
                                                (_%lp-hd4959049827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4958949823%_))))
                                            (_%loop4958849813%_
                                             _%lp-tl4959149830%_
                                             (cons _%lp-hd4959049827%_
                                                   _%body4959249820%_))))
                                        (let ((_%body4959349833%_
                                               (reverse _%body4959249820%_)))
                                          (let ((_%L49837%_ _%body4959349833%_)
                                                (_%L49839%_ _%hd4958349801%_)
                                                (_%L49840%_ _%hd4957749781%_))
                                            (if (and (gx#identifier?
                                                      _%L49840%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49839%_)))
                                                (_%__kont7779677797%_
                                                 _%L49837%_
                                                 _%L49839%_
                                                 _%L49840%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))))))))
                          (_%loop4958849813%_ _%target4958549807%_ '()))))
                     (_%__match7793277933%_
                      (lambda (_%e4954349879%_
                               _%hd4954449883%_
                               _%tl4954549886%_
                               _%e4954649889%_
                               _%hd4954749893%_
                               _%tl4954849896%_
                               _%e4954949899%_
                               _%hd4955049903%_
                               _%tl4955149906%_
                               _%e4955249909%_
                               _%hd4955349913%_
                               _%tl4955449916%_
                               _%e4955549919%_
                               _%hd4955649923%_
                               _%tl4955749926%_
                               _%__splice7779477795%_
                               _%target4955849929%_
                               _%tl4956049932%_)
                        (letrec ((_%loop4956149935%_
                                  (lambda (_%hd4955949939%_ _%body4956549942%_)
                                    (if (gx#stx-pair? _%hd4955949939%_)
                                        (let ((_%e4956249945%_
                                               (gx#syntax-e _%hd4955949939%_)))
                                          (let ((_%lp-tl4956449952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4956249945%_)))
                                                (_%lp-hd4956349949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4956249945%_))))
                                            (_%loop4956149935%_
                                             _%lp-tl4956449952%_
                                             (cons _%lp-hd4956349949%_
                                                   _%body4956549942%_))))
                                        (let ((_%body4956649955%_
                                               (reverse _%body4956549942%_)))
                                          (let ((_%L49959%_ _%body4956649955%_)
                                                (_%L49961%_ _%hd4955649923%_)
                                                (_%L49962%_ _%hd4955049903%_))
                                            (if (and (gx#identifier?
                                                      _%L49962%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49961%_)))
                                                (_%__kont7779277793%_
                                                 _%L49959%_
                                                 _%L49961%_
                                                 _%L49962%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))))))))
                          (_%loop4956149935%_ _%target4955849929%_ '()))))
                     (_%__match7788877889%_
                      (lambda (_%e4951650001%_
                               _%hd4951750005%_
                               _%tl4951850008%_
                               _%e4951950011%_
                               _%hd4952050015%_
                               _%tl4952150018%_
                               _%e4952250021%_
                               _%hd4952350025%_
                               _%tl4952450028%_
                               _%e4952550031%_
                               _%hd4952650035%_
                               _%tl4952750038%_
                               _%e4952850041%_
                               _%hd4952950045%_
                               _%tl4953050048%_
                               _%__splice7779077791%_
                               _%target4953150051%_
                               _%tl4953350054%_)
                        (letrec ((_%loop4953450057%_
                                  (lambda (_%hd4953250061%_ _%body4953850064%_)
                                    (if (gx#stx-pair? _%hd4953250061%_)
                                        (let ((_%e4953550067%_
                                               (gx#syntax-e _%hd4953250061%_)))
                                          (let ((_%lp-tl4953750074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4953550067%_)))
                                                (_%lp-hd4953650071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4953550067%_))))
                                            (_%loop4953450057%_
                                             _%lp-tl4953750074%_
                                             (cons _%lp-hd4953650071%_
                                                   _%body4953850064%_))))
                                        (let ((_%body4953950077%_
                                               (reverse _%body4953850064%_)))
                                          (let ((_%L50081%_ _%body4953950077%_)
                                                (_%L50083%_ _%hd4952950045%_)
                                                (_%L50084%_ _%hd4952350025%_))
                                            (if (and (gx#identifier?
                                                      _%L50084%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50083%_)))
                                                (_%__kont7778877789%_
                                                 _%L50081%_
                                                 _%L50083%_
                                                 _%L50084%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))))))))
                          (_%loop4953450057%_ _%target4953150051%_ '()))))
                     (_%__match7786877869%_
                      (lambda (_%e4951650001%_
                               _%hd4951750005%_
                               _%tl4951850008%_
                               _%e4951950011%_
                               _%hd4952050015%_
                               _%tl4952150018%_
                               _%e4952250021%_
                               _%hd4952350025%_
                               _%tl4952450028%_
                               _%e4952550031%_
                               _%hd4952650035%_
                               _%tl4952750038%_)
                        (if (gx#identifier? _%hd4952650035%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g82407_|
                                 _%hd4952650035%_)
                                (if (gx#stx-pair? _%tl4952750038%_)
                                    (let ((_%e4952850041%_
                                           (gx#syntax-e _%tl4952750038%_)))
                                      (let ((_%tl4953050048%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4952850041%_)))
                                            (_%hd4952950045%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4952850041%_))))
                                        (if (gx#stx-null? _%tl4953050048%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4952150018%_)
                                                (let ((_%__splice7779077791%_
                                                       (gx#syntax-split-splice
                                                        _%tl4952150018%_
                                                        '0)))
                                                  (let ((_%tl4953350054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7779077791%_
                                                            '1)))
                                                        (_%target4953150051%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7779077791%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4953350054%_)
                                                        (_%__match7788877889%_
                                                         _%e4951650001%_
                                                         _%hd4951750005%_
                                                         _%tl4951850008%_
                                                         _%e4951950011%_
                                                         _%hd4952050015%_
                                                         _%tl4952150018%_
                                                         _%e4952250021%_
                                                         _%hd4952350025%_
                                                         _%tl4952450028%_
                                                         _%e4952550031%_
                                                         _%hd4952650035%_
                                                         _%tl4952750038%_
                                                         _%e4952850041%_
                                                         _%hd4952950045%_
                                                         _%tl4953050048%_
                                                         _%__splice7779077791%_
                                                         _%target4953150051%_
                                                         _%tl4953350054%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4948349626%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948349626%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948349626%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g82408_|
                                     _%hd4952650035%_)
                                    (if (gx#stx-pair? _%tl4952750038%_)
                                        (let ((_%e4955549919%_
                                               (gx#syntax-e _%tl4952750038%_)))
                                          (let ((_%tl4955749926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4955549919%_)))
                                                (_%hd4955649923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4955549919%_))))
                                            (if (gx#stx-null? _%tl4955749926%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4952150018%_)
                                                    (let ((_%__splice7779477795%_
                                                           (gx#syntax-split-splice
                                                            _%tl4952150018%_
                                                            '0)))
                                                      (let ((_%tl4956049932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7779477795%_ '1)))
                    (_%target4955849929%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7779477795%_ '0))))
                (if (gx#stx-null? _%tl4956049932%_)
                    (_%__match7793277933%_
                     _%e4951650001%_
                     _%hd4951750005%_
                     _%tl4951850008%_
                     _%e4951950011%_
                     _%hd4952050015%_
                     _%tl4952150018%_
                     _%e4952250021%_
                     _%hd4952350025%_
                     _%tl4952450028%_
                     _%e4952550031%_
                     _%hd4952650035%_
                     _%tl4952750038%_
                     _%e4955549919%_
                     _%hd4955649923%_
                     _%tl4955749926%_
                     _%__splice7779477795%_
                     _%target4955849929%_
                     _%tl4956049932%_)
                    (let () (declare (not safe)) (_%g4948349626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948349626%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4948349626%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g82409_|
                                         _%hd4952650035%_)
                                        (if (gx#stx-pair? _%tl4952750038%_)
                                            (let ((_%e4958249797%_
                                                   (gx#syntax-e
                                                    _%tl4952750038%_)))
                                              (let ((_%tl4958449804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4958249797%_)))
                                                    (_%hd4958349801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4958249797%_))))
                                                (if (gx#stx-null?
                                                     _%tl4958449804%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4952150018%_)
                                                        (let ((_%__splice7779877799%_
                                                               (gx#syntax-split-splice
                                                                _%tl4952150018%_
                                                                '0)))
                                                          (let ((_%tl4958749810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7779877799%_ '1)))
                        (_%target4958549807%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7779877799%_ '0))))
                    (if (gx#stx-null? _%tl4958749810%_)
                        (_%__match7797677977%_
                         _%e4951650001%_
                         _%hd4951750005%_
                         _%tl4951850008%_
                         _%e4951950011%_
                         _%hd4952050015%_
                         _%tl4952150018%_
                         _%e4952250021%_
                         _%hd4952350025%_
                         _%tl4952450028%_
                         _%e4952550031%_
                         _%hd4952650035%_
                         _%tl4952750038%_
                         _%e4958249797%_
                         _%hd4958349801%_
                         _%tl4958449804%_
                         _%__splice7779877799%_
                         _%target4958549807%_
                         _%tl4958749810%_)
                        (let () (declare (not safe)) (_%g4948349626%_)))))
                (let () (declare (not safe)) (_%g4948349626%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948349626%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948349626%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g82410_|
                                             _%hd4952650035%_)
                                            (if (gx#stx-pair? _%tl4952750038%_)
                                                (let ((_%e4960949673%_
                                                       (gx#syntax-e
                                                        _%tl4952750038%_)))
                                                  (let ((_%tl4961149680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4960949673%_)))
                                                        (_%hd4961049677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4960949673%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4961149680%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4952150018%_)
                                                            (let ((_%__splice7780277803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4952150018%_ '0)))
                      (let ((_%tl4961449686%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7780277803%_ '1)))
                            (_%target4961249683%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7780277803%_ '0))))
                        (if (gx#stx-null? _%tl4961449686%_)
                            (_%__match7802078021%_
                             _%e4951650001%_
                             _%hd4951750005%_
                             _%tl4951850008%_
                             _%e4951950011%_
                             _%hd4952050015%_
                             _%tl4952150018%_
                             _%e4952250021%_
                             _%hd4952350025%_
                             _%tl4952450028%_
                             _%e4952550031%_
                             _%hd4952650035%_
                             _%tl4952750038%_
                             _%e4960949673%_
                             _%hd4961049677%_
                             _%tl4961149680%_
                             _%__splice7780277803%_
                             _%target4961249683%_
                             _%tl4961449686%_)
                            (let () (declare (not safe)) (_%g4948349626%_)))))
                    (let () (declare (not safe)) (_%g4948349626%_)))
                (let () (declare (not safe)) (_%g4948349626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4948349626%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948349626%_))))))
                            (let () (declare (not safe)) (_%g4948349626%_)))))
                     (_%__match7784477845%_
                      (lambda (_%e4948950123%_
                               _%hd4949050127%_
                               _%tl4949150130%_
                               _%e4949250133%_
                               _%hd4949350137%_
                               _%tl4949450140%_
                               _%e4949550143%_
                               _%hd4949650147%_
                               _%tl4949750150%_
                               _%e4949850153%_
                               _%hd4949950157%_
                               _%tl4950050160%_
                               _%e4950150163%_
                               _%hd4950250167%_
                               _%tl4950350170%_
                               _%__splice7778677787%_
                               _%target4950450173%_
                               _%tl4950650176%_)
                        (letrec ((_%loop4950750179%_
                                  (lambda (_%hd4950550183%_ _%body4951150186%_)
                                    (if (gx#stx-pair? _%hd4950550183%_)
                                        (let ((_%e4950850189%_
                                               (gx#syntax-e _%hd4950550183%_)))
                                          (let ((_%lp-tl4951050196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4950850189%_)))
                                                (_%lp-hd4950950193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4950850189%_))))
                                            (_%loop4950750179%_
                                             _%lp-tl4951050196%_
                                             (cons _%lp-hd4950950193%_
                                                   _%body4951150186%_))))
                                        (let ((_%body4951250199%_
                                               (reverse _%body4951150186%_)))
                                          (let ((_%L50203%_ _%body4951250199%_)
                                                (_%L50205%_ _%hd4950250167%_)
                                                (_%L50206%_ _%hd4949950157%_)
                                                (_%L50207%_ _%hd4949650147%_))
                                            (if (let ((__tmp82411
                                                       (gx#syntax-local-value
                                                        _%L50205%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp82411))
                                                (_%__kont7778477785%_
                                                 _%L50203%_
                                                 _%L50205%_
                                                 _%L50206%_
                                                 _%L50207%_)
                                                (_%__match7786877869%_
                                                 _%e4948950123%_
                                                 _%hd4949050127%_
                                                 _%tl4949150130%_
                                                 _%e4949250133%_
                                                 _%hd4949350137%_
                                                 _%tl4949450140%_
                                                 _%e4949550143%_
                                                 _%hd4949650147%_
                                                 _%tl4949750150%_
                                                 _%e4949850153%_
                                                 _%hd4949950157%_
                                                 _%tl4950050160%_))))))))
                          (_%loop4950750179%_ _%target4950450173%_ '())))))
                (if (gx#stx-pair? _%__stx7778177782%_)
                    (let ((_%e4948950123%_ (gx#syntax-e _%__stx7778177782%_)))
                      (let ((_%tl4949150130%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4948950123%_)))
                            (_%hd4949050127%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4948950123%_))))
                        (if (gx#stx-pair? _%tl4949150130%_)
                            (let ((_%e4949250133%_
                                   (gx#syntax-e _%tl4949150130%_)))
                              (let ((_%tl4949450140%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4949250133%_)))
                                    (_%hd4949350137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4949250133%_))))
                                (if (gx#stx-pair? _%hd4949350137%_)
                                    (let ((_%e4949550143%_
                                           (gx#syntax-e _%hd4949350137%_)))
                                      (let ((_%tl4949750150%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4949550143%_)))
                                            (_%hd4949650147%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4949550143%_))))
                                        (if (gx#stx-pair? _%tl4949750150%_)
                                            (let ((_%e4949850153%_
                                                   (gx#syntax-e
                                                    _%tl4949750150%_)))
                                              (let ((_%tl4950050160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4949850153%_)))
                                                    (_%hd4949950157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4949850153%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4950050160%_)
                                                    (let ((_%e4950150163%_
                                                           (gx#syntax-e
                                                            _%tl4950050160%_)))
                                                      (let ((_%tl4950350170%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4950150163%_)))
                    (_%hd4950250167%_
                     (let () (declare (not safe)) (##car _%e4950150163%_))))
                (if (gx#stx-null? _%tl4950350170%_)
                    (if (gx#stx-pair/null? _%tl4949450140%_)
                        (let ((_%__splice7778677787%_
                               (gx#syntax-split-splice _%tl4949450140%_ '0)))
                          (let ((_%tl4950650176%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7778677787%_ '1)))
                                (_%target4950450173%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7778677787%_ '0))))
                            (if (gx#stx-null? _%tl4950650176%_)
                                (_%__match7784477845%_
                                 _%e4948950123%_
                                 _%hd4949050127%_
                                 _%tl4949150130%_
                                 _%e4949250133%_
                                 _%hd4949350137%_
                                 _%tl4949450140%_
                                 _%e4949550143%_
                                 _%hd4949650147%_
                                 _%tl4949750150%_
                                 _%e4949850153%_
                                 _%hd4949950157%_
                                 _%tl4950050160%_
                                 _%e4950150163%_
                                 _%hd4950250167%_
                                 _%tl4950350170%_
                                 _%__splice7778677787%_
                                 _%target4950450173%_
                                 _%tl4950650176%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4948349626%_)))))
                        (let () (declare (not safe)) (_%g4948349626%_)))
                    (let () (declare (not safe)) (_%g4948349626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4948349626%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4948349626%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4948349626%_)))))
                            (let () (declare (not safe)) (_%g4948349626%_)))))
                    (let () (declare (not safe)) (_%g4948349626%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50697%_)
        (let* ((_%__stx7802378024%_ _%stx50697%_)
               (_%g5070250762%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7802378024%_))))
          (let ((_%__kont7802678027%_
                 (lambda (_%L51324%_ _%L51326%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51326%_ '()))
                               (foldr (lambda (_%g5134251345%_ _%g5134351348%_)
                                        (cons _%g5134251345%_ _%g5134351348%_))
                                      '()
                                      _%L51324%_)))))
                (_%__kont7803078031%_
                 (lambda (_%L50910%_ _%L50912%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50912%_)
                       (let* ((_%g5093250939%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50697%_
                                _%L50912%_))
                              (_%E5093450945%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5093250939%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5093551243%_
                               (lambda (_%parts50949%_ _%var50951%_)
                                 (let ((_%$e50953%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50951%_))))
                                   (if _%$e50953%_
                                       ((lambda (_%te50957%_)
                                          (let _%loop50960%_ ((_%parts50963%_
                                                               _%parts50949%_)
                                                              (_%type50965%_
                                                               (##direct-structure-ref
                                                                _%te50957%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50966%_
                                                               _%var50951%_)
                                                              (_%checked-method?50967%_
                                                               (##direct-structure-ref
                                                                _%te50957%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50968%_
                                                               '#f))
                                            (let* ((_%parts5096950977%_
                                                    _%parts50963%_)
                                                   (_%else5097151038%_
                                                    (lambda ()
                                                      (let* ((_%g5098950997%_
                                                              (lambda (_%g5099050993%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5099050993%_)))
                     (_%g5098851034%_
                      (lambda (_%g5099051001%_)
                        ((lambda (_%L51004%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L51004%_
                                       (foldr (lambda (_%g5102551028%_
                                                       _%g5102651031%_)
                                                (cons _%g5102551028%_
                                                      _%g5102651031%_))
                                              '()
                                              _%L50910%_))))
                         _%g5099051001%_))))
                (_%g5098851034%_ _%object50966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5097351217%_
                                                    (lambda (_%rest51042%_
                                                             _%part51044%_)
                                                      (if (and (not _%nil-check?50968%_)
                                                               (let ((__tmp82412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51044%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp82412)))
                  (let ((_%str51048%_ (symbol->string _%part51044%_)))
                    (_%loop50960%_
                     (cons (let ((__tmp82413
                                  (substring
                                   _%str51048%_
                                   '1
                                   (string-length _%str51048%_))))
                             (declare (not safe))
                             (##string->symbol __tmp82413))
                           _%rest51042%_)
                     _%type50965%_
                     _%object50966%_
                     _%checked-method?50967%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50965%_))
                      (let* ((_%g5105351068%_
                              (lambda (_%g5105451064%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5105451064%_)))
                             (_%g5105251137%_
                              (lambda (_%g5105451072%_)
                                (if (gx#stx-pair? _%g5105451072%_)
                                    (let ((_%e5105751075%_
                                           (gx#syntax-e _%g5105451072%_)))
                                      (let ((_%hd5105851079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5105751075%_)))
                                            (_%tl5105951082%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5105751075%_))))
                                        (if (gx#stx-pair? _%tl5105951082%_)
                                            (let ((_%e5106051085%_
                                                   (gx#syntax-e
                                                    _%tl5105951082%_)))
                                              (let ((_%hd5106151089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5106051085%_)))
                                                    (_%tl5106251092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5106051085%_))))
                                                (if (gx#stx-null?
                                                     _%tl5106251092%_)
                                                    ((lambda (_%L51095%_
                                                              _%L51097%_)
                                                       (if (null? _%rest51042%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51095%_ (cons _%L51097%_ '()))
                               (foldr (lambda (_%g5111651119%_ _%g5111751122%_)
                                        (cons _%g5111651119%_ _%g5111751122%_))
                                      '()
                                      _%L50910%_)))
                   (let ((_%$e51125%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50965%_
                           _%part51044%_)))
                     (if _%$e51125%_
                         ((lambda (_%slot-type51129%_)
                            (let ((_%slot-type51132%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50697%_
                                      _%slot-type51129%_))))
                              (_%loop50960%_
                               _%rest51042%_
                               _%slot-type51132%_
                               (cons _%L51095%_ (cons _%L51097%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50965%_
                                _%part51044%_)
                               '#f)))
                          _%$e51125%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50697%_
                          _%L50912%_
                          _%part51044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5106151089%_
                                                     _%hd5105851079%_)
                                                    (_%g5105351068%_
                                                     _%g5105451072%_))))
                                            (_%g5105351068%_
                                             _%g5105451072%_))))
                                    (_%g5105351068%_ _%g5105451072%_)))))
                        (_%g5105251137%_
                         (list (if _%nil-check?50968%_
                                   (cons 'check-nil!
                                         (cons _%object50966%_ '()))
                                   _%object50966%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50697%_
                                _%type50965%_
                                _%part51044%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50965%_))
                          (if (null? _%rest51042%_)
                              (let* ((_%g5114351158%_
                                      (lambda (_%g5114451154%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5114451154%_)))
                                     (_%g5114251211%_
                                      (lambda (_%g5114451162%_)
                                        (if (gx#stx-pair? _%g5114451162%_)
                                            (let ((_%e5114751165%_
                                                   (gx#syntax-e
                                                    _%g5114451162%_)))
                                              (let ((_%hd5114851169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5114751165%_)))
                                                    (_%tl5114951172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5114751165%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5114951172%_)
                                                    (let ((_%e5115051175%_
                                                           (gx#syntax-e
                                                            _%tl5114951172%_)))
                                                      (let ((_%hd5115151179%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5115051175%_)))
                    (_%tl5115251182%_
                     (let () (declare (not safe)) (##cdr _%e5115051175%_))))
                (if (gx#stx-null? _%tl5115251182%_)
                    ((lambda (_%L51185%_ _%L51187%_)
                       (cons _%L51185%_
                             (cons _%L51187%_
                                   (foldr (lambda (_%g5120251205%_
                                                   _%g5120351208%_)
                                            (cons _%g5120251205%_
                                                  _%g5120351208%_))
                                          '()
                                          _%L50910%_))))
                     _%hd5115151179%_
                     _%hd5114851169%_)
                    (_%g5114351158%_ _%g5114451162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5114351158%_
                                                     _%g5114451162%_))))
                                            (_%g5114351158%_
                                             _%g5114451162%_)))))
                                (_%g5114251211%_
                                 (list (if _%nil-check?50968%_
                                           (cons 'check-nil!
                                                 (cons _%object50966%_ '()))
                                           _%object50966%_)
                                       (gx#stx-identifier
                                        _%L50912%_
                                        (if _%checked-method?50967%_ '"" '"&")
                                        (let ((__obj82242 _%type50965%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj82242
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj82242
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/contract~InterfaceInfo#interface-info::t
                                               __obj82242
                                               'name)))
                                        '"-"
                                        _%part51044%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50697%_
                               _%L50912%_
                               _%part51044%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50697%_
                           _%type50965%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5096950977%_))
                                                  (let ((_%hd5097451221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5096950977%_)))
                                                        (_%tl5097551224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5096950977%_))))
                                                    (let* ((_%part51227%_
                                                            _%hd5097451221%_)
                                                           (_%rest51230%_
                                                            _%tl5097551224%_))
                                                      (_%K5097351217%_
                                                       _%rest51230%_
                                                       _%part51227%_)))
                                                  (_%else5097151038%_)))))
                                        _%$e50953%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50912%_
                                                   (foldr (lambda (_%g5123451237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5123551240%_)
                    (cons _%g5123451237%_ _%g5123551240%_))
                  '()
                  _%L50910%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5093250939%_))
                             (let ((_%hd5093651247%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5093250939%_)))
                                   (_%tl5093751250%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5093250939%_))))
                               (let* ((_%var51253%_ _%hd5093651247%_)
                                      (_%parts51256%_ _%tl5093751250%_))
                                 (_%K5093551243%_
                                  _%parts51256%_
                                  _%var51253%_)))
                             (_%E5093450945%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50912%_
                                   (foldr (lambda (_%g5125851261%_
                                                   _%g5125951264%_)
                                            (cons _%g5125851261%_
                                                  _%g5125951264%_))
                                          '()
                                          _%L50910%_))))))
                (_%__kont7803478035%_
                 (lambda (_%L50809%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5082450827%_ _%g5082550830%_)
                                  (cons _%g5082450827%_ _%g5082550830%_))
                                '()
                                _%L50809%_)))))
            (let* ((_%__match7811078111%_
                    (lambda (_%e5074550769%_
                             _%hd5074650773%_
                             _%tl5074750776%_
                             _%__splice7803678037%_
                             _%target5074850779%_
                             _%tl5075050782%_)
                      (letrec ((_%loop5075150785%_
                                (lambda (_%hd5074950789%_ _%arg5075550792%_)
                                  (if (gx#stx-pair? _%hd5074950789%_)
                                      (let ((_%e5075250795%_
                                             (gx#syntax-e _%hd5074950789%_)))
                                        (let ((_%lp-tl5075450802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5075250795%_)))
                                              (_%lp-hd5075350799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5075250795%_))))
                                          (_%loop5075150785%_
                                           _%lp-tl5075450802%_
                                           (cons _%lp-hd5075350799%_
                                                 _%arg5075550792%_))))
                                      (let ((_%arg5075650805%_
                                             (reverse _%arg5075550792%_)))
                                        (_%__kont7803478035%_
                                         _%arg5075650805%_))))))
                        (_%loop5075150785%_ _%target5074850779%_ '()))))
                   (_%__match7809678097%_
                    (lambda (_%e5072350840%_
                             _%hd5072450844%_
                             _%tl5072550847%_
                             _%e5072650850%_
                             _%hd5072750854%_
                             _%tl5072850857%_
                             _%e5072950860%_
                             _%hd5073050864%_
                             _%tl5073150867%_
                             _%e5073250870%_
                             _%hd5073350874%_
                             _%tl5073450877%_
                             _%__splice7803278033%_
                             _%target5073550880%_
                             _%tl5073750883%_)
                      (letrec ((_%loop5073850886%_
                                (lambda (_%hd5073650890%_ _%rand5074250893%_)
                                  (if (gx#stx-pair? _%hd5073650890%_)
                                      (let ((_%e5073950896%_
                                             (gx#syntax-e _%hd5073650890%_)))
                                        (let ((_%lp-tl5074150903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073950896%_)))
                                              (_%lp-hd5074050900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073950896%_))))
                                          (_%loop5073850886%_
                                           _%lp-tl5074150903%_
                                           (cons _%lp-hd5074050900%_
                                                 _%rand5074250893%_))))
                                      (let ((_%rand5074350906%_
                                             (reverse _%rand5074250893%_)))
                                        (_%__kont7803078031%_
                                         _%rand5074350906%_
                                         _%hd5073350874%_))))))
                        (_%loop5073850886%_ _%target5073550880%_ '()))))
                   (_%__match7807078071%_
                    (lambda (_%e5072350840%_
                             _%hd5072450844%_
                             _%tl5072550847%_
                             _%e5072650850%_
                             _%hd5072750854%_
                             _%tl5072850857%_)
                      (if (gx#stx-pair? _%hd5072750854%_)
                          (let ((_%e5072950860%_
                                 (gx#syntax-e _%hd5072750854%_)))
                            (let ((_%tl5073150867%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5072950860%_)))
                                  (_%hd5073050864%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5072950860%_))))
                              (if (gx#identifier? _%hd5073050864%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g82414_|
                                       _%hd5073050864%_)
                                      (if (gx#stx-pair? _%tl5073150867%_)
                                          (let ((_%e5073250870%_
                                                 (gx#syntax-e
                                                  _%tl5073150867%_)))
                                            (let ((_%tl5073450877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5073250870%_)))
                                                  (_%hd5073350874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5073250870%_))))
                                              (if (gx#stx-null?
                                                   _%tl5073450877%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5072850857%_)
                                                      (let ((_%__splice7803278033%_
                                                             (gx#syntax-split-splice
                                                              _%tl5072850857%_
                                                              '0)))
                                                        (let ((_%tl5073750883%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7803278033%_ '1)))
                      (_%target5073550880%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7803278033%_ '0))))
                  (if (gx#stx-null? _%tl5073750883%_)
                      (_%__match7809678097%_
                       _%e5072350840%_
                       _%hd5072450844%_
                       _%tl5072550847%_
                       _%e5072650850%_
                       _%hd5072750854%_
                       _%tl5072850857%_
                       _%e5072950860%_
                       _%hd5073050864%_
                       _%tl5073150867%_
                       _%e5073250870%_
                       _%hd5073350874%_
                       _%tl5073450877%_
                       _%__splice7803278033%_
                       _%target5073550880%_
                       _%tl5073750883%_)
                      (if (gx#stx-pair/null? _%tl5072550847%_)
                          (let ((_%__splice7803678037%_
                                 (gx#syntax-split-splice _%tl5072550847%_ '0)))
                            (let ((_%tl5075050782%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7803678037%_ '1)))
                                  (_%target5074850779%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7803678037%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075050782%_)
                                  (_%__match7811078111%_
                                   _%e5072350840%_
                                   _%hd5072450844%_
                                   _%tl5072550847%_
                                   _%__splice7803678037%_
                                   _%target5074850779%_
                                   _%tl5075050782%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070250762%_)))))
                          (let () (declare (not safe)) (_%g5070250762%_))))))
              (if (gx#stx-pair/null? _%tl5072550847%_)
                  (let ((_%__splice7803678037%_
                         (gx#syntax-split-splice _%tl5072550847%_ '0)))
                    (let ((_%tl5075050782%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '1)))
                          (_%target5074850779%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '0))))
                      (if (gx#stx-null? _%tl5075050782%_)
                          (_%__match7811078111%_
                           _%e5072350840%_
                           _%hd5072450844%_
                           _%tl5072550847%_
                           _%__splice7803678037%_
                           _%target5074850779%_
                           _%tl5075050782%_)
                          (let () (declare (not safe)) (_%g5070250762%_)))))
                  (let () (declare (not safe)) (_%g5070250762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5072550847%_)
                                                      (let ((_%__splice7803678037%_
                                                             (gx#syntax-split-splice
                                                              _%tl5072550847%_
                                                              '0)))
                                                        (let ((_%tl5075050782%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7803678037%_ '1)))
                      (_%target5074850779%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7803678037%_ '0))))
                  (if (gx#stx-null? _%tl5075050782%_)
                      (_%__match7811078111%_
                       _%e5072350840%_
                       _%hd5072450844%_
                       _%tl5072550847%_
                       _%__splice7803678037%_
                       _%target5074850779%_
                       _%tl5075050782%_)
                      (let () (declare (not safe)) (_%g5070250762%_)))))
              (let () (declare (not safe)) (_%g5070250762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5072550847%_)
                                              (let ((_%__splice7803678037%_
                                                     (gx#syntax-split-splice
                                                      _%tl5072550847%_
                                                      '0)))
                                                (let ((_%tl5075050782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7803678037%_
                                                          '1)))
                                                      (_%target5074850779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7803678037%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5075050782%_)
                                                      (_%__match7811078111%_
                                                       _%e5072350840%_
                                                       _%hd5072450844%_
                                                       _%tl5072550847%_
                                                       _%__splice7803678037%_
                                                       _%target5074850779%_
                                                       _%tl5075050782%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5070250762%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070250762%_))))
                                      (if (gx#stx-pair/null? _%tl5072550847%_)
                                          (let ((_%__splice7803678037%_
                                                 (gx#syntax-split-splice
                                                  _%tl5072550847%_
                                                  '0)))
                                            (let ((_%tl5075050782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7803678037%_
                                                      '1)))
                                                  (_%target5074850779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7803678037%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075050782%_)
                                                  (_%__match7811078111%_
                                                   _%e5072350840%_
                                                   _%hd5072450844%_
                                                   _%tl5072550847%_
                                                   _%__splice7803678037%_
                                                   _%target5074850779%_
                                                   _%tl5075050782%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070250762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070250762%_))))
                                  (if (gx#stx-pair/null? _%tl5072550847%_)
                                      (let ((_%__splice7803678037%_
                                             (gx#syntax-split-splice
                                              _%tl5072550847%_
                                              '0)))
                                        (let ((_%tl5075050782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7803678037%_
                                                  '1)))
                                              (_%target5074850779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7803678037%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5075050782%_)
                                              (_%__match7811078111%_
                                               _%e5072350840%_
                                               _%hd5072450844%_
                                               _%tl5072550847%_
                                               _%__splice7803678037%_
                                               _%target5074850779%_
                                               _%tl5075050782%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5070250762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070250762%_))))))
                          (if (gx#stx-pair/null? _%tl5072550847%_)
                              (let ((_%__splice7803678037%_
                                     (gx#syntax-split-splice
                                      _%tl5072550847%_
                                      '0)))
                                (let ((_%tl5075050782%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '1)))
                                      (_%target5074850779%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075050782%_)
                                      (_%__match7811078111%_
                                       _%e5072350840%_
                                       _%hd5072450844%_
                                       _%tl5072550847%_
                                       _%__splice7803678037%_
                                       _%target5074850779%_
                                       _%tl5075050782%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070250762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070250762%_))))))
                   (_%__match7805878059%_
                    (lambda (_%e5070651274%_
                             _%hd5070751278%_
                             _%tl5070851281%_
                             _%e5070951284%_
                             _%hd5071051288%_
                             _%tl5071151291%_
                             _%__splice7802878029%_
                             _%target5071251294%_
                             _%tl5071451297%_)
                      (letrec ((_%loop5071551300%_
                                (lambda (_%hd5071351304%_ _%rand5071951307%_)
                                  (if (gx#stx-pair? _%hd5071351304%_)
                                      (let ((_%e5071651310%_
                                             (gx#syntax-e _%hd5071351304%_)))
                                        (let ((_%lp-tl5071851317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5071651310%_)))
                                              (_%lp-hd5071751314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5071651310%_))))
                                          (_%loop5071551300%_
                                           _%lp-tl5071851317%_
                                           (cons _%lp-hd5071751314%_
                                                 _%rand5071951307%_))))
                                      (let ((_%rand5072051320%_
                                             (reverse _%rand5071951307%_)))
                                        (let ((_%L51324%_ _%rand5072051320%_)
                                              (_%L51326%_ _%hd5071051288%_))
                                          (if (gx#identifier? _%L51326%_)
                                              (_%__kont7802678027%_
                                               _%L51324%_
                                               _%L51326%_)
                                              (_%__match7807078071%_
                                               _%e5070651274%_
                                               _%hd5070751278%_
                                               _%tl5070851281%_
                                               _%e5070951284%_
                                               _%hd5071051288%_
                                               _%tl5071151291%_))))))))
                        (_%loop5071551300%_ _%target5071251294%_ '())))))
              (if (gx#stx-pair? _%__stx7802378024%_)
                  (let ((_%e5070651274%_ (gx#syntax-e _%__stx7802378024%_)))
                    (let ((_%tl5070851281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5070651274%_)))
                          (_%hd5070751278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5070651274%_))))
                      (if (gx#stx-pair? _%tl5070851281%_)
                          (let ((_%e5070951284%_
                                 (gx#syntax-e _%tl5070851281%_)))
                            (let ((_%tl5071151291%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5070951284%_)))
                                  (_%hd5071051288%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5070951284%_))))
                              (if (gx#stx-pair/null? _%tl5071151291%_)
                                  (let ((_%__splice7802878029%_
                                         (gx#syntax-split-splice
                                          _%tl5071151291%_
                                          '0)))
                                    (let ((_%tl5071451297%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7802878029%_
                                              '1)))
                                          (_%target5071251294%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7802878029%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5071451297%_)
                                          (_%__match7805878059%_
                                           _%e5070651274%_
                                           _%hd5070751278%_
                                           _%tl5070851281%_
                                           _%e5070951284%_
                                           _%hd5071051288%_
                                           _%tl5071151291%_
                                           _%__splice7802878029%_
                                           _%target5071251294%_
                                           _%tl5071451297%_)
                                          (if (gx#stx-pair? _%hd5071051288%_)
                                              (let ((_%e5072950860%_
                                                     (gx#syntax-e
                                                      _%hd5071051288%_)))
                                                (let ((_%tl5073150867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5072950860%_)))
                                                      (_%hd5073050864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5072950860%_))))
                                                  (if (gx#identifier?
                                                       _%hd5073050864%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g82414_|
                                                           _%hd5073050864%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5073150867%_)
                                                              (let ((_%e5073250870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5073150867%_)))
                        (let ((_%tl5073450877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5073250870%_)))
                              (_%hd5073350874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5073250870%_))))
                          (if (gx#stx-pair/null? _%tl5070851281%_)
                              (let ((_%__splice7803678037%_
                                     (gx#syntax-split-splice
                                      _%tl5070851281%_
                                      '0)))
                                (let ((_%tl5075050782%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '1)))
                                      (_%target5074850779%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075050782%_)
                                      (_%__match7811078111%_
                                       _%e5070651274%_
                                       _%hd5070751278%_
                                       _%tl5070851281%_
                                       _%__splice7803678037%_
                                       _%target5074850779%_
                                       _%tl5075050782%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070250762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070250762%_)))))
                      (if (gx#stx-pair/null? _%tl5070851281%_)
                          (let ((_%__splice7803678037%_
                                 (gx#syntax-split-splice _%tl5070851281%_ '0)))
                            (let ((_%tl5075050782%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7803678037%_ '1)))
                                  (_%target5074850779%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7803678037%_
                                      '0))))
                              (if (gx#stx-null? _%tl5075050782%_)
                                  (_%__match7811078111%_
                                   _%e5070651274%_
                                   _%hd5070751278%_
                                   _%tl5070851281%_
                                   _%__splice7803678037%_
                                   _%target5074850779%_
                                   _%tl5075050782%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5070250762%_)))))
                          (let () (declare (not safe)) (_%g5070250762%_))))
                  (if (gx#stx-pair/null? _%tl5070851281%_)
                      (let ((_%__splice7803678037%_
                             (gx#syntax-split-splice _%tl5070851281%_ '0)))
                        (let ((_%tl5075050782%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7803678037%_ '1)))
                              (_%target5074850779%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7803678037%_ '0))))
                          (if (gx#stx-null? _%tl5075050782%_)
                              (_%__match7811078111%_
                               _%e5070651274%_
                               _%hd5070751278%_
                               _%tl5070851281%_
                               _%__splice7803678037%_
                               _%target5074850779%_
                               _%tl5075050782%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070250762%_)))))
                      (let () (declare (not safe)) (_%g5070250762%_))))
              (if (gx#stx-pair/null? _%tl5070851281%_)
                  (let ((_%__splice7803678037%_
                         (gx#syntax-split-splice _%tl5070851281%_ '0)))
                    (let ((_%tl5075050782%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '1)))
                          (_%target5074850779%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '0))))
                      (if (gx#stx-null? _%tl5075050782%_)
                          (_%__match7811078111%_
                           _%e5070651274%_
                           _%hd5070751278%_
                           _%tl5070851281%_
                           _%__splice7803678037%_
                           _%target5074850779%_
                           _%tl5075050782%_)
                          (let () (declare (not safe)) (_%g5070250762%_)))))
                  (let () (declare (not safe)) (_%g5070250762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5070851281%_)
                                                  (let ((_%__splice7803678037%_
                                                         (gx#syntax-split-splice
                                                          _%tl5070851281%_
                                                          '0)))
                                                    (let ((_%tl5075050782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7803678037%_
                                                              '1)))
                                                          (_%target5074850779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7803678037%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075050782%_)
                                                          (_%__match7811078111%_
                                                           _%e5070651274%_
                                                           _%hd5070751278%_
                                                           _%tl5070851281%_
                                                           _%__splice7803678037%_
                                                           _%target5074850779%_
                                                           _%tl5075050782%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070250762%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070250762%_)))))))
                                  (if (gx#stx-pair? _%hd5071051288%_)
                                      (let ((_%e5072950860%_
                                             (gx#syntax-e _%hd5071051288%_)))
                                        (let ((_%tl5073150867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5072950860%_)))
                                              (_%hd5073050864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5072950860%_))))
                                          (if (gx#identifier? _%hd5073050864%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g82414_|
                                                   _%hd5073050864%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5073150867%_)
                                                      (let ((_%e5073250870%_
                                                             (gx#syntax-e
                                                              _%tl5073150867%_)))
                                                        (let ((_%tl5073450877%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5073250870%_)))
                      (_%hd5073350874%_
                       (let () (declare (not safe)) (##car _%e5073250870%_))))
                  (if (gx#stx-pair/null? _%tl5070851281%_)
                      (let ((_%__splice7803678037%_
                             (gx#syntax-split-splice _%tl5070851281%_ '0)))
                        (let ((_%tl5075050782%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7803678037%_ '1)))
                              (_%target5074850779%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7803678037%_ '0))))
                          (if (gx#stx-null? _%tl5075050782%_)
                              (_%__match7811078111%_
                               _%e5070651274%_
                               _%hd5070751278%_
                               _%tl5070851281%_
                               _%__splice7803678037%_
                               _%target5074850779%_
                               _%tl5075050782%_)
                              (let ()
                                (declare (not safe))
                                (_%g5070250762%_)))))
                      (let () (declare (not safe)) (_%g5070250762%_)))))
              (if (gx#stx-pair/null? _%tl5070851281%_)
                  (let ((_%__splice7803678037%_
                         (gx#syntax-split-splice _%tl5070851281%_ '0)))
                    (let ((_%tl5075050782%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '1)))
                          (_%target5074850779%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7803678037%_ '0))))
                      (if (gx#stx-null? _%tl5075050782%_)
                          (_%__match7811078111%_
                           _%e5070651274%_
                           _%hd5070751278%_
                           _%tl5070851281%_
                           _%__splice7803678037%_
                           _%target5074850779%_
                           _%tl5075050782%_)
                          (let () (declare (not safe)) (_%g5070250762%_)))))
                  (let () (declare (not safe)) (_%g5070250762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5070851281%_)
                                                      (let ((_%__splice7803678037%_
                                                             (gx#syntax-split-splice
                                                              _%tl5070851281%_
                                                              '0)))
                                                        (let ((_%tl5075050782%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7803678037%_ '1)))
                      (_%target5074850779%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7803678037%_ '0))))
                  (if (gx#stx-null? _%tl5075050782%_)
                      (_%__match7811078111%_
                       _%e5070651274%_
                       _%hd5070751278%_
                       _%tl5070851281%_
                       _%__splice7803678037%_
                       _%target5074850779%_
                       _%tl5075050782%_)
                      (let () (declare (not safe)) (_%g5070250762%_)))))
              (let () (declare (not safe)) (_%g5070250762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5070851281%_)
                                                  (let ((_%__splice7803678037%_
                                                         (gx#syntax-split-splice
                                                          _%tl5070851281%_
                                                          '0)))
                                                    (let ((_%tl5075050782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7803678037%_
                                                              '1)))
                                                          (_%target5074850779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7803678037%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5075050782%_)
                                                          (_%__match7811078111%_
                                                           _%e5070651274%_
                                                           _%hd5070751278%_
                                                           _%tl5070851281%_
                                                           _%__splice7803678037%_
                                                           _%target5074850779%_
                                                           _%tl5075050782%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5070250762%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070250762%_))))))
                                      (if (gx#stx-pair/null? _%tl5070851281%_)
                                          (let ((_%__splice7803678037%_
                                                 (gx#syntax-split-splice
                                                  _%tl5070851281%_
                                                  '0)))
                                            (let ((_%tl5075050782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7803678037%_
                                                      '1)))
                                                  (_%target5074850779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7803678037%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5075050782%_)
                                                  (_%__match7811078111%_
                                                   _%e5070651274%_
                                                   _%hd5070751278%_
                                                   _%tl5070851281%_
                                                   _%__splice7803678037%_
                                                   _%target5074850779%_
                                                   _%tl5075050782%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5070250762%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5070250762%_)))))))
                          (if (gx#stx-pair/null? _%tl5070851281%_)
                              (let ((_%__splice7803678037%_
                                     (gx#syntax-split-splice
                                      _%tl5070851281%_
                                      '0)))
                                (let ((_%tl5075050782%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '1)))
                                      (_%target5074850779%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7803678037%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5075050782%_)
                                      (_%__match7811078111%_
                                       _%e5070651274%_
                                       _%hd5070751278%_
                                       _%tl5070851281%_
                                       _%__splice7803678037%_
                                       _%target5074850779%_
                                       _%tl5075050782%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5070250762%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5070250762%_))))))
                  (let () (declare (not safe)) (_%g5070250762%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51358%_)
        (let* ((_%__stx7811378114%_ _%stx51358%_)
               (_%g5136251383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7811378114%_))))
          (let ((_%__kont7811678117%_
                 (lambda (_%L51451%_)
                   (let* ((_%g5146351470%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51358%_
                            _%L51451%_))
                          (_%E5146551476%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5146351470%_
                                    '([var . parts]))
                             (void)))
                          (_%K5146651692%_
                           (lambda (_%parts51480%_ _%var51482%_)
                             (let ((_%$e51484%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51482%_))))
                               (if _%$e51484%_
                                   ((lambda (_%te51488%_)
                                      (let _%loop51491%_ ((_%parts51494%_
                                                           _%parts51480%_)
                                                          (_%type51496%_
                                                           (##direct-structure-ref
                                                            _%te51488%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51497%_
                                                           _%var51482%_)
                                                          (_%nil-check?51498%_
                                                           '#f))
                                        (let* ((_%parts5149951507%_
                                                _%parts51494%_)
                                               (_%else5150151519%_
                                                (lambda () _%object51497%_))
                                               (_%K5150351674%_
                                                (lambda (_%rest51523%_
                                                         _%part51525%_)
                                                  (if (and (not _%nil-check?51498%_)
                                                           (let ((__tmp82415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51525%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82415)))
              (let ((_%str51529%_ (symbol->string _%part51525%_)))
                (_%loop51491%_
                 (cons (let ((__tmp82416
                              (substring
                               _%str51529%_
                               '1
                               (string-length _%str51529%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82416))
                       _%rest51523%_)
                 _%type51496%_
                 _%object51497%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51496%_))
                  (let* ((_%g5153451549%_
                          (lambda (_%g5153551545%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5153551545%_)))
                         (_%g5153351666%_
                          (lambda (_%g5153551553%_)
                            (if (gx#stx-pair? _%g5153551553%_)
                                (let ((_%e5153851556%_
                                       (gx#syntax-e _%g5153551553%_)))
                                  (let ((_%hd5153951560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5153851556%_)))
                                        (_%tl5154051563%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5153851556%_))))
                                    (if (gx#stx-pair? _%tl5154051563%_)
                                        (let ((_%e5154151566%_
                                               (gx#syntax-e _%tl5154051563%_)))
                                          (let ((_%hd5154251570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5154151566%_)))
                                                (_%tl5154351573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5154151566%_))))
                                            (if (gx#stx-null? _%tl5154351573%_)
                                                ((lambda (_%L51576%_
                                                          _%L51578%_)
                                                   (if (null? _%rest51523%_)
                                                       (let ((_%$e51608%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51496%_
                                                               _%part51525%_)))
                                                         (if _%$e51608%_
                                                             ((lambda (_%slot-type51612%_)
                                                                (let* ((_%g5161551623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5161651619%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5161651619%_)))
                               (_%g5161451646%_
                                (lambda (_%g5161651627%_)
                                  ((lambda (_%L51630%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51630%_ '()))
                                                 (cons (cons _%L51576%_
                                                             (cons _%L51578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5161651627%_))))
                          (_%g5161451646%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51358%_
                              _%slot-type51612%_)))))
                      _%$e51608%_)
                     (if _%nil-check?51498%_
                         (cons _%L51576%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51578%_ '()))
                                     '()))
                         (cons _%L51576%_ (cons _%L51578%_ '())))))
               (let ((_%$e51654%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51496%_
                       _%part51525%_)))
                 (if _%$e51654%_
                     ((lambda (_%type51658%_)
                        (let ((_%type51661%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51358%_
                                  _%type51658%_))))
                          (if _%nil-check?51498%_
                              (_%loop51491%_
                               _%rest51523%_
                               _%type51661%_
                               (cons _%L51576%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51578%_ '()))
                                           '()))
                               '#f)
                              (_%loop51491%_
                               _%rest51523%_
                               _%type51661%_
                               (cons _%L51576%_ (cons _%L51578%_ '()))
                               '#f))))
                      _%$e51654%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51358%_
                      _%L51451%_
                      _%part51525%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5154251570%_
                                                 _%hd5153951560%_)
                                                (_%g5153451549%_
                                                 _%g5153551553%_))))
                                        (_%g5153451549%_ _%g5153551553%_))))
                                (_%g5153451549%_ _%g5153551553%_)))))
                    (_%g5153351666%_
                     (list (if _%nil-check?51498%_
                               (cons 'check-nil! (cons _%object51497%_ '()))
                               _%object51497%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51358%_
                            _%type51496%_
                            _%part51525%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51496%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51358%_
                       _%type51496%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5149951507%_))
                                              (let ((_%hd5150451678%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5149951507%_)))
                                                    (_%tl5150551681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5149951507%_))))
                                                (let* ((_%part51684%_
                                                        _%hd5150451678%_)
                                                       (_%rest51687%_
                                                        _%tl5150551681%_))
                                                  (_%K5150351674%_
                                                   _%rest51687%_
                                                   _%part51684%_)))
                                              (_%else5150151519%_)))))
                                    _%$e51484%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51451%_ '())))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5146351470%_))
                         (let ((_%hd5146751696%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5146351470%_)))
                               (_%tl5146851699%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5146351470%_))))
                           (let* ((_%var51702%_ _%hd5146751696%_)
                                  (_%parts51705%_ _%tl5146851699%_))
                             (_%K5146651692%_ _%parts51705%_ _%var51702%_)))
                         (_%E5146551476%_)))))
                (_%__kont7811878119%_
                 (lambda (_%L51410%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51410%_ '())))))
            (let ((_%__match7813478135%_
                   (lambda (_%e5136551431%_
                            _%hd5136651435%_
                            _%tl5136751438%_
                            _%e5136851441%_
                            _%hd5136951445%_
                            _%tl5137051448%_)
                     (let ((_%L51451%_ _%hd5136951445%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51451%_)
                           (_%__kont7811678117%_ _%L51451%_)
                           (_%__kont7811878119%_ _%hd5136951445%_))))))
              (if (gx#stx-pair? _%__stx7811378114%_)
                  (let ((_%e5136551431%_ (gx#syntax-e _%__stx7811378114%_)))
                    (let ((_%tl5136751438%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5136551431%_)))
                          (_%hd5136651435%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5136551431%_))))
                      (if (gx#stx-pair? _%tl5136751438%_)
                          (let ((_%e5136851441%_
                                 (gx#syntax-e _%tl5136751438%_)))
                            (let ((_%tl5137051448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5136851441%_)))
                                  (_%hd5136951445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5136851441%_))))
                              (if (gx#stx-null? _%tl5137051448%_)
                                  (_%__match7813478135%_
                                   _%e5136551431%_
                                   _%hd5136651435%_
                                   _%tl5136751438%_
                                   _%e5136851441%_
                                   _%hd5136951445%_
                                   _%tl5137051448%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5136251383%_)))))
                          (let () (declare (not safe)) (_%g5136251383%_)))))
                  (let () (declare (not safe)) (_%g5136251383%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51712%_)
        (let* ((_%__stx7815178152%_ _%stx51712%_)
               (_%g5171651745%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7815178152%_))))
          (let ((_%__kont7815478155%_
                 (lambda (_%L51837%_ _%L51839%_)
                   (let* ((_%g5185351860%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51712%_
                            _%L51839%_))
                          (_%E5185551866%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5185351860%_
                                    '([var . parts]))
                             (void)))
                          (_%K5185652096%_
                           (lambda (_%parts51870%_ _%var51872%_)
                             (let ((_%$e51874%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51872%_))))
                               (if _%$e51874%_
                                   ((lambda (_%te51878%_)
                                      (let _%loop51881%_ ((_%parts51884%_
                                                           _%parts51870%_)
                                                          (_%type51886%_
                                                           (##direct-structure-ref
                                                            _%te51878%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51887%_
                                                           _%var51872%_)
                                                          (_%checked-mutator?51888%_
                                                           (##direct-structure-ref
                                                            _%te51878%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51889%_
                                                           '#f))
                                        (let* ((_%parts5189051897%_
                                                _%parts51884%_)
                                               (_%E5189251903%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5189051897%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5189352078%_
                                                (lambda (_%rest51907%_
                                                         _%part51909%_)
                                                  (if (and (not _%nil-check?51889%_)
                                                           (let ((__tmp82417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51909%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp82417)))
              (let ((_%str51913%_ (symbol->string _%part51909%_)))
                (_%loop51881%_
                 (cons (let ((__tmp82418
                              (substring
                               _%str51913%_
                               '1
                               (string-length _%str51913%_))))
                         (declare (not safe))
                         (##string->symbol __tmp82418))
                       _%rest51907%_)
                 _%type51886%_
                 _%object51887%_
                 _%checked-mutator?51888%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51886%_))
                  (if (null? _%rest51907%_)
                      (let* ((_%g5192051935%_
                              (lambda (_%g5192151931%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5192151931%_)))
                             (_%g5191951992%_
                              (lambda (_%g5192151939%_)
                                (if (gx#stx-pair? _%g5192151939%_)
                                    (let ((_%e5192451942%_
                                           (gx#syntax-e _%g5192151939%_)))
                                      (let ((_%hd5192551946%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5192451942%_)))
                                            (_%tl5192651949%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5192451942%_))))
                                        (if (gx#stx-pair? _%tl5192651949%_)
                                            (let ((_%e5192751952%_
                                                   (gx#syntax-e
                                                    _%tl5192651949%_)))
                                              (let ((_%hd5192851956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5192751952%_)))
                                                    (_%tl5192951959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5192751952%_))))
                                                (if (gx#stx-null?
                                                     _%tl5192951959%_)
                                                    ((lambda (_%L51962%_
                                                              _%L51964%_)
                                                       (if _%nil-check?51889%_
                                                           (cons _%L51962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51964%_ '()))
                               (cons _%L51837%_ '())))
                   (cons _%L51962%_ (cons _%L51964%_ (cons _%L51837%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5192851956%_
                                                     _%hd5192551946%_)
                                                    (_%g5192051935%_
                                                     _%g5192151939%_))))
                                            (_%g5192051935%_
                                             _%g5192151939%_))))
                                    (_%g5192051935%_ _%g5192151939%_)))))
                        (_%g5191951992%_
                         (list _%object51887%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51712%_
                                _%type51886%_
                                _%part51909%_
                                (if _%checked-mutator?51888%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51886%_
                                     _%part51909%_)
                                    '#f)))))
                      (let ((_%$e51996%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51886%_
                              _%part51909%_)))
                        (if _%$e51996%_
                            ((lambda (_%type52000%_)
                               (let* ((_%type52003%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51712%_
                                          _%type52000%_)))
                                      (_%g5200652021%_
                                       (lambda (_%g5200752017%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5200752017%_)))
                                      (_%g5200552068%_
                                       (lambda (_%g5200752025%_)
                                         (if (gx#stx-pair? _%g5200752025%_)
                                             (let ((_%e5201052028%_
                                                    (gx#syntax-e
                                                     _%g5200752025%_)))
                                               (let ((_%hd5201152032%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5201052028%_)))
                                                     (_%tl5201252035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5201052028%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5201252035%_)
                                                     (let ((_%e5201352038%_
                                                            (gx#syntax-e
                                                             _%tl5201252035%_)))
                                                       (let ((_%hd5201452042%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5201352038%_)))
                     (_%tl5201552045%_
                      (let () (declare (not safe)) (##cdr _%e5201352038%_))))
                 (if (gx#stx-null? _%tl5201552045%_)
                     ((lambda (_%L52048%_ _%L52050%_)
                        (_%loop51881%_
                         _%rest51907%_
                         _%type52003%_
                         (cons _%L52048%_ (cons _%L52050%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type52003%_
                          _%part51909%_)
                         '#f))
                      _%hd5201452042%_
                      _%hd5201152032%_)
                     (_%g5200652021%_ _%g5200752025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5200652021%_
                                                      _%g5200752025%_))))
                                             (_%g5200652021%_
                                              _%g5200752025%_)))))
                                 (_%g5200552068%_
                                  (list (if _%nil-check?51889%_
                                            (cons 'check-nil!
                                                  (cons _%object51887%_ '()))
                                            _%object51887%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51712%_
                                         _%type52003%_
                                         _%part51909%_)))))
                             _%$e51996%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51712%_
                             _%L51839%_
                             _%part51909%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51886%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51712%_
                       _%type51886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5189051897%_))
                                              (let ((_%hd5189452082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5189051897%_)))
                                                    (_%tl5189552085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5189051897%_))))
                                                (let* ((_%part52088%_
                                                        _%hd5189452082%_)
                                                       (_%rest52091%_
                                                        _%tl5189552085%_))
                                                  (_%K5189352078%_
                                                   _%rest52091%_
                                                   _%part52088%_)))
                                              (_%E5189251903%_)))))
                                    _%$e51874%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51712%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5185351860%_))
                         (let ((_%hd5185752100%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5185351860%_)))
                               (_%tl5185852103%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5185351860%_))))
                           (let* ((_%var52106%_ _%hd5185752100%_)
                                  (_%parts52109%_ _%tl5185852103%_))
                             (_%K5185652096%_ _%parts52109%_ _%var52106%_)))
                         (_%E5185551866%_)))))
                (_%__kont7815678157%_
                 (lambda (_%L51782%_ _%L51784%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51712%_)))))
            (let ((_%__match7817878179%_
                   (lambda (_%e5172051807%_
                            _%hd5172151811%_
                            _%tl5172251814%_
                            _%e5172351817%_
                            _%hd5172451821%_
                            _%tl5172551824%_
                            _%e5172651827%_
                            _%hd5172751831%_
                            _%tl5172851834%_)
                     (let ((_%L51837%_ _%hd5172751831%_)
                           (_%L51839%_ _%hd5172451821%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51839%_)
                           (_%__kont7815478155%_ _%L51837%_ _%L51839%_)
                           (_%__kont7815678157%_
                            _%hd5172751831%_
                            _%hd5172451821%_))))))
              (if (gx#stx-pair? _%__stx7815178152%_)
                  (let ((_%e5172051807%_ (gx#syntax-e _%__stx7815178152%_)))
                    (let ((_%tl5172251814%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5172051807%_)))
                          (_%hd5172151811%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5172051807%_))))
                      (if (gx#stx-pair? _%tl5172251814%_)
                          (let ((_%e5172351817%_
                                 (gx#syntax-e _%tl5172251814%_)))
                            (let ((_%tl5172551824%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5172351817%_)))
                                  (_%hd5172451821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5172351817%_))))
                              (if (gx#stx-pair? _%tl5172551824%_)
                                  (let ((_%e5172651827%_
                                         (gx#syntax-e _%tl5172551824%_)))
                                    (let ((_%tl5172851834%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5172651827%_)))
                                          (_%hd5172751831%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5172651827%_))))
                                      (if (gx#stx-null? _%tl5172851834%_)
                                          (_%__match7817878179%_
                                           _%e5172051807%_
                                           _%hd5172151811%_
                                           _%tl5172251814%_
                                           _%e5172351817%_
                                           _%hd5172451821%_
                                           _%tl5172551824%_
                                           _%e5172651827%_
                                           _%hd5172751831%_
                                           _%tl5172851834%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5171651745%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5171651745%_)))))
                          (let () (declare (not safe)) (_%g5171651745%_)))))
                  (let () (declare (not safe)) (_%g5171651745%_))))))))))
