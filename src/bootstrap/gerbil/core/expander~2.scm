(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g1926_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_%stx367%_)
        (let* ((_%g370394%_
                (lambda (_%g371390%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g371390%_)))
               (_%g369700%_
                (lambda (_%g371398%_)
                  (if (gx#stx-pair? _%g371398%_)
                      (let ((_%e374401%_ (gx#syntax-e _%g371398%_)))
                        (let ((_%hd375405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e374401%_)))
                              (_%tl376408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e374401%_))))
                          (if (gx#stx-pair? _%tl376408%_)
                              (let ((_%e377411%_ (gx#syntax-e _%tl376408%_)))
                                (let ((_%hd378415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e377411%_)))
                                      (_%tl379418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e377411%_))))
                                  (if (gx#stx-pair/null? _%tl379418%_)
                                      (let ((_g1922_ (gx#syntax-split-splice
                                                      _%tl379418%_
                                                      '0)))
                                        (begin
                                          (let ((_g1923_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g1922_)
                                                               (##vector-length
                                                                _g1922_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g1923_ 2)))
                                                (error "Context expects 2 values"
                                                       _g1923_)))
                                          (let ((_%target380421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1922_ 0)))
                                                (_%tl382424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g1922_ 1))))
                                            (if (gx#stx-null? _%tl382424%_)
                                                (letrec ((_%loop383427%_
                                                          (lambda (_%hd381431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses387434%_)
                    (if (gx#stx-pair? _%hd381431%_)
                        (let ((_%e384437%_ (gx#syntax-e _%hd381431%_)))
                          (let ((_%lp-hd385441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e384437%_)))
                                (_%lp-tl386444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e384437%_))))
                            (_%loop383427%_
                             _%lp-tl386444%_
                             (cons _%lp-hd385441%_ _%clauses387434%_))))
                        (let ((_%clauses388447%_ (reverse _%clauses387434%_)))
                          ((lambda (_%L451%_ _%L453%_)
                             (if (gx#identifier-list? _%L453%_)
                                 (let* ((_%body617%_
                                         (gx#stx-map
                                          (lambda (_%clause474%_)
                                            (let* ((_%__stx16591660%_
                                                    _%clause474%_)
                                                   (_%g478505%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx16591660%_))))
                                              (let ((_%__kont16621663%_
                                                     (lambda (_%L590%_
                                                              _%L592%_)
                                                       (cons _%L592%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _%L590%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont16641665%_
                                                     (lambda (_%L542%_
                                                              _%L544%_
                                                              _%L545%_)
                                                       (cons _%L545%_
                                                             (cons _%L544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _%L542%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx16591660%_)
                                                    (let ((_%e482570%_
                                                           (gx#syntax-e
                                                            _%__stx16591660%_)))
                                                      (let ((_%tl484577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e482570%_)))
                    (_%hd483574%_
                     (let () (declare (not safe)) (##car _%e482570%_))))
                (if (gx#stx-pair? _%tl484577%_)
                    (let ((_%e485580%_ (gx#syntax-e _%tl484577%_)))
                      (let ((_%tl487587%_
                             (let () (declare (not safe)) (##cdr _%e485580%_)))
                            (_%hd486584%_
                             (let ()
                               (declare (not safe))
                               (##car _%e485580%_))))
                        (if (gx#stx-null? _%tl487587%_)
                            (_%__kont16621663%_ _%hd486584%_ _%hd483574%_)
                            (if (gx#stx-pair? _%tl487587%_)
                                (let ((_%e497532%_ (gx#syntax-e _%tl487587%_)))
                                  (let ((_%tl499539%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e497532%_)))
                                        (_%hd498536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e497532%_))))
                                    (if (gx#stx-null? _%tl499539%_)
                                        (_%__kont16641665%_
                                         _%hd498536%_
                                         _%hd486584%_
                                         _%hd483574%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g478505%_)))))
                                (let () (declare (not safe)) (_%g478505%_))))))
                    (let () (declare (not safe)) (_%g478505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g478505%_))))))
                                          (foldr (lambda (_%g608611%_
                                                          _%g609614%_)
                                                   (cons _%g608611%_
                                                         _%g609614%_))
                                                 '()
                                                 _%L451%_)))
                                        (_%g620637%_
                                         (lambda (_%g621633%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g621633%_)))
                                        (_%g619696%_
                                         (lambda (_%g621641%_)
                                           (if (gx#stx-pair/null? _%g621641%_)
                                               (let ((_g1924_ (gx#syntax-split-splice
                                                               _%g621641%_
                                                               '0)))
                                                 (begin
                                                   (let ((_g1925_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g1924_)
                                (##vector-length _g1924_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g1925_ 2)))
                 (error "Context expects 2 values" _g1925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target623644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1924_
                                                             0)))
                                                         (_%tl625647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g1924_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl625647%_)
                                                         (letrec ((_%loop626650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd624654%_ _%clause630657%_)
                             (if (gx#stx-pair? _%hd624654%_)
                                 (let ((_%e627660%_
                                        (gx#syntax-e _%hd624654%_)))
                                   (let ((_%lp-hd628664%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e627660%_)))
                                         (_%lp-tl629667%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e627660%_))))
                                     (_%loop626650%_
                                      _%lp-tl629667%_
                                      (cons _%lp-hd628664%_
                                            _%clause630657%_))))
                                 (let ((_%clause631670%_
                                        (reverse _%clause630657%_)))
                                   ((lambda (_%L674%_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _%L453%_
                                  (foldr (lambda (_%g687690%_ _%g688693%_)
                                           (cons _%g687690%_ _%g688693%_))
                                         '()
                                         _%L674%_))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%clause631670%_))))))
                   (_%loop626650%_ _%target623644%_ '()))
                 (_%g620637%_ _%g621641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g620637%_ _%g621641%_)))))
                                   (_%g619696%_ _%body617%_))
                                 (_%g370394%_ _%g371398%_)))
                           _%clauses388447%_
                           _%hd378415%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop383427%_
                                                   _%target380421%_
                                                   '()))
                                                (_%g370394%_ _%g371398%_)))))
                                      (_%g370394%_ _%g371398%_))))
                              (_%g370394%_ _%g371398%_))))
                      (_%g370394%_ _%g371398%_)))))
          (_%g369700%_ _%stx367%_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_%stx706%_)
        (let* ((_%__stx17031704%_ _%stx706%_)
               (_%g711796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx17031704%_))))
          (let ((_%__kont17061707%_
                 (lambda (_%L1136%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g11521155%_ _%g11531158%_)
                                        (cons _%g11521155%_ _%g11531158%_))
                                      '()
                                      _%L1136%_)))))
                (_%__kont17101711%_
                 (lambda (_%L1044%_ _%L1046%_ _%L1047%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _%L1046%_
                               (cons '()
                                     (cons (cons _%L1047%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g10701073%_ _%g10711076%_)
                                    (cons _%g10701073%_ _%g10711076%_))
                                  '()
                                  _%L1044%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (_%__kont17141715%_
                 (lambda (_%L907%_ _%L909%_ _%L910%_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (foldr (lambda (_%g936939%_ _%g937942%_)
                                              (cons _%g936939%_ _%g937942%_))
                                            '()
                                            _%L909%_))
                               (cons '()
                                     (cons (cons (foldr (lambda (_%g934945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g935948%_)
                  (cons _%g934945%_ _%g935948%_))
                '()
                _%L910%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (foldr (lambda (_%g932951%_ _%g933954%_)
                                    (cons _%g932951%_ _%g933954%_))
                                  '()
                                  _%L907%_)))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((_%__match18041805%_
                    (lambda (_%e759803%_
                             _%hd760807%_
                             _%tl761810%_
                             _%e762813%_
                             _%hd763817%_
                             _%tl764820%_
                             _%__splice17161717%_
                             _%target765823%_
                             _%tl767826%_)
                      (letrec ((_%loop768829%_
                                (lambda (_%hd766833%_
                                         _%e772836%_
                                         _%pat773838%_)
                                  (if (gx#stx-pair? _%hd766833%_)
                                      (let ((_%e769841%_
                                             (gx#syntax-e _%hd766833%_)))
                                        (let ((_%lp-tl771848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e769841%_)))
                                              (_%lp-hd770845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e769841%_))))
                                          (if (gx#stx-pair? _%lp-hd770845%_)
                                              (let ((_%e785851%_
                                                     (gx#syntax-e
                                                      _%lp-hd770845%_)))
                                                (let ((_%tl787858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e785851%_)))
                                                      (_%hd786855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e785851%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl787858%_)
                                                      (let ((_%e788861%_
                                                             (gx#syntax-e
                                                              _%tl787858%_)))
                                                        (let ((_%tl790868%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e788861%_)))
                      (_%hd789865%_
                       (let () (declare (not safe)) (##car _%e788861%_))))
                  (if (gx#stx-null? _%tl790868%_)
                      (_%loop768829%_
                       _%lp-tl771848%_
                       (cons _%hd789865%_ _%e772836%_)
                       (cons _%hd786855%_ _%pat773838%_))
                      (let () (declare (not safe)) (_%g711796%_)))))
              (let () (declare (not safe)) (_%g711796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g711796%_)))))
                                      (let ((_%pat775874%_
                                             (reverse _%pat773838%_))
                                            (_%e774871%_
                                             (reverse _%e772836%_)))
                                        (if (gx#stx-pair/null? _%tl764820%_)
                                            (let ((_%__splice17181719%_
                                                   (gx#syntax-split-splice
                                                    _%tl764820%_
                                                    '0)))
                                              (let ((_%tl778880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17181719%_
                                                        '1)))
                                                    (_%target776877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice17181719%_
                                                        '0))))
                                                (if (gx#stx-null? _%tl778880%_)
                                                    (letrec ((_%loop779883%_
                                                              (lambda (_%hd777887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body783890%_)
                        (if (gx#stx-pair? _%hd777887%_)
                            (let ((_%e780893%_ (gx#syntax-e _%hd777887%_)))
                              (let ((_%lp-tl782900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e780893%_)))
                                    (_%lp-hd781897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e780893%_))))
                                (_%loop779883%_
                                 _%lp-tl782900%_
                                 (cons _%lp-hd781897%_ _%body783890%_))))
                            (let ((_%body784903%_ (reverse _%body783890%_)))
                              (_%__kont17141715%_
                               _%body784903%_
                               _%e774871%_
                               _%pat775874%_))))))
              (_%loop779883%_ _%target776877%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g711796%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g711796%_))))))))
                        (_%loop768829%_ _%target765823%_ '() '()))))
                   (_%__match17841785%_
                    (lambda (_%e732964%_
                             _%hd733968%_
                             _%tl734971%_
                             _%e735974%_
                             _%hd736978%_
                             _%tl737981%_
                             _%e738984%_
                             _%hd739988%_
                             _%tl740991%_
                             _%e741994%_
                             _%hd742998%_
                             _%tl7431001%_
                             _%e7441004%_
                             _%hd7451008%_
                             _%tl7461011%_
                             _%__splice17121713%_
                             _%target7471014%_
                             _%tl7491017%_)
                      (letrec ((_%loop7501020%_
                                (lambda (_%hd7481024%_ _%body7541027%_)
                                  (if (gx#stx-pair? _%hd7481024%_)
                                      (let ((_%e7511030%_
                                             (gx#syntax-e _%hd7481024%_)))
                                        (let ((_%lp-tl7531037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7511030%_)))
                                              (_%lp-hd7521034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7511030%_))))
                                          (_%loop7501020%_
                                           _%lp-tl7531037%_
                                           (cons _%lp-hd7521034%_
                                                 _%body7541027%_))))
                                      (let ((_%body7551040%_
                                             (reverse _%body7541027%_)))
                                        (_%__kont17101711%_
                                         _%body7551040%_
                                         _%hd7451008%_
                                         _%hd742998%_))))))
                        (_%loop7501020%_ _%target7471014%_ '()))))
                   (_%__match17421743%_
                    (lambda (_%e7141086%_
                             _%hd7151090%_
                             _%tl7161093%_
                             _%e7171096%_
                             _%hd7181100%_
                             _%tl7191103%_
                             _%__splice17081709%_
                             _%target7201106%_
                             _%tl7221109%_)
                      (letrec ((_%loop7231112%_
                                (lambda (_%hd7211116%_ _%body7271119%_)
                                  (if (gx#stx-pair? _%hd7211116%_)
                                      (let ((_%e7241122%_
                                             (gx#syntax-e _%hd7211116%_)))
                                        (let ((_%lp-tl7261129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7241122%_)))
                                              (_%lp-hd7251126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7241122%_))))
                                          (_%loop7231112%_
                                           _%lp-tl7261129%_
                                           (cons _%lp-hd7251126%_
                                                 _%body7271119%_))))
                                      (let ((_%body7281132%_
                                             (reverse _%body7271119%_)))
                                        (_%__kont17061707%_
                                         _%body7281132%_))))))
                        (_%loop7231112%_ _%target7201106%_ '())))))
              (if (gx#stx-pair? _%__stx17031704%_)
                  (let ((_%e7141086%_ (gx#syntax-e _%__stx17031704%_)))
                    (let ((_%tl7161093%_
                           (let () (declare (not safe)) (##cdr _%e7141086%_)))
                          (_%hd7151090%_
                           (let () (declare (not safe)) (##car _%e7141086%_))))
                      (if (gx#stx-pair? _%tl7161093%_)
                          (let ((_%e7171096%_ (gx#syntax-e _%tl7161093%_)))
                            (let ((_%tl7191103%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7171096%_)))
                                  (_%hd7181100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7171096%_))))
                              (if (gx#stx-null? _%hd7181100%_)
                                  (if (gx#stx-pair/null? _%tl7191103%_)
                                      (let ((_%__splice17081709%_
                                             (gx#syntax-split-splice
                                              _%tl7191103%_
                                              '0)))
                                        (let ((_%tl7221109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17081709%_
                                                  '1)))
                                              (_%target7201106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice17081709%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7221109%_)
                                              (_%__match17421743%_
                                               _%e7141086%_
                                               _%hd7151090%_
                                               _%tl7161093%_
                                               _%e7171096%_
                                               _%hd7181100%_
                                               _%tl7191103%_
                                               _%__splice17081709%_
                                               _%target7201106%_
                                               _%tl7221109%_)
                                              (if (gx#stx-pair/null?
                                                   _%hd7181100%_)
                                                  (let ((_%__splice17161717%_
                                                         (gx#syntax-split-splice
                                                          _%hd7181100%_
                                                          '0)))
                                                    (let ((_%tl767826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17161717%_
                                                              '1)))
                                                          (_%target765823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17161717%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl767826%_)
                                                          (_%__match18041805%_
                                                           _%e7141086%_
                                                           _%hd7151090%_
                                                           _%tl7161093%_
                                                           _%e7171096%_
                                                           _%hd7181100%_
                                                           _%tl7191103%_
                                                           _%__splice17161717%_
                                                           _%target765823%_
                                                           _%tl767826%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g711796%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g711796%_))))))
                                      (if (gx#stx-pair/null? _%hd7181100%_)
                                          (let ((_%__splice17161717%_
                                                 (gx#syntax-split-splice
                                                  _%hd7181100%_
                                                  '0)))
                                            (let ((_%tl767826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '1)))
                                                  (_%target765823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl767826%_)
                                                  (_%__match18041805%_
                                                   _%e7141086%_
                                                   _%hd7151090%_
                                                   _%tl7161093%_
                                                   _%e7171096%_
                                                   _%hd7181100%_
                                                   _%tl7191103%_
                                                   _%__splice17161717%_
                                                   _%target765823%_
                                                   _%tl767826%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g711796%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g711796%_))))
                                  (if (gx#stx-pair? _%hd7181100%_)
                                      (let ((_%e738984%_
                                             (gx#syntax-e _%hd7181100%_)))
                                        (let ((_%tl740991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e738984%_)))
                                              (_%hd739988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e738984%_))))
                                          (if (gx#stx-pair? _%hd739988%_)
                                              (let ((_%e741994%_
                                                     (gx#syntax-e
                                                      _%hd739988%_)))
                                                (let ((_%tl7431001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e741994%_)))
                                                      (_%hd742998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e741994%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl7431001%_)
                                                      (let ((_%e7441004%_
                                                             (gx#syntax-e
                                                              _%tl7431001%_)))
                                                        (let ((_%tl7461011%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7441004%_)))
                      (_%hd7451008%_
                       (let () (declare (not safe)) (##car _%e7441004%_))))
                  (if (gx#stx-null? _%tl7461011%_)
                      (if (gx#stx-null? _%tl740991%_)
                          (if (gx#stx-pair/null? _%tl7191103%_)
                              (let ((_%__splice17121713%_
                                     (gx#syntax-split-splice
                                      _%tl7191103%_
                                      '0)))
                                (let ((_%tl7491017%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17121713%_
                                          '1)))
                                      (_%target7471014%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17121713%_
                                          '0))))
                                  (if (gx#stx-null? _%tl7491017%_)
                                      (_%__match17841785%_
                                       _%e7141086%_
                                       _%hd7151090%_
                                       _%tl7161093%_
                                       _%e7171096%_
                                       _%hd7181100%_
                                       _%tl7191103%_
                                       _%e738984%_
                                       _%hd739988%_
                                       _%tl740991%_
                                       _%e741994%_
                                       _%hd742998%_
                                       _%tl7431001%_
                                       _%e7441004%_
                                       _%hd7451008%_
                                       _%tl7461011%_
                                       _%__splice17121713%_
                                       _%target7471014%_
                                       _%tl7491017%_)
                                      (if (gx#stx-pair/null? _%hd7181100%_)
                                          (let ((_%__splice17161717%_
                                                 (gx#syntax-split-splice
                                                  _%hd7181100%_
                                                  '0)))
                                            (let ((_%tl767826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '1)))
                                                  (_%target765823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl767826%_)
                                                  (_%__match18041805%_
                                                   _%e7141086%_
                                                   _%hd7151090%_
                                                   _%tl7161093%_
                                                   _%e7171096%_
                                                   _%hd7181100%_
                                                   _%tl7191103%_
                                                   _%__splice17161717%_
                                                   _%target765823%_
                                                   _%tl767826%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g711796%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g711796%_))))))
                              (if (gx#stx-pair/null? _%hd7181100%_)
                                  (let ((_%__splice17161717%_
                                         (gx#syntax-split-splice
                                          _%hd7181100%_
                                          '0)))
                                    (let ((_%tl767826%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17161717%_
                                              '1)))
                                          (_%target765823%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice17161717%_
                                              '0))))
                                      (if (gx#stx-null? _%tl767826%_)
                                          (_%__match18041805%_
                                           _%e7141086%_
                                           _%hd7151090%_
                                           _%tl7161093%_
                                           _%e7171096%_
                                           _%hd7181100%_
                                           _%tl7191103%_
                                           _%__splice17161717%_
                                           _%target765823%_
                                           _%tl767826%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g711796%_)))))
                                  (let () (declare (not safe)) (_%g711796%_))))
                          (if (gx#stx-pair/null? _%hd7181100%_)
                              (let ((_%__splice17161717%_
                                     (gx#syntax-split-splice
                                      _%hd7181100%_
                                      '0)))
                                (let ((_%tl767826%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17161717%_
                                          '1)))
                                      (_%target765823%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice17161717%_
                                          '0))))
                                  (if (gx#stx-null? _%tl767826%_)
                                      (_%__match18041805%_
                                       _%e7141086%_
                                       _%hd7151090%_
                                       _%tl7161093%_
                                       _%e7171096%_
                                       _%hd7181100%_
                                       _%tl7191103%_
                                       _%__splice17161717%_
                                       _%target765823%_
                                       _%tl767826%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g711796%_)))))
                              (let () (declare (not safe)) (_%g711796%_))))
                      (if (gx#stx-pair/null? _%hd7181100%_)
                          (let ((_%__splice17161717%_
                                 (gx#syntax-split-splice _%hd7181100%_ '0)))
                            (let ((_%tl767826%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17161717%_ '1)))
                                  (_%target765823%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice17161717%_ '0))))
                              (if (gx#stx-null? _%tl767826%_)
                                  (_%__match18041805%_
                                   _%e7141086%_
                                   _%hd7151090%_
                                   _%tl7161093%_
                                   _%e7171096%_
                                   _%hd7181100%_
                                   _%tl7191103%_
                                   _%__splice17161717%_
                                   _%target765823%_
                                   _%tl767826%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g711796%_)))))
                          (let () (declare (not safe)) (_%g711796%_))))))
              (if (gx#stx-pair/null? _%hd7181100%_)
                  (let ((_%__splice17161717%_
                         (gx#syntax-split-splice _%hd7181100%_ '0)))
                    (let ((_%tl767826%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17161717%_ '1)))
                          (_%target765823%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice17161717%_ '0))))
                      (if (gx#stx-null? _%tl767826%_)
                          (_%__match18041805%_
                           _%e7141086%_
                           _%hd7151090%_
                           _%tl7161093%_
                           _%e7171096%_
                           _%hd7181100%_
                           _%tl7191103%_
                           _%__splice17161717%_
                           _%target765823%_
                           _%tl767826%_)
                          (let () (declare (not safe)) (_%g711796%_)))))
                  (let () (declare (not safe)) (_%g711796%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%hd7181100%_)
                                                  (let ((_%__splice17161717%_
                                                         (gx#syntax-split-splice
                                                          _%hd7181100%_
                                                          '0)))
                                                    (let ((_%tl767826%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17161717%_
                                                              '1)))
                                                          (_%target765823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice17161717%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl767826%_)
                                                          (_%__match18041805%_
                                                           _%e7141086%_
                                                           _%hd7151090%_
                                                           _%tl7161093%_
                                                           _%e7171096%_
                                                           _%hd7181100%_
                                                           _%tl7191103%_
                                                           _%__splice17161717%_
                                                           _%target765823%_
                                                           _%tl767826%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g711796%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g711796%_))))))
                                      (if (gx#stx-pair/null? _%hd7181100%_)
                                          (let ((_%__splice17161717%_
                                                 (gx#syntax-split-splice
                                                  _%hd7181100%_
                                                  '0)))
                                            (let ((_%tl767826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '1)))
                                                  (_%target765823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice17161717%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl767826%_)
                                                  (_%__match18041805%_
                                                   _%e7141086%_
                                                   _%hd7151090%_
                                                   _%tl7161093%_
                                                   _%e7171096%_
                                                   _%hd7181100%_
                                                   _%tl7191103%_
                                                   _%__splice17161717%_
                                                   _%target765823%_
                                                   _%tl767826%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g711796%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g711796%_)))))))
                          (let () (declare (not safe)) (_%g711796%_)))))
                  (let () (declare (not safe)) (_%g711796%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_%stx1169%_)
        (let* ((_%__stx18071808%_ _%stx1169%_)
               (_%g11741251%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx18071808%_))))
          (let ((_%__kont18101811%_
                 (lambda (_%L1547%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (foldr (lambda (_%g15631566%_ _%g15641569%_)
                                        (cons _%g15631566%_ _%g15641569%_))
                                      '()
                                      _%L1547%_)))))
                (_%__kont18141815%_
                 (lambda (_%L1449%_ _%L1451%_ _%L1452%_ _%L1453%_ _%L1454%_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _%L1453%_ (cons _%L1452%_ '())) '())
                               (cons (cons _%L1454%_
                                           (cons _%L1451%_
                                                 (foldr (lambda (_%g14811484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g14821487%_)
                  (cons _%g14811484%_ _%g14821487%_))
                '()
                _%L1449%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont18181819%_
                 (lambda (_%L1318%_ _%L1320%_ _%L1321%_ _%L1322%_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _%L1321%_ '())
                               (cons (cons _%L1322%_
                                           (cons _%L1320%_
                                                 (foldr (lambda (_%g13431346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g13441349%_)
                  (cons _%g13431346%_ _%g13441349%_))
                '()
                _%L1318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match19201921%_
                    (lambda (_%e12281258%_
                             _%hd12291262%_
                             _%tl12301265%_
                             _%e12311268%_
                             _%hd12321272%_
                             _%tl12331275%_
                             _%e12341278%_
                             _%hd12351282%_
                             _%tl12361285%_
                             _%__splice18201821%_
                             _%target12371288%_
                             _%tl12391291%_)
                      (letrec ((_%loop12401294%_
                                (lambda (_%hd12381298%_ _%body12441301%_)
                                  (if (gx#stx-pair? _%hd12381298%_)
                                      (let ((_%e12411304%_
                                             (gx#syntax-e _%hd12381298%_)))
                                        (let ((_%lp-tl12431311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12411304%_)))
                                              (_%lp-hd12421308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12411304%_))))
                                          (_%loop12401294%_
                                           _%lp-tl12431311%_
                                           (cons _%lp-hd12421308%_
                                                 _%body12441301%_))))
                                      (let ((_%body12451314%_
                                             (reverse _%body12441301%_)))
                                        (_%__kont18181819%_
                                         _%body12451314%_
                                         _%tl12361285%_
                                         _%hd12351282%_
                                         _%hd12291262%_))))))
                        (_%loop12401294%_ _%target12371288%_ '()))))
                   (_%__match18941895%_
                    (lambda (_%e11971359%_
                             _%hd11981363%_
                             _%tl11991366%_
                             _%e12001369%_
                             _%hd12011373%_
                             _%tl12021376%_
                             _%e12031379%_
                             _%hd12041383%_
                             _%tl12051386%_
                             _%e12061389%_
                             _%hd12071393%_
                             _%tl12081396%_
                             _%e12091399%_
                             _%hd12101403%_
                             _%tl12111406%_
                             _%e12121409%_
                             _%hd12131413%_
                             _%tl12141416%_
                             _%__splice18161817%_
                             _%target12151419%_
                             _%tl12171422%_)
                      (letrec ((_%loop12181425%_
                                (lambda (_%hd12161429%_ _%body12221432%_)
                                  (if (gx#stx-pair? _%hd12161429%_)
                                      (let ((_%e12191435%_
                                             (gx#syntax-e _%hd12161429%_)))
                                        (let ((_%lp-tl12211442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12191435%_)))
                                              (_%lp-hd12201439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12191435%_))))
                                          (_%loop12181425%_
                                           _%lp-tl12211442%_
                                           (cons _%lp-hd12201439%_
                                                 _%body12221432%_))))
                                      (let ((_%body12231445%_
                                             (reverse _%body12221432%_)))
                                        (_%__kont18141815%_
                                         _%body12231445%_
                                         _%tl12051386%_
                                         _%hd12131413%_
                                         _%tl12111406%_
                                         _%hd11981363%_))))))
                        (_%loop12181425%_ _%target12151419%_ '()))))
                   (_%__match18441845%_
                    (lambda (_%e11771497%_
                             _%hd11781501%_
                             _%tl11791504%_
                             _%e11801507%_
                             _%hd11811511%_
                             _%tl11821514%_
                             _%__splice18121813%_
                             _%target11831517%_
                             _%tl11851520%_)
                      (letrec ((_%loop11861523%_
                                (lambda (_%hd11841527%_ _%body11901530%_)
                                  (if (gx#stx-pair? _%hd11841527%_)
                                      (let ((_%e11871533%_
                                             (gx#syntax-e _%hd11841527%_)))
                                        (let ((_%lp-tl11891540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e11871533%_)))
                                              (_%lp-hd11881537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e11871533%_))))
                                          (_%loop11861523%_
                                           _%lp-tl11891540%_
                                           (cons _%lp-hd11881537%_
                                                 _%body11901530%_))))
                                      (let ((_%body11911543%_
                                             (reverse _%body11901530%_)))
                                        (_%__kont18101811%_
                                         _%body11911543%_))))))
                        (_%loop11861523%_ _%target11831517%_ '())))))
              (if (gx#stx-pair? _%__stx18071808%_)
                  (let ((_%e11771497%_ (gx#syntax-e _%__stx18071808%_)))
                    (let ((_%tl11791504%_
                           (let () (declare (not safe)) (##cdr _%e11771497%_)))
                          (_%hd11781501%_
                           (let ()
                             (declare (not safe))
                             (##car _%e11771497%_))))
                      (if (gx#stx-pair? _%tl11791504%_)
                          (let ((_%e11801507%_ (gx#syntax-e _%tl11791504%_)))
                            (let ((_%tl11821514%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e11801507%_)))
                                  (_%hd11811511%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e11801507%_))))
                              (if (gx#stx-null? _%hd11811511%_)
                                  (if (gx#stx-pair/null? _%tl11821514%_)
                                      (let ((_%__splice18121813%_
                                             (gx#syntax-split-splice
                                              _%tl11821514%_
                                              '0)))
                                        (let ((_%tl11851520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18121813%_
                                                  '1)))
                                              (_%target11831517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice18121813%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl11851520%_)
                                              (_%__match18441845%_
                                               _%e11771497%_
                                               _%hd11781501%_
                                               _%tl11791504%_
                                               _%e11801507%_
                                               _%hd11811511%_
                                               _%tl11821514%_
                                               _%__splice18121813%_
                                               _%target11831517%_
                                               _%tl11851520%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g11741251%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11741251%_)))
                                  (if (gx#stx-pair? _%hd11811511%_)
                                      (let ((_%e12031379%_
                                             (gx#syntax-e _%hd11811511%_)))
                                        (let ((_%tl12051386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e12031379%_)))
                                              (_%hd12041383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e12031379%_))))
                                          (if (gx#stx-pair? _%hd12041383%_)
                                              (let ((_%e12061389%_
                                                     (gx#syntax-e
                                                      _%hd12041383%_)))
                                                (let ((_%tl12081396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e12061389%_)))
                                                      (_%hd12071393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e12061389%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd12071393%_)
                                                      (let ((_%e12091399%_
                                                             (gx#syntax-e
                                                              _%hd12071393%_)))
                                                        (let ((_%tl12111406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e12091399%_)))
                      (_%hd12101403%_
                       (let () (declare (not safe)) (##car _%e12091399%_))))
                  (if (gx#identifier? _%hd12101403%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g1926_|
                           _%hd12101403%_)
                          (if (gx#stx-pair? _%tl12081396%_)
                              (let ((_%e12121409%_
                                     (gx#syntax-e _%tl12081396%_)))
                                (let ((_%tl12141416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e12121409%_)))
                                      (_%hd12131413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e12121409%_))))
                                  (if (gx#stx-null? _%tl12141416%_)
                                      (if (gx#stx-pair/null? _%tl11821514%_)
                                          (let ((_%__splice18161817%_
                                                 (gx#syntax-split-splice
                                                  _%tl11821514%_
                                                  '0)))
                                            (let ((_%tl12171422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18161817%_
                                                      '1)))
                                                  (_%target12151419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18161817%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12171422%_)
                                                  (_%__match18941895%_
                                                   _%e11771497%_
                                                   _%hd11781501%_
                                                   _%tl11791504%_
                                                   _%e11801507%_
                                                   _%hd11811511%_
                                                   _%tl11821514%_
                                                   _%e12031379%_
                                                   _%hd12041383%_
                                                   _%tl12051386%_
                                                   _%e12061389%_
                                                   _%hd12071393%_
                                                   _%tl12081396%_
                                                   _%e12091399%_
                                                   _%hd12101403%_
                                                   _%tl12111406%_
                                                   _%e12121409%_
                                                   _%hd12131413%_
                                                   _%tl12141416%_
                                                   _%__splice18161817%_
                                                   _%target12151419%_
                                                   _%tl12171422%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11741251%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11741251%_)))
                                      (if (gx#stx-pair/null? _%tl11821514%_)
                                          (let ((_%__splice18201821%_
                                                 (gx#syntax-split-splice
                                                  _%tl11821514%_
                                                  '0)))
                                            (let ((_%tl12391291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18201821%_
                                                      '1)))
                                                  (_%target12371288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice18201821%_
                                                      '0))))
                                              (if (gx#stx-null? _%tl12391291%_)
                                                  (_%__match19201921%_
                                                   _%e11771497%_
                                                   _%hd11781501%_
                                                   _%tl11791504%_
                                                   _%e11801507%_
                                                   _%hd11811511%_
                                                   _%tl11821514%_
                                                   _%e12031379%_
                                                   _%hd12041383%_
                                                   _%tl12051386%_
                                                   _%__splice18201821%_
                                                   _%target12371288%_
                                                   _%tl12391291%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11741251%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g11741251%_))))))
                              (if (gx#stx-pair/null? _%tl11821514%_)
                                  (let ((_%__splice18201821%_
                                         (gx#syntax-split-splice
                                          _%tl11821514%_
                                          '0)))
                                    (let ((_%tl12391291%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18201821%_
                                              '1)))
                                          (_%target12371288%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice18201821%_
                                              '0))))
                                      (if (gx#stx-null? _%tl12391291%_)
                                          (_%__match19201921%_
                                           _%e11771497%_
                                           _%hd11781501%_
                                           _%tl11791504%_
                                           _%e11801507%_
                                           _%hd11811511%_
                                           _%tl11821514%_
                                           _%e12031379%_
                                           _%hd12041383%_
                                           _%tl12051386%_
                                           _%__splice18201821%_
                                           _%target12371288%_
                                           _%tl12391291%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g11741251%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g11741251%_))))
                          (if (gx#stx-pair/null? _%tl11821514%_)
                              (let ((_%__splice18201821%_
                                     (gx#syntax-split-splice
                                      _%tl11821514%_
                                      '0)))
                                (let ((_%tl12391291%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18201821%_
                                          '1)))
                                      (_%target12371288%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice18201821%_
                                          '0))))
                                  (if (gx#stx-null? _%tl12391291%_)
                                      (_%__match19201921%_
                                       _%e11771497%_
                                       _%hd11781501%_
                                       _%tl11791504%_
                                       _%e11801507%_
                                       _%hd11811511%_
                                       _%tl11821514%_
                                       _%e12031379%_
                                       _%hd12041383%_
                                       _%tl12051386%_
                                       _%__splice18201821%_
                                       _%target12371288%_
                                       _%tl12391291%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g11741251%_)))))
                              (let () (declare (not safe)) (_%g11741251%_))))
                      (if (gx#stx-pair/null? _%tl11821514%_)
                          (let ((_%__splice18201821%_
                                 (gx#syntax-split-splice _%tl11821514%_ '0)))
                            (let ((_%tl12391291%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18201821%_ '1)))
                                  (_%target12371288%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice18201821%_ '0))))
                              (if (gx#stx-null? _%tl12391291%_)
                                  (_%__match19201921%_
                                   _%e11771497%_
                                   _%hd11781501%_
                                   _%tl11791504%_
                                   _%e11801507%_
                                   _%hd11811511%_
                                   _%tl11821514%_
                                   _%e12031379%_
                                   _%hd12041383%_
                                   _%tl12051386%_
                                   _%__splice18201821%_
                                   _%target12371288%_
                                   _%tl12391291%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g11741251%_)))))
                          (let () (declare (not safe)) (_%g11741251%_))))))
              (if (gx#stx-pair/null? _%tl11821514%_)
                  (let ((_%__splice18201821%_
                         (gx#syntax-split-splice _%tl11821514%_ '0)))
                    (let ((_%tl12391291%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18201821%_ '1)))
                          (_%target12371288%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice18201821%_ '0))))
                      (if (gx#stx-null? _%tl12391291%_)
                          (_%__match19201921%_
                           _%e11771497%_
                           _%hd11781501%_
                           _%tl11791504%_
                           _%e11801507%_
                           _%hd11811511%_
                           _%tl11821514%_
                           _%e12031379%_
                           _%hd12041383%_
                           _%tl12051386%_
                           _%__splice18201821%_
                           _%target12371288%_
                           _%tl12391291%_)
                          (let () (declare (not safe)) (_%g11741251%_)))))
                  (let () (declare (not safe)) (_%g11741251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl11821514%_)
                                                  (let ((_%__splice18201821%_
                                                         (gx#syntax-split-splice
                                                          _%tl11821514%_
                                                          '0)))
                                                    (let ((_%tl12391291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18201821%_
                                                              '1)))
                                                          (_%target12371288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice18201821%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl12391291%_)
                                                          (_%__match19201921%_
                                                           _%e11771497%_
                                                           _%hd11781501%_
                                                           _%tl11791504%_
                                                           _%e11801507%_
                                                           _%hd11811511%_
                                                           _%tl11821514%_
                                                           _%e12031379%_
                                                           _%hd12041383%_
                                                           _%tl12051386%_
                                                           _%__splice18201821%_
                                                           _%target12371288%_
                                                           _%tl12391291%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g11741251%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g11741251%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g11741251%_))))))
                          (let () (declare (not safe)) (_%g11741251%_)))))
                  (let () (declare (not safe)) (_%g11741251%_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_%stx1579%_)
        (let* ((_%g15821600%_
                (lambda (_%g15831596%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g15831596%_)))
               (_%g15811655%_
                (lambda (_%g15831604%_)
                  (if (gx#stx-pair? _%g15831604%_)
                      (let ((_%e15861607%_ (gx#syntax-e _%g15831604%_)))
                        (let ((_%hd15871611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e15861607%_)))
                              (_%tl15881614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e15861607%_))))
                          (if (gx#stx-pair? _%tl15881614%_)
                              (let ((_%e15891617%_
                                     (gx#syntax-e _%tl15881614%_)))
                                (let ((_%hd15901621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e15891617%_)))
                                      (_%tl15911624%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e15891617%_))))
                                  (if (gx#stx-pair? _%tl15911624%_)
                                      (let ((_%e15921627%_
                                             (gx#syntax-e _%tl15911624%_)))
                                        (let ((_%hd15931631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e15921627%_)))
                                              (_%tl15941634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e15921627%_))))
                                          (if (gx#stx-null? _%tl15941634%_)
                                              ((lambda (_%L1637%_ _%L1639%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _%L1637%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _%L1639%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd15931631%_
                                               _%hd15901621%_)
                                              (_%g15821600%_ _%g15831604%_))))
                                      (_%g15821600%_ _%g15831604%_))))
                              (_%g15821600%_ _%g15831604%_))))
                      (_%g15821600%_ _%g15831604%_)))))
          (_%g15811655%_ _%stx1579%_))))))
