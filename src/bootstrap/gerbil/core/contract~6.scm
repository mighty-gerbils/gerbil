(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g91837_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91838_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91839_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91842_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91843_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91846_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91847_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91848_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91849_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91853_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91854_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91855_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91856_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g91860_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx49852%_)
        (let* ((_%__stx8584785848%_ _%stx49852%_)
               (_%g4986150070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8584785848%_))))
          (let ((_%__kont8585085851%_
                 (lambda (_%L50976%_
                          _%L50978%_
                          _%L50979%_
                          _%L50980%_
                          _%L50981%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50981%_ (cons _%L50980%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50981%_
                                                       (cons _%L50979%_
                                                             (cons _%L50978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5102451027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5102551030%_)
                  (cons _%g5102451027%_ _%g5102551030%_))
                '()
                _%L50976%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8585485855%_
                 (lambda (_%L50820%_
                          _%L50822%_
                          _%L50823%_
                          _%L50824%_
                          _%L50825%_
                          _%L50826%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L50826%_ (cons _%L50825%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50826%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L50824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L50826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L50823%_ (cons _%L50822%_ '())))
                           (foldr (lambda (_%g5087050873%_ _%g5087150876%_)
                                    (cons _%g5087050873%_ _%g5087150876%_))
                                  '()
                                  _%L50820%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8585885859%_
                 (lambda (_%L50637%_ _%L50639%_ _%L50640%_ _%L50641%_)
                   (let ((_%meta50678%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx49852%_
                             _%L50639%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta50678%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L50641%_
                                           (cons _%L50640%_
                                                 (cons _%L50639%_ '())))
                                     (foldr (lambda (_%g5068250685%_
                                                     _%g5068350688%_)
                                              (cons _%g5068250685%_
                                                    _%g5068350688%_))
                                            '()
                                            _%L50637%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta50678%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L50641%_
                                               (cons _%L50640%_
                                                     (cons _%L50639%_ '())))
                                         (foldr (lambda (_%g5069250695%_
                                                         _%g5069350698%_)
                                                  (cons _%g5069250695%_
                                                        _%g5069350698%_))
                                                '()
                                                _%L50637%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx49852%_
                              _%L50639%_
                              _%meta50678%_))))))
                (_%__kont8586285863%_
                 (lambda (_%L50515%_ _%L50517%_ _%L50518%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L50518%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50517%_ '())))
                               (foldr (lambda (_%g5054150544%_ _%g5054250547%_)
                                        (cons _%g5054150544%_ _%g5054250547%_))
                                      '()
                                      _%L50515%_)))))
                (_%__kont8586685867%_
                 (lambda (_%L50373%_
                          _%L50375%_
                          _%L50376%_
                          _%L50377%_
                          _%L50378%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50378%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50377%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50378%_
                                                       (cons _%L50376%_
                                                             (cons _%L50375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5041950422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5042050425%_)
                  (cons _%g5041950422%_ _%g5042050425%_))
                '()
                _%L50373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8587085871%_
                 (lambda (_%L50231%_ _%L50233%_ _%L50234%_ _%L50235%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50235%_ _%L50234%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L50233%_
                                                 (foldr (lambda (_%g5025750260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5025850263%_)
                  (cons _%g5025750260%_ _%g5025850263%_))
                '()
                _%L50231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8587485875%_
                 (lambda (_%L50127%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5014550148%_ _%g5014650151%_)
                                        (cons _%g5014550148%_ _%g5014650151%_))
                                      '()
                                      _%L50127%_))))))
            (let* ((_%__match8618086181%_
                    (lambda (_%e5005050077%_
                             _%hd5005150081%_
                             _%tl5005250084%_
                             _%e5005350087%_
                             _%hd5005450091%_
                             _%tl5005550094%_
                             _%__splice8587685877%_
                             _%target5005650097%_
                             _%tl5005850100%_)
                      (letrec ((_%loop5005950103%_
                                (lambda (_%hd5005750107%_ _%body5006350110%_)
                                  (if (gx#stx-pair? _%hd5005750107%_)
                                      (let ((_%e5006050113%_
                                             (gx#syntax-e _%hd5005750107%_)))
                                        (let ((_%lp-tl5006250120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5006050113%_)))
                                              (_%lp-hd5006150117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5006050113%_))))
                                          (_%loop5005950103%_
                                           _%lp-tl5006250120%_
                                           (cons _%lp-hd5006150117%_
                                                 _%body5006350110%_))))
                                      (let ((_%body5006450123%_
                                             (reverse _%body5006350110%_)))
                                        (_%__kont8587485875%_
                                         _%body5006450123%_))))))
                        (_%loop5005950103%_ _%target5005650097%_ '()))))
                   (_%__match8615886159%_
                    (lambda (_%e5002850161%_
                             _%hd5002950165%_
                             _%tl5003050168%_
                             _%e5003150171%_
                             _%hd5003250175%_
                             _%tl5003350178%_
                             _%e5003450181%_
                             _%hd5003550185%_
                             _%tl5003650188%_
                             _%e5003750191%_
                             _%hd5003850195%_
                             _%tl5003950198%_
                             _%__splice8587285873%_
                             _%target5004050201%_
                             _%tl5004250204%_)
                      (letrec ((_%loop5004350207%_
                                (lambda (_%hd5004150211%_ _%body5004750214%_)
                                  (if (gx#stx-pair? _%hd5004150211%_)
                                      (let ((_%e5004450217%_
                                             (gx#syntax-e _%hd5004150211%_)))
                                        (let ((_%lp-tl5004650224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5004450217%_)))
                                              (_%lp-hd5004550221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5004450217%_))))
                                          (_%loop5004350207%_
                                           _%lp-tl5004650224%_
                                           (cons _%lp-hd5004550221%_
                                                 _%body5004750214%_))))
                                      (let ((_%body5004850227%_
                                             (reverse _%body5004750214%_)))
                                        (let ((_%L50231%_ _%body5004850227%_)
                                              (_%L50233%_ _%tl5003650188%_)
                                              (_%L50234%_ _%tl5003950198%_)
                                              (_%L50235%_ _%hd5003850195%_))
                                          (if (gx#identifier? _%L50235%_)
                                              (_%__kont8587085871%_
                                               _%L50231%_
                                               _%L50233%_
                                               _%L50234%_
                                               _%L50235%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_)))))))))
                        (_%loop5004350207%_ _%target5004050201%_ '()))))
                   (_%__match8614486145%_
                    (lambda (_%e5002850161%_
                             _%hd5002950165%_
                             _%tl5003050168%_
                             _%e5003150171%_
                             _%hd5003250175%_
                             _%tl5003350178%_
                             _%e5003450181%_
                             _%hd5003550185%_
                             _%tl5003650188%_)
                      (if (gx#stx-pair? _%hd5003550185%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd5003550185%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (if (gx#stx-pair/null? _%tl5003350178%_)
                                  (let ((_%__splice8587285873%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5003350178%_
                                          '0)))
                                    (let ((_%tl5004250204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '1)))
                                          (_%target5004050201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5004250204%_)
                                          (_%__match8615886159%_
                                           _%e5002850161%_
                                           _%hd5002950165%_
                                           _%tl5003050168%_
                                           _%e5003150171%_
                                           _%hd5003250175%_
                                           _%tl5003350178%_
                                           _%e5003450181%_
                                           _%hd5003550185%_
                                           _%tl5003650188%_
                                           _%e5003750191%_
                                           _%hd5003850195%_
                                           _%tl5003950198%_
                                           _%__splice8587285873%_
                                           _%target5004050201%_
                                           _%tl5004250204%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                   (_%__match8612686127%_
                    (lambda (_%e4999450273%_
                             _%hd4999550277%_
                             _%tl4999650280%_
                             _%e4999750283%_
                             _%hd4999850287%_
                             _%tl4999950290%_
                             _%e5000050293%_
                             _%hd5000150297%_
                             _%tl5000250300%_
                             _%e5000350303%_
                             _%hd5000450307%_
                             _%tl5000550310%_
                             _%e5000650313%_
                             _%hd5000750317%_
                             _%tl5000850320%_
                             _%e5000950323%_
                             _%hd5001050327%_
                             _%tl5001150330%_
                             _%e5001250333%_
                             _%hd5001350337%_
                             _%tl5001450340%_
                             _%__splice8586885869%_
                             _%target5001550343%_
                             _%tl5001750346%_)
                      (letrec ((_%loop5001850349%_
                                (lambda (_%hd5001650353%_ _%body5002250356%_)
                                  (if (gx#stx-pair? _%hd5001650353%_)
                                      (let ((_%e5001950359%_
                                             (gx#syntax-e _%hd5001650353%_)))
                                        (let ((_%lp-tl5002150366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5001950359%_)))
                                              (_%lp-hd5002050363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5001950359%_))))
                                          (_%loop5001850349%_
                                           _%lp-tl5002150366%_
                                           (cons _%lp-hd5002050363%_
                                                 _%body5002250356%_))))
                                      (let ((_%body5002350369%_
                                             (reverse _%body5002250356%_)))
                                        (let ((_%L50373%_ _%body5002350369%_)
                                              (_%L50375%_ _%hd5001350337%_)
                                              (_%L50376%_ _%hd5001050327%_)
                                              (_%L50377%_ _%hd5000750317%_)
                                              (_%L50378%_ _%hd5000150297%_))
                                          (if (and (gx#identifier? _%L50378%_)
                                                   (gx#identifier? _%L50375%_)
                                                   (gx#identifier? _%L50376%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50376%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50376%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50376%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50376%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8586685867%_
                                               _%L50373%_
                                               _%L50375%_
                                               _%L50376%_
                                               _%L50377%_
                                               _%L50378%_)
                                              (_%__match8614486145%_
                                               _%e4999450273%_
                                               _%hd4999550277%_
                                               _%tl4999650280%_
                                               _%e4999750283%_
                                               _%hd4999850287%_
                                               _%tl4999950290%_
                                               _%e5000050293%_
                                               _%hd5000150297%_
                                               _%tl5000250300%_))))))))
                        (_%loop5001850349%_ _%target5001550343%_ '()))))
                   (_%__match8607086071%_
                    (lambda (_%e4996550435%_
                             _%hd4996650439%_
                             _%tl4996750442%_
                             _%e4996850445%_
                             _%hd4996950449%_
                             _%tl4997050452%_
                             _%e4997150455%_
                             _%hd4997250459%_
                             _%tl4997350462%_
                             _%e4997450465%_
                             _%hd4997550469%_
                             _%tl4997650472%_
                             _%e4997750475%_
                             _%hd4997850479%_
                             _%tl4997950482%_
                             _%__splice8586485865%_
                             _%target4998050485%_
                             _%tl4998250488%_)
                      (letrec ((_%loop4998350491%_
                                (lambda (_%hd4998150495%_ _%body4998750498%_)
                                  (if (gx#stx-pair? _%hd4998150495%_)
                                      (let ((_%e4998450501%_
                                             (gx#syntax-e _%hd4998150495%_)))
                                        (let ((_%lp-tl4998650508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4998450501%_)))
                                              (_%lp-hd4998550505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4998450501%_))))
                                          (_%loop4998350491%_
                                           _%lp-tl4998650508%_
                                           (cons _%lp-hd4998550505%_
                                                 _%body4998750498%_))))
                                      (let ((_%body4998850511%_
                                             (reverse _%body4998750498%_)))
                                        (let ((_%L50515%_ _%body4998850511%_)
                                              (_%L50517%_ _%hd4997850479%_)
                                              (_%L50518%_ _%hd4997250459%_))
                                          (if (gx#identifier? _%L50518%_)
                                              (_%__kont8586285863%_
                                               _%L50515%_
                                               _%L50517%_
                                               _%L50518%_)
                                              (_%__match8614486145%_
                                               _%e4996550435%_
                                               _%hd4996650439%_
                                               _%tl4996750442%_
                                               _%e4996850445%_
                                               _%hd4996950449%_
                                               _%tl4997050452%_
                                               _%e4997150455%_
                                               _%hd4997250459%_
                                               _%tl4997350462%_))))))))
                        (_%loop4998350491%_ _%target4998050485%_ '()))))
                   (_%__match8605086051%_
                    (lambda (_%e4996550435%_
                             _%hd4996650439%_
                             _%tl4996750442%_
                             _%e4996850445%_
                             _%hd4996950449%_
                             _%tl4997050452%_
                             _%e4997150455%_
                             _%hd4997250459%_
                             _%tl4997350462%_
                             _%e4997450465%_
                             _%hd4997550469%_
                             _%tl4997650472%_)
                      (if (gx#identifier? _%hd4997550469%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g91837_|
                               _%hd4997550469%_)
                              (if (gx#stx-pair? _%tl4997650472%_)
                                  (let ((_%e4997750475%_
                                         (gx#syntax-e _%tl4997650472%_)))
                                    (let ((_%tl4997950482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4997750475%_)))
                                          (_%hd4997850479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4997750475%_))))
                                      (if (gx#stx-null? _%tl4997950482%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4997050452%_)
                                              (let ((_%__splice8586485865%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4997050452%_
                                                      '0)))
                                                (let ((_%tl4998250488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8586485865%_
                                                          '1)))
                                                      (_%target4998050485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8586485865%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4998250488%_)
                                                      (_%__match8607086071%_
                                                       _%e4996550435%_
                                                       _%hd4996650439%_
                                                       _%tl4996750442%_
                                                       _%e4996850445%_
                                                       _%hd4996950449%_
                                                       _%tl4997050452%_
                                                       _%e4997150455%_
                                                       _%hd4997250459%_
                                                       _%tl4997350462%_
                                                       _%e4997450465%_
                                                       _%hd4997550469%_
                                                       _%tl4997650472%_
                                                       _%e4997750475%_
                                                       _%hd4997850479%_
                                                       _%tl4997950482%_
                                                       _%__splice8586485865%_
                                                       _%target4998050485%_
                                                       _%tl4998250488%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4997250459%_)
                                                          (let ((_%e5003750191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4997250459%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4997250459%_)
                                                  (let ((_%e5003750191%_
                                                         (gx#syntax-e
                                                          _%hd4997250459%_)))
                                                    (let ((_%tl5003950198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5003750191%_)))
                                                          (_%hd5003850195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5003750191%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986150070%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))
                                          (if (gx#stx-pair? _%tl4997950482%_)
                                              (let ((_%e5000950323%_
                                                     (gx#syntax-e
                                                      _%tl4997950482%_)))
                                                (let ((_%tl5001150330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5000950323%_)))
                                                      (_%hd5001050327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5000950323%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5001150330%_)
                                                      (let ((_%e5001250333%_
                                                             (gx#syntax-e
                                                              _%tl5001150330%_)))
                                                        (let ((_%tl5001450340%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5001250333%_)))
                      (_%hd5001350337%_
                       (let () (declare (not safe)) (##car _%e5001250333%_))))
                  (if (gx#stx-null? _%tl5001450340%_)
                      (if (gx#stx-pair/null? _%tl4997050452%_)
                          (let ((_%__splice8586885869%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4997050452%_
                                  '0)))
                            (let ((_%tl5001750346%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8586885869%_ '1)))
                                  (_%target5001550343%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8586885869%_
                                      '0))))
                              (if (gx#stx-null? _%tl5001750346%_)
                                  (_%__match8612686127%_
                                   _%e4996550435%_
                                   _%hd4996650439%_
                                   _%tl4996750442%_
                                   _%e4996850445%_
                                   _%hd4996950449%_
                                   _%tl4997050452%_
                                   _%e4997150455%_
                                   _%hd4997250459%_
                                   _%tl4997350462%_
                                   _%e4997450465%_
                                   _%hd4997550469%_
                                   _%tl4997650472%_
                                   _%e4997750475%_
                                   _%hd4997850479%_
                                   _%tl4997950482%_
                                   _%e5000950323%_
                                   _%hd5001050327%_
                                   _%tl5001150330%_
                                   _%e5001250333%_
                                   _%hd5001350337%_
                                   _%tl5001450340%_
                                   _%__splice8586885869%_
                                   _%target5001550343%_
                                   _%tl5001750346%_)
                                  (if (gx#stx-pair? _%hd4997250459%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4997250459%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))
                          (if (gx#stx-pair? _%hd4997250459%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4997250459%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                      (if (gx#stx-pair? _%hd4997250459%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4997250459%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (if (gx#stx-pair/null? _%tl4997050452%_)
                                  (let ((_%__splice8587285873%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4997050452%_
                                          '0)))
                                    (let ((_%tl5004250204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '1)))
                                          (_%target5004050201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5004250204%_)
                                          (_%__match8615886159%_
                                           _%e4996550435%_
                                           _%hd4996650439%_
                                           _%tl4996750442%_
                                           _%e4996850445%_
                                           _%hd4996950449%_
                                           _%tl4997050452%_
                                           _%e4997150455%_
                                           _%hd4997250459%_
                                           _%tl4997350462%_
                                           _%e5003750191%_
                                           _%hd5003850195%_
                                           _%tl5003950198%_
                                           _%__splice8587285873%_
                                           _%target5004050201%_
                                           _%tl5004250204%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_))))))
              (if (gx#stx-pair? _%hd4997250459%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4997250459%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4997050452%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4997050452%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4996550435%_
                                   _%hd4996650439%_
                                   _%tl4996750442%_
                                   _%e4996850445%_
                                   _%hd4996950449%_
                                   _%tl4997050452%_
                                   _%e4997150455%_
                                   _%hd4997250459%_
                                   _%tl4997350462%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4997250459%_)
                                                  (let ((_%e5003750191%_
                                                         (gx#syntax-e
                                                          _%hd4997250459%_)))
                                                    (let ((_%tl5003950198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5003750191%_)))
                                                          (_%hd5003850195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5003750191%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4997050452%_)
                                                          (let ((_%__splice8587285873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4997050452%_ '0)))
                    (let ((_%tl5004250204%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '1)))
                          (_%target5004050201%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '0))))
                      (if (gx#stx-null? _%tl5004250204%_)
                          (_%__match8615886159%_
                           _%e4996550435%_
                           _%hd4996650439%_
                           _%tl4996750442%_
                           _%e4996850445%_
                           _%hd4996950449%_
                           _%tl4997050452%_
                           _%e4997150455%_
                           _%hd4997250459%_
                           _%tl4997350462%_
                           _%e5003750191%_
                           _%hd5003850195%_
                           _%tl5003950198%_
                           _%__splice8587285873%_
                           _%target5004050201%_
                           _%tl5004250204%_)
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))))
                                  (if (gx#stx-pair? _%hd4997250459%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4997250459%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4997050452%_)
                                              (let ((_%__splice8587285873%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4997050452%_
                                                      '0)))
                                                (let ((_%tl5004250204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '1)))
                                                      (_%target5004050201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5004250204%_)
                                                      (_%__match8615886159%_
                                                       _%e4996550435%_
                                                       _%hd4996650439%_
                                                       _%tl4996750442%_
                                                       _%e4996850445%_
                                                       _%hd4996950449%_
                                                       _%tl4997050452%_
                                                       _%e4997150455%_
                                                       _%hd4997250459%_
                                                       _%tl4997350462%_
                                                       _%e5003750191%_
                                                       _%hd5003850195%_
                                                       _%tl5003950198%_
                                                       _%__splice8587285873%_
                                                       _%target5004050201%_
                                                       _%tl5004250204%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986150070%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                              (if (gx#stx-pair? _%hd4997250459%_)
                                  (let ((_%e5003750191%_
                                         (gx#syntax-e _%hd4997250459%_)))
                                    (let ((_%tl5003950198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750191%_)))
                                          (_%hd5003850195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750191%_))))
                                      (if (gx#stx-pair/null? _%tl4997050452%_)
                                          (let ((_%__splice8587285873%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4997050452%_
                                                  '0)))
                                            (let ((_%tl5004250204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8587285873%_
                                                      '1)))
                                                  (_%target5004050201%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8587285873%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5004250204%_)
                                                  (_%__match8615886159%_
                                                   _%e4996550435%_
                                                   _%hd4996650439%_
                                                   _%tl4996750442%_
                                                   _%e4996850445%_
                                                   _%hd4996950449%_
                                                   _%tl4997050452%_
                                                   _%e4997150455%_
                                                   _%hd4997250459%_
                                                   _%tl4997350462%_
                                                   _%e5003750191%_
                                                   _%hd5003850195%_
                                                   _%tl5003950198%_
                                                   _%__splice8587285873%_
                                                   _%target5004050201%_
                                                   _%tl5004250204%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                          (if (gx#stx-pair? _%hd4997250459%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4997250459%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (if (gx#stx-pair/null? _%tl4997050452%_)
                                      (let ((_%__splice8587285873%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4997050452%_
                                              '0)))
                                        (let ((_%tl5004250204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8587285873%_
                                                  '1)))
                                              (_%target5004050201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8587285873%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5004250204%_)
                                              (_%__match8615886159%_
                                               _%e4996550435%_
                                               _%hd4996650439%_
                                               _%tl4996750442%_
                                               _%e4996850445%_
                                               _%hd4996950449%_
                                               _%tl4997050452%_
                                               _%e4997150455%_
                                               _%hd4997250459%_
                                               _%tl4997350462%_
                                               _%e5003750191%_
                                               _%hd5003850195%_
                                               _%tl5003950198%_
                                               _%__splice8587285873%_
                                               _%target5004050201%_
                                               _%tl5004250204%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_))))))
                   (_%__match8602686027%_
                    (lambda (_%e4993850557%_
                             _%hd4993950561%_
                             _%tl4994050564%_
                             _%e4994150567%_
                             _%hd4994250571%_
                             _%tl4994350574%_
                             _%e4994450577%_
                             _%hd4994550581%_
                             _%tl4994650584%_
                             _%e4994750587%_
                             _%hd4994850591%_
                             _%tl4994950594%_
                             _%e4995050597%_
                             _%hd4995150601%_
                             _%tl4995250604%_
                             _%__splice8586085861%_
                             _%target4995350607%_
                             _%tl4995550610%_)
                      (letrec ((_%loop4995650613%_
                                (lambda (_%hd4995450617%_ _%body4996050620%_)
                                  (if (gx#stx-pair? _%hd4995450617%_)
                                      (let ((_%e4995750623%_
                                             (gx#syntax-e _%hd4995450617%_)))
                                        (let ((_%lp-tl4995950630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4995750623%_)))
                                              (_%lp-hd4995850627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4995750623%_))))
                                          (_%loop4995650613%_
                                           _%lp-tl4995950630%_
                                           (cons _%lp-hd4995850627%_
                                                 _%body4996050620%_))))
                                      (let ((_%body4996150633%_
                                             (reverse _%body4996050620%_)))
                                        (let ((_%L50637%_ _%body4996150633%_)
                                              (_%L50639%_ _%hd4995150601%_)
                                              (_%L50640%_ _%hd4994850591%_)
                                              (_%L50641%_ _%hd4994550581%_))
                                          (if (and (gx#identifier? _%L50641%_)
                                                   (gx#identifier? _%L50639%_)
                                                   (gx#identifier? _%L50640%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50640%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50640%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50640%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50640%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8585885859%_
                                               _%L50637%_
                                               _%L50639%_
                                               _%L50640%_
                                               _%L50641%_)
                                              (_%__match8605086051%_
                                               _%e4993850557%_
                                               _%hd4993950561%_
                                               _%tl4994050564%_
                                               _%e4994150567%_
                                               _%hd4994250571%_
                                               _%tl4994350574%_
                                               _%e4994450577%_
                                               _%hd4994550581%_
                                               _%tl4994650584%_
                                               _%e4994750587%_
                                               _%hd4994850591%_
                                               _%tl4994950594%_))))))))
                        (_%loop4995650613%_ _%target4995350607%_ '()))))
                   (_%__match8598685987%_
                    (lambda (_%e4990150710%_
                             _%hd4990250714%_
                             _%tl4990350717%_
                             _%e4990450720%_
                             _%hd4990550724%_
                             _%tl4990650727%_
                             _%e4990750730%_
                             _%hd4990850734%_
                             _%tl4990950737%_
                             _%e4991050740%_
                             _%hd4991150744%_
                             _%tl4991250747%_
                             _%e4991350750%_
                             _%hd4991450754%_
                             _%tl4991550757%_
                             _%e4991650760%_
                             _%hd4991750764%_
                             _%tl4991850767%_
                             _%e4991950770%_
                             _%hd4992050774%_
                             _%tl4992150777%_
                             _%e4992250780%_
                             _%hd4992350784%_
                             _%tl4992450787%_
                             _%__splice8585685857%_
                             _%target4992550790%_
                             _%tl4992750793%_)
                      (letrec ((_%loop4992850796%_
                                (lambda (_%hd4992650800%_ _%body4993250803%_)
                                  (if (gx#stx-pair? _%hd4992650800%_)
                                      (let ((_%e4992950806%_
                                             (gx#syntax-e _%hd4992650800%_)))
                                        (let ((_%lp-tl4993150813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4992950806%_)))
                                              (_%lp-hd4993050810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4992950806%_))))
                                          (_%loop4992850796%_
                                           _%lp-tl4993150813%_
                                           (cons _%lp-hd4993050810%_
                                                 _%body4993250803%_))))
                                      (let ((_%body4993350816%_
                                             (reverse _%body4993250803%_)))
                                        (let ((_%L50820%_ _%body4993350816%_)
                                              (_%L50822%_ _%hd4992350784%_)
                                              (_%L50823%_ _%hd4992050774%_)
                                              (_%L50824%_ _%hd4991750764%_)
                                              (_%L50825%_ _%hd4991150744%_)
                                              (_%L50826%_ _%hd4990850734%_))
                                          (if (and (gx#identifier? _%L50826%_)
                                                   (gx#identifier? _%L50822%_)
                                                   (gx#identifier? _%L50823%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50823%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50823%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50823%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50823%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8585485855%_
                                               _%L50820%_
                                               _%L50822%_
                                               _%L50823%_
                                               _%L50824%_
                                               _%L50825%_
                                               _%L50826%_)
                                              (_%__match8605086051%_
                                               _%e4990150710%_
                                               _%hd4990250714%_
                                               _%tl4990350717%_
                                               _%e4990450720%_
                                               _%hd4990550724%_
                                               _%tl4990650727%_
                                               _%e4990750730%_
                                               _%hd4990850734%_
                                               _%tl4990950737%_
                                               _%e4991050740%_
                                               _%hd4991150744%_
                                               _%tl4991250747%_))))))))
                        (_%loop4992850796%_ _%target4992550790%_ '()))))
                   (_%__match8595485955%_
                    (lambda (_%e4990150710%_
                             _%hd4990250714%_
                             _%tl4990350717%_
                             _%e4990450720%_
                             _%hd4990550724%_
                             _%tl4990650727%_
                             _%e4990750730%_
                             _%hd4990850734%_
                             _%tl4990950737%_
                             _%e4991050740%_
                             _%hd4991150744%_
                             _%tl4991250747%_
                             _%e4991350750%_
                             _%hd4991450754%_
                             _%tl4991550757%_)
                      (if (gx#identifier? _%hd4991450754%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g91838_|
                               _%hd4991450754%_)
                              (if (gx#stx-pair? _%tl4991550757%_)
                                  (let ((_%e4991650760%_
                                         (gx#syntax-e _%tl4991550757%_)))
                                    (let ((_%tl4991850767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4991650760%_)))
                                          (_%hd4991750764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4991650760%_))))
                                      (if (gx#stx-pair? _%tl4991850767%_)
                                          (let ((_%e4991950770%_
                                                 (gx#syntax-e
                                                  _%tl4991850767%_)))
                                            (let ((_%tl4992150777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4991950770%_)))
                                                  (_%hd4992050774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4991950770%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4992150777%_)
                                                  (let ((_%e4992250780%_
                                                         (gx#syntax-e
                                                          _%tl4992150777%_)))
                                                    (let ((_%tl4992450787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4992250780%_)))
                                                          (_%hd4992350784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4992250780%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4992450787%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4990650727%_)
                                                              (let ((_%__splice8585685857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4990650727%_
                              '0)))
                        (let ((_%tl4992750793%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8585685857%_ '1)))
                              (_%target4992550790%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8585685857%_ '0))))
                          (if (gx#stx-null? _%tl4992750793%_)
                              (_%__match8598685987%_
                               _%e4990150710%_
                               _%hd4990250714%_
                               _%tl4990350717%_
                               _%e4990450720%_
                               _%hd4990550724%_
                               _%tl4990650727%_
                               _%e4990750730%_
                               _%hd4990850734%_
                               _%tl4990950737%_
                               _%e4991050740%_
                               _%hd4991150744%_
                               _%tl4991250747%_
                               _%e4991350750%_
                               _%hd4991450754%_
                               _%tl4991550757%_
                               _%e4991650760%_
                               _%hd4991750764%_
                               _%tl4991850767%_
                               _%e4991950770%_
                               _%hd4992050774%_
                               _%tl4992150777%_
                               _%e4992250780%_
                               _%hd4992350784%_
                               _%tl4992450787%_
                               _%__splice8585685857%_
                               _%target4992550790%_
                               _%tl4992750793%_)
                              (if (gx#stx-pair? _%hd4990850734%_)
                                  (let ((_%e5003750191%_
                                         (gx#syntax-e _%hd4990850734%_)))
                                    (let ((_%tl5003950198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750191%_)))
                                          (_%hd5003850195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750191%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))))
                      (if (gx#stx-pair? _%hd4990850734%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4990850734%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                  (if (gx#stx-pair? _%hd4990850734%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4990850734%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (if (gx#stx-pair/null? _%tl4990650727%_)
                              (let ((_%__splice8587285873%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4990650727%_
                                      '0)))
                                (let ((_%tl5004250204%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '1)))
                                      (_%target5004050201%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5004250204%_)
                                      (_%__match8615886159%_
                                       _%e4990150710%_
                                       _%hd4990250714%_
                                       _%tl4990350717%_
                                       _%e4990450720%_
                                       _%hd4990550724%_
                                       _%tl4990650727%_
                                       _%e4990750730%_
                                       _%hd4990850734%_
                                       _%tl4990950737%_
                                       _%e5003750191%_
                                       _%hd5003850195%_
                                       _%tl5003950198%_
                                       _%__splice8587285873%_
                                       _%target5004050201%_
                                       _%tl5004250204%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4991150744%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91837_|
                                                           _%hd4991150744%_)
                                                          (if (gx#stx-null?
                                                               _%tl4992150777%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4990650727%_)
                          (let ((_%__splice8586885869%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4990650727%_
                                  '0)))
                            (let ((_%tl5001750346%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8586885869%_ '1)))
                                  (_%target5001550343%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8586885869%_
                                      '0))))
                              (if (gx#stx-null? _%tl5001750346%_)
                                  (_%__match8612686127%_
                                   _%e4990150710%_
                                   _%hd4990250714%_
                                   _%tl4990350717%_
                                   _%e4990450720%_
                                   _%hd4990550724%_
                                   _%tl4990650727%_
                                   _%e4990750730%_
                                   _%hd4990850734%_
                                   _%tl4990950737%_
                                   _%e4991050740%_
                                   _%hd4991150744%_
                                   _%tl4991250747%_
                                   _%e4991350750%_
                                   _%hd4991450754%_
                                   _%tl4991550757%_
                                   _%e4991650760%_
                                   _%hd4991750764%_
                                   _%tl4991850767%_
                                   _%e4991950770%_
                                   _%hd4992050774%_
                                   _%tl4992150777%_
                                   _%__splice8586885869%_
                                   _%target5001550343%_
                                   _%tl5001750346%_)
                                  (if (gx#stx-pair? _%hd4990850734%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4990850734%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))
                          (if (gx#stx-pair? _%hd4990850734%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4990850734%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                      (if (gx#stx-pair? _%hd4990850734%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4990850734%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (if (gx#stx-pair/null? _%tl4990650727%_)
                                  (let ((_%__splice8587285873%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4990650727%_
                                          '0)))
                                    (let ((_%tl5004250204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '1)))
                                          (_%target5004050201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5004250204%_)
                                          (_%__match8615886159%_
                                           _%e4990150710%_
                                           _%hd4990250714%_
                                           _%tl4990350717%_
                                           _%e4990450720%_
                                           _%hd4990550724%_
                                           _%tl4990650727%_
                                           _%e4990750730%_
                                           _%hd4990850734%_
                                           _%tl4990950737%_
                                           _%e5003750191%_
                                           _%hd5003850195%_
                                           _%tl5003950198%_
                                           _%__splice8587285873%_
                                           _%target5004050201%_
                                           _%tl5004250204%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                  (if (gx#stx-pair? _%hd4990850734%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4990850734%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (if (gx#stx-pair/null? _%tl4990650727%_)
                              (let ((_%__splice8587285873%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4990650727%_
                                      '0)))
                                (let ((_%tl5004250204%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '1)))
                                      (_%target5004050201%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5004250204%_)
                                      (_%__match8615886159%_
                                       _%e4990150710%_
                                       _%hd4990250714%_
                                       _%tl4990350717%_
                                       _%e4990450720%_
                                       _%hd4990550724%_
                                       _%tl4990650727%_
                                       _%e4990750730%_
                                       _%hd4990850734%_
                                       _%tl4990950737%_
                                       _%e5003750191%_
                                       _%hd5003850195%_
                                       _%tl5003950198%_
                                       _%__splice8587285873%_
                                       _%target5004050201%_
                                       _%tl5004250204%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
              (if (gx#stx-pair? _%hd4990850734%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4990850734%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4990650727%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4990650727%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4990150710%_
                                   _%hd4990250714%_
                                   _%tl4990350717%_
                                   _%e4990450720%_
                                   _%hd4990550724%_
                                   _%tl4990650727%_
                                   _%e4990750730%_
                                   _%hd4990850734%_
                                   _%tl4990950737%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4990850734%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4990850734%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4990650727%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4990650727%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4990150710%_
                       _%hd4990250714%_
                       _%tl4990350717%_
                       _%e4990450720%_
                       _%hd4990550724%_
                       _%tl4990650727%_
                       _%e4990750730%_
                       _%hd4990850734%_
                       _%tl4990950737%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))))
                                  (if (gx#stx-null? _%tl4991550757%_)
                                      (if (gx#stx-pair/null? _%tl4990650727%_)
                                          (let ((_%__splice8586085861%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4990650727%_
                                                  '0)))
                                            (let ((_%tl4995550610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8586085861%_
                                                      '1)))
                                                  (_%target4995350607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8586085861%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4995550610%_)
                                                  (_%__match8602686027%_
                                                   _%e4990150710%_
                                                   _%hd4990250714%_
                                                   _%tl4990350717%_
                                                   _%e4990450720%_
                                                   _%hd4990550724%_
                                                   _%tl4990650727%_
                                                   _%e4990750730%_
                                                   _%hd4990850734%_
                                                   _%tl4990950737%_
                                                   _%e4991050740%_
                                                   _%hd4991150744%_
                                                   _%tl4991250747%_
                                                   _%e4991350750%_
                                                   _%hd4991450754%_
                                                   _%tl4991550757%_
                                                   _%__splice8586085861%_
                                                   _%target4995350607%_
                                                   _%tl4995550610%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4990850734%_)
                                                      (let ((_%e5003750191%_
                                                             (gx#syntax-e
                                                              _%hd4990850734%_)))
                                                        (let ((_%tl5003950198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5003750191%_)))
                      (_%hd5003850195%_
                       (let () (declare (not safe)) (##car _%e5003750191%_))))
                  (let () (declare (not safe)) (_%g4986150070%_))))
              (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4990850734%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4990850734%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                      (if (gx#stx-pair? _%hd4990850734%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4990850734%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4990650727%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4990650727%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4990150710%_
                                                           _%hd4990250714%_
                                                           _%tl4990350717%_
                                                           _%e4990450720%_
                                                           _%hd4990550724%_
                                                           _%tl4990650727%_
                                                           _%e4990750730%_
                                                           _%hd4990850734%_
                                                           _%tl4990950737%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                              (if (gx#stx-null? _%tl4991550757%_)
                                  (if (gx#stx-pair/null? _%tl4990650727%_)
                                      (let ((_%__splice8586085861%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4990650727%_
                                              '0)))
                                        (let ((_%tl4995550610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8586085861%_
                                                  '1)))
                                              (_%target4995350607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8586085861%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4995550610%_)
                                              (_%__match8602686027%_
                                               _%e4990150710%_
                                               _%hd4990250714%_
                                               _%tl4990350717%_
                                               _%e4990450720%_
                                               _%hd4990550724%_
                                               _%tl4990650727%_
                                               _%e4990750730%_
                                               _%hd4990850734%_
                                               _%tl4990950737%_
                                               _%e4991050740%_
                                               _%hd4991150744%_
                                               _%tl4991250747%_
                                               _%e4991350750%_
                                               _%hd4991450754%_
                                               _%tl4991550757%_
                                               _%__splice8586085861%_
                                               _%target4995350607%_
                                               _%tl4995550610%_)
                                              (if (gx#stx-pair?
                                                   _%hd4990850734%_)
                                                  (let ((_%e5003750191%_
                                                         (gx#syntax-e
                                                          _%hd4990850734%_)))
                                                    (let ((_%tl5003950198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5003750191%_)))
                                                          (_%hd5003850195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5003750191%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986150070%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))))
                                      (if (gx#stx-pair? _%hd4990850734%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4990850734%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                  (if (gx#identifier? _%hd4991150744%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91837_|
                                           _%hd4991150744%_)
                                          (if (gx#stx-pair? _%tl4991550757%_)
                                              (let ((_%e5000950323%_
                                                     (gx#syntax-e
                                                      _%tl4991550757%_)))
                                                (let ((_%tl5001150330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5000950323%_)))
                                                      (_%hd5001050327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5000950323%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5001150330%_)
                                                      (let ((_%e5001250333%_
                                                             (gx#syntax-e
                                                              _%tl5001150330%_)))
                                                        (let ((_%tl5001450340%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5001250333%_)))
                      (_%hd5001350337%_
                       (let () (declare (not safe)) (##car _%e5001250333%_))))
                  (if (gx#stx-null? _%tl5001450340%_)
                      (if (gx#stx-pair/null? _%tl4990650727%_)
                          (let ((_%__splice8586885869%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4990650727%_
                                  '0)))
                            (let ((_%tl5001750346%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8586885869%_ '1)))
                                  (_%target5001550343%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8586885869%_
                                      '0))))
                              (if (gx#stx-null? _%tl5001750346%_)
                                  (_%__match8612686127%_
                                   _%e4990150710%_
                                   _%hd4990250714%_
                                   _%tl4990350717%_
                                   _%e4990450720%_
                                   _%hd4990550724%_
                                   _%tl4990650727%_
                                   _%e4990750730%_
                                   _%hd4990850734%_
                                   _%tl4990950737%_
                                   _%e4991050740%_
                                   _%hd4991150744%_
                                   _%tl4991250747%_
                                   _%e4991350750%_
                                   _%hd4991450754%_
                                   _%tl4991550757%_
                                   _%e5000950323%_
                                   _%hd5001050327%_
                                   _%tl5001150330%_
                                   _%e5001250333%_
                                   _%hd5001350337%_
                                   _%tl5001450340%_
                                   _%__splice8586885869%_
                                   _%target5001550343%_
                                   _%tl5001750346%_)
                                  (if (gx#stx-pair? _%hd4990850734%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4990850734%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))
                          (if (gx#stx-pair? _%hd4990850734%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4990850734%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                      (if (gx#stx-pair? _%hd4990850734%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4990850734%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (if (gx#stx-pair/null? _%tl4990650727%_)
                                  (let ((_%__splice8587285873%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4990650727%_
                                          '0)))
                                    (let ((_%tl5004250204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '1)))
                                          (_%target5004050201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5004250204%_)
                                          (_%__match8615886159%_
                                           _%e4990150710%_
                                           _%hd4990250714%_
                                           _%tl4990350717%_
                                           _%e4990450720%_
                                           _%hd4990550724%_
                                           _%tl4990650727%_
                                           _%e4990750730%_
                                           _%hd4990850734%_
                                           _%tl4990950737%_
                                           _%e5003750191%_
                                           _%hd5003850195%_
                                           _%tl5003950198%_
                                           _%__splice8587285873%_
                                           _%target5004050201%_
                                           _%tl5004250204%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_))))))
              (if (gx#stx-pair? _%hd4990850734%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4990850734%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4990650727%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4990650727%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4990150710%_
                                   _%hd4990250714%_
                                   _%tl4990350717%_
                                   _%e4990450720%_
                                   _%hd4990550724%_
                                   _%tl4990650727%_
                                   _%e4990750730%_
                                   _%hd4990850734%_
                                   _%tl4990950737%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4990850734%_)
                                                  (let ((_%e5003750191%_
                                                         (gx#syntax-e
                                                          _%hd4990850734%_)))
                                                    (let ((_%tl5003950198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5003750191%_)))
                                                          (_%hd5003850195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5003750191%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4990650727%_)
                                                          (let ((_%__splice8587285873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4990650727%_ '0)))
                    (let ((_%tl5004250204%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '1)))
                          (_%target5004050201%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '0))))
                      (if (gx#stx-null? _%tl5004250204%_)
                          (_%__match8615886159%_
                           _%e4990150710%_
                           _%hd4990250714%_
                           _%tl4990350717%_
                           _%e4990450720%_
                           _%hd4990550724%_
                           _%tl4990650727%_
                           _%e4990750730%_
                           _%hd4990850734%_
                           _%tl4990950737%_
                           _%e5003750191%_
                           _%hd5003850195%_
                           _%tl5003950198%_
                           _%__splice8587285873%_
                           _%target5004050201%_
                           _%tl5004250204%_)
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))
                                          (if (gx#stx-pair? _%hd4990850734%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4990850734%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4990650727%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4990650727%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4990150710%_
                       _%hd4990250714%_
                       _%tl4990350717%_
                       _%e4990450720%_
                       _%hd4990550724%_
                       _%tl4990650727%_
                       _%e4990750730%_
                       _%hd4990850734%_
                       _%tl4990950737%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                      (if (gx#stx-pair? _%hd4990850734%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4990850734%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4990650727%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4990650727%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4990150710%_
                                                           _%hd4990250714%_
                                                           _%tl4990350717%_
                                                           _%e4990450720%_
                                                           _%hd4990550724%_
                                                           _%tl4990650727%_
                                                           _%e4990750730%_
                                                           _%hd4990850734%_
                                                           _%tl4990950737%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))))
                          (if (gx#stx-null? _%tl4991550757%_)
                              (if (gx#stx-pair/null? _%tl4990650727%_)
                                  (let ((_%__splice8586085861%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4990650727%_
                                          '0)))
                                    (let ((_%tl4995550610%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8586085861%_
                                              '1)))
                                          (_%target4995350607%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8586085861%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4995550610%_)
                                          (_%__match8602686027%_
                                           _%e4990150710%_
                                           _%hd4990250714%_
                                           _%tl4990350717%_
                                           _%e4990450720%_
                                           _%hd4990550724%_
                                           _%tl4990650727%_
                                           _%e4990750730%_
                                           _%hd4990850734%_
                                           _%tl4990950737%_
                                           _%e4991050740%_
                                           _%hd4991150744%_
                                           _%tl4991250747%_
                                           _%e4991350750%_
                                           _%hd4991450754%_
                                           _%tl4991550757%_
                                           _%__splice8586085861%_
                                           _%target4995350607%_
                                           _%tl4995550610%_)
                                          (if (gx#stx-pair? _%hd4990850734%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4990850734%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))))
                                  (if (gx#stx-pair? _%hd4990850734%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4990850734%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                              (if (gx#identifier? _%hd4991150744%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91837_|
                                       _%hd4991150744%_)
                                      (if (gx#stx-pair? _%tl4991550757%_)
                                          (let ((_%e5000950323%_
                                                 (gx#syntax-e
                                                  _%tl4991550757%_)))
                                            (let ((_%tl5001150330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5000950323%_)))
                                                  (_%hd5001050327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5000950323%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5001150330%_)
                                                  (let ((_%e5001250333%_
                                                         (gx#syntax-e
                                                          _%tl5001150330%_)))
                                                    (let ((_%tl5001450340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5001250333%_)))
                                                          (_%hd5001350337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5001250333%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5001450340%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4990650727%_)
                                                              (let ((_%__splice8586885869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4990650727%_
                              '0)))
                        (let ((_%tl5001750346%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8586885869%_ '1)))
                              (_%target5001550343%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8586885869%_ '0))))
                          (if (gx#stx-null? _%tl5001750346%_)
                              (_%__match8612686127%_
                               _%e4990150710%_
                               _%hd4990250714%_
                               _%tl4990350717%_
                               _%e4990450720%_
                               _%hd4990550724%_
                               _%tl4990650727%_
                               _%e4990750730%_
                               _%hd4990850734%_
                               _%tl4990950737%_
                               _%e4991050740%_
                               _%hd4991150744%_
                               _%tl4991250747%_
                               _%e4991350750%_
                               _%hd4991450754%_
                               _%tl4991550757%_
                               _%e5000950323%_
                               _%hd5001050327%_
                               _%tl5001150330%_
                               _%e5001250333%_
                               _%hd5001350337%_
                               _%tl5001450340%_
                               _%__splice8586885869%_
                               _%target5001550343%_
                               _%tl5001750346%_)
                              (if (gx#stx-pair? _%hd4990850734%_)
                                  (let ((_%e5003750191%_
                                         (gx#syntax-e _%hd4990850734%_)))
                                    (let ((_%tl5003950198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750191%_)))
                                          (_%hd5003850195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750191%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))))
                      (if (gx#stx-pair? _%hd4990850734%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4990850734%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                  (if (gx#stx-pair? _%hd4990850734%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4990850734%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (if (gx#stx-pair/null? _%tl4990650727%_)
                              (let ((_%__splice8587285873%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4990650727%_
                                      '0)))
                                (let ((_%tl5004250204%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '1)))
                                      (_%target5004050201%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5004250204%_)
                                      (_%__match8615886159%_
                                       _%e4990150710%_
                                       _%hd4990250714%_
                                       _%tl4990350717%_
                                       _%e4990450720%_
                                       _%hd4990550724%_
                                       _%tl4990650727%_
                                       _%e4990750730%_
                                       _%hd4990850734%_
                                       _%tl4990950737%_
                                       _%e5003750191%_
                                       _%hd5003850195%_
                                       _%tl5003950198%_
                                       _%__splice8587285873%_
                                       _%target5004050201%_
                                       _%tl5004250204%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4990850734%_)
                                                      (let ((_%e5003750191%_
                                                             (gx#syntax-e
                                                              _%hd4990850734%_)))
                                                        (let ((_%tl5003950198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5003750191%_)))
                      (_%hd5003850195%_
                       (let () (declare (not safe)) (##car _%e5003750191%_))))
                  (if (gx#stx-pair/null? _%tl4990650727%_)
                      (let ((_%__splice8587285873%_
                             (gx#syntax-split-splice->vector
                              _%tl4990650727%_
                              '0)))
                        (let ((_%tl5004250204%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '1)))
                              (_%target5004050201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '0))))
                          (if (gx#stx-null? _%tl5004250204%_)
                              (_%__match8615886159%_
                               _%e4990150710%_
                               _%hd4990250714%_
                               _%tl4990350717%_
                               _%e4990450720%_
                               _%hd4990550724%_
                               _%tl4990650727%_
                               _%e4990750730%_
                               _%hd4990850734%_
                               _%tl4990950737%_
                               _%e5003750191%_
                               _%hd5003850195%_
                               _%tl5003950198%_
                               _%__splice8587285873%_
                               _%target5004050201%_
                               _%tl5004250204%_)
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4990850734%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4990850734%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4990650727%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4990650727%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4990150710%_
                       _%hd4990250714%_
                       _%tl4990350717%_
                       _%e4990450720%_
                       _%hd4990550724%_
                       _%tl4990650727%_
                       _%e4990750730%_
                       _%hd4990850734%_
                       _%tl4990950737%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                      (if (gx#stx-pair? _%hd4990850734%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4990850734%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4990650727%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4990650727%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4990150710%_
                                                           _%hd4990250714%_
                                                           _%tl4990350717%_
                                                           _%e4990450720%_
                                                           _%hd4990550724%_
                                                           _%tl4990650727%_
                                                           _%e4990750730%_
                                                           _%hd4990850734%_
                                                           _%tl4990950737%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                  (if (gx#stx-pair? _%hd4990850734%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4990850734%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4990650727%_)
                                              (let ((_%__splice8587285873%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4990650727%_
                                                      '0)))
                                                (let ((_%tl5004250204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '1)))
                                                      (_%target5004050201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5004250204%_)
                                                      (_%__match8615886159%_
                                                       _%e4990150710%_
                                                       _%hd4990250714%_
                                                       _%tl4990350717%_
                                                       _%e4990450720%_
                                                       _%hd4990550724%_
                                                       _%tl4990650727%_
                                                       _%e4990750730%_
                                                       _%hd4990850734%_
                                                       _%tl4990950737%_
                                                       _%e5003750191%_
                                                       _%hd5003850195%_
                                                       _%tl5003950198%_
                                                       _%__splice8587285873%_
                                                       _%target5004050201%_
                                                       _%tl5004250204%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986150070%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))))
                   (_%__match8592485925%_
                    (lambda (_%e4986850886%_
                             _%hd4986950890%_
                             _%tl4987050893%_
                             _%e4987150896%_
                             _%hd4987250900%_
                             _%tl4987350903%_
                             _%e4987450906%_
                             _%hd4987550910%_
                             _%tl4987650913%_
                             _%e4987750916%_
                             _%hd4987850920%_
                             _%tl4987950923%_
                             _%e4988050926%_
                             _%hd4988150930%_
                             _%tl4988250933%_
                             _%e4988350936%_
                             _%hd4988450940%_
                             _%tl4988550943%_
                             _%__splice8585285853%_
                             _%target4988650946%_
                             _%tl4988850949%_)
                      (letrec ((_%loop4988950952%_
                                (lambda (_%hd4988750956%_ _%body4989350959%_)
                                  (if (gx#stx-pair? _%hd4988750956%_)
                                      (let ((_%e4989050962%_
                                             (gx#syntax-e _%hd4988750956%_)))
                                        (let ((_%lp-tl4989250969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4989050962%_)))
                                              (_%lp-hd4989150966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4989050962%_))))
                                          (_%loop4988950952%_
                                           _%lp-tl4989250969%_
                                           (cons _%lp-hd4989150966%_
                                                 _%body4989350959%_))))
                                      (let ((_%body4989450972%_
                                             (reverse _%body4989350959%_)))
                                        (let ((_%L50976%_ _%body4989450972%_)
                                              (_%L50978%_ _%hd4988450940%_)
                                              (_%L50979%_ _%hd4988150930%_)
                                              (_%L50980%_ _%hd4987850920%_)
                                              (_%L50981%_ _%hd4987550910%_))
                                          (if (and (gx#identifier? _%L50981%_)
                                                   (gx#identifier? _%L50979%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50979%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50979%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50979%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50979%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L50979%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8585085851%_
                                               _%L50976%_
                                               _%L50978%_
                                               _%L50979%_
                                               _%L50980%_
                                               _%L50981%_)
                                              (_%__match8595485955%_
                                               _%e4986850886%_
                                               _%hd4986950890%_
                                               _%tl4987050893%_
                                               _%e4987150896%_
                                               _%hd4987250900%_
                                               _%tl4987350903%_
                                               _%e4987450906%_
                                               _%hd4987550910%_
                                               _%tl4987650913%_
                                               _%e4987750916%_
                                               _%hd4987850920%_
                                               _%tl4987950923%_
                                               _%e4988050926%_
                                               _%hd4988150930%_
                                               _%tl4988250933%_))))))))
                        (_%loop4988950952%_ _%target4988650946%_ '())))))
              (if (gx#stx-pair? _%__stx8584785848%_)
                  (let ((_%e4986850886%_ (gx#syntax-e _%__stx8584785848%_)))
                    (let ((_%tl4987050893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4986850886%_)))
                          (_%hd4986950890%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4986850886%_))))
                      (if (gx#stx-pair? _%tl4987050893%_)
                          (let ((_%e4987150896%_
                                 (gx#syntax-e _%tl4987050893%_)))
                            (let ((_%tl4987350903%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4987150896%_)))
                                  (_%hd4987250900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4987150896%_))))
                              (if (gx#stx-pair? _%hd4987250900%_)
                                  (let ((_%e4987450906%_
                                         (gx#syntax-e _%hd4987250900%_)))
                                    (let ((_%tl4987650913%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4987450906%_)))
                                          (_%hd4987550910%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4987450906%_))))
                                      (if (gx#stx-pair? _%tl4987650913%_)
                                          (let ((_%e4987750916%_
                                                 (gx#syntax-e
                                                  _%tl4987650913%_)))
                                            (let ((_%tl4987950923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4987750916%_)))
                                                  (_%hd4987850920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4987750916%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4987950923%_)
                                                  (let ((_%e4988050926%_
                                                         (gx#syntax-e
                                                          _%tl4987950923%_)))
                                                    (let ((_%tl4988250933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4988050926%_)))
                                                          (_%hd4988150930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4988050926%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4988250933%_)
                                                          (let ((_%e4988350936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4988250933%_)))
                    (let ((_%tl4988550943%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4988350936%_)))
                          (_%hd4988450940%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4988350936%_))))
                      (if (gx#stx-null? _%tl4988550943%_)
                          (if (gx#stx-pair/null? _%tl4987350903%_)
                              (let ((_%__splice8585285853%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4987350903%_
                                      '0)))
                                (let ((_%tl4988850949%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8585285853%_
                                          '1)))
                                      (_%target4988650946%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8585285853%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4988850949%_)
                                      (_%__match8592485925%_
                                       _%e4986850886%_
                                       _%hd4986950890%_
                                       _%tl4987050893%_
                                       _%e4987150896%_
                                       _%hd4987250900%_
                                       _%tl4987350903%_
                                       _%e4987450906%_
                                       _%hd4987550910%_
                                       _%tl4987650913%_
                                       _%e4987750916%_
                                       _%hd4987850920%_
                                       _%tl4987950923%_
                                       _%e4988050926%_
                                       _%hd4988150930%_
                                       _%tl4988250933%_
                                       _%e4988350936%_
                                       _%hd4988450940%_
                                       _%tl4988550943%_
                                       _%__splice8585285853%_
                                       _%target4988650946%_
                                       _%tl4988850949%_)
                                      (if (gx#stx-pair? _%hd4987550910%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4987550910%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))))
                              (if (gx#stx-pair? _%hd4987550910%_)
                                  (let ((_%e5003750191%_
                                         (gx#syntax-e _%hd4987550910%_)))
                                    (let ((_%tl5003950198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750191%_)))
                                          (_%hd5003850195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750191%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                          (if (gx#identifier? _%hd4988150930%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g91838_|
                                   _%hd4988150930%_)
                                  (if (gx#stx-pair? _%tl4988550943%_)
                                      (let ((_%e4991950770%_
                                             (gx#syntax-e _%tl4988550943%_)))
                                        (let ((_%tl4992150777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4991950770%_)))
                                              (_%hd4992050774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4991950770%_))))
                                          (if (gx#stx-pair? _%tl4992150777%_)
                                              (let ((_%e4992250780%_
                                                     (gx#syntax-e
                                                      _%tl4992150777%_)))
                                                (let ((_%tl4992450787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4992250780%_)))
                                                      (_%hd4992350784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4992250780%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4992450787%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4987350903%_)
                                                          (let ((_%__splice8585685857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4987350903%_ '0)))
                    (let ((_%tl4992750793%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8585685857%_ '1)))
                          (_%target4992550790%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8585685857%_ '0))))
                      (if (gx#stx-null? _%tl4992750793%_)
                          (_%__match8598685987%_
                           _%e4986850886%_
                           _%hd4986950890%_
                           _%tl4987050893%_
                           _%e4987150896%_
                           _%hd4987250900%_
                           _%tl4987350903%_
                           _%e4987450906%_
                           _%hd4987550910%_
                           _%tl4987650913%_
                           _%e4987750916%_
                           _%hd4987850920%_
                           _%tl4987950923%_
                           _%e4988050926%_
                           _%hd4988150930%_
                           _%tl4988250933%_
                           _%e4988350936%_
                           _%hd4988450940%_
                           _%tl4988550943%_
                           _%e4991950770%_
                           _%hd4992050774%_
                           _%tl4992150777%_
                           _%e4992250780%_
                           _%hd4992350784%_
                           _%tl4992450787%_
                           _%__splice8585685857%_
                           _%target4992550790%_
                           _%tl4992750793%_)
                          (if (gx#stx-pair? _%hd4987550910%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4987550910%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_))))))
                  (if (gx#stx-pair? _%hd4987550910%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
              (if (gx#stx-pair? _%hd4987550910%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4987350903%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4987350903%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4986850886%_
                                   _%hd4986950890%_
                                   _%tl4987050893%_
                                   _%e4987150896%_
                                   _%hd4987250900%_
                                   _%tl4987350903%_
                                   _%e4987450906%_
                                   _%hd4987550910%_
                                   _%tl4987650913%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4987850920%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g91837_|
                                                       _%hd4987850920%_)
                                                      (if (gx#stx-null?
                                                           _%tl4992150777%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4987350903%_)
                                                              (let ((_%__splice8586885869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4987350903%_
                              '0)))
                        (let ((_%tl5001750346%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8586885869%_ '1)))
                              (_%target5001550343%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8586885869%_ '0))))
                          (if (gx#stx-null? _%tl5001750346%_)
                              (_%__match8612686127%_
                               _%e4986850886%_
                               _%hd4986950890%_
                               _%tl4987050893%_
                               _%e4987150896%_
                               _%hd4987250900%_
                               _%tl4987350903%_
                               _%e4987450906%_
                               _%hd4987550910%_
                               _%tl4987650913%_
                               _%e4987750916%_
                               _%hd4987850920%_
                               _%tl4987950923%_
                               _%e4988050926%_
                               _%hd4988150930%_
                               _%tl4988250933%_
                               _%e4988350936%_
                               _%hd4988450940%_
                               _%tl4988550943%_
                               _%e4991950770%_
                               _%hd4992050774%_
                               _%tl4992150777%_
                               _%__splice8586885869%_
                               _%target5001550343%_
                               _%tl5001750346%_)
                              (if (gx#stx-pair? _%hd4987550910%_)
                                  (let ((_%e5003750191%_
                                         (gx#syntax-e _%hd4987550910%_)))
                                    (let ((_%tl5003950198%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5003750191%_)))
                                          (_%hd5003850195%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5003750191%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))))
                      (if (gx#stx-pair? _%hd4987550910%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4987550910%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                  (if (gx#stx-pair? _%hd4987550910%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (if (gx#stx-pair/null? _%tl4987350903%_)
                              (let ((_%__splice8587285873%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4987350903%_
                                      '0)))
                                (let ((_%tl5004250204%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '1)))
                                      (_%target5004050201%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8587285873%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5004250204%_)
                                      (_%__match8615886159%_
                                       _%e4986850886%_
                                       _%hd4986950890%_
                                       _%tl4987050893%_
                                       _%e4987150896%_
                                       _%hd4987250900%_
                                       _%tl4987350903%_
                                       _%e4987450906%_
                                       _%hd4987550910%_
                                       _%tl4987650913%_
                                       _%e5003750191%_
                                       _%hd5003850195%_
                                       _%tl5003950198%_
                                       _%__splice8587285873%_
                                       _%target5004050201%_
                                       _%tl5004250204%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
              (if (gx#stx-pair? _%hd4987550910%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4987350903%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4987350903%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4986850886%_
                                   _%hd4986950890%_
                                   _%tl4987050893%_
                                   _%e4987150896%_
                                   _%hd4987250900%_
                                   _%tl4987350903%_
                                   _%e4987450906%_
                                   _%hd4987550910%_
                                   _%tl4987650913%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4987550910%_)
                                                      (let ((_%e5003750191%_
                                                             (gx#syntax-e
                                                              _%hd4987550910%_)))
                                                        (let ((_%tl5003950198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5003750191%_)))
                      (_%hd5003850195%_
                       (let () (declare (not safe)) (##car _%e5003750191%_))))
                  (if (gx#stx-pair/null? _%tl4987350903%_)
                      (let ((_%__splice8587285873%_
                             (gx#syntax-split-splice->vector
                              _%tl4987350903%_
                              '0)))
                        (let ((_%tl5004250204%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '1)))
                              (_%target5004050201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '0))))
                          (if (gx#stx-null? _%tl5004250204%_)
                              (_%__match8615886159%_
                               _%e4986850886%_
                               _%hd4986950890%_
                               _%tl4987050893%_
                               _%e4987150896%_
                               _%hd4987250900%_
                               _%tl4987350903%_
                               _%e4987450906%_
                               _%hd4987550910%_
                               _%tl4987650913%_
                               _%e5003750191%_
                               _%hd5003850195%_
                               _%tl5003950198%_
                               _%__splice8587285873%_
                               _%target5004050201%_
                               _%tl5004250204%_)
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4987550910%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4987550910%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4987350903%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4987350903%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4986850886%_
                                                           _%hd4986950890%_
                                                           _%tl4987050893%_
                                                           _%e4987150896%_
                                                           _%hd4987250900%_
                                                           _%tl4987350903%_
                                                           _%e4987450906%_
                                                           _%hd4987550910%_
                                                           _%tl4987650913%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                  (if (gx#identifier? _%hd4987850920%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91837_|
                                           _%hd4987850920%_)
                                          (if (gx#stx-pair? _%tl4988550943%_)
                                              (let ((_%e5001250333%_
                                                     (gx#syntax-e
                                                      _%tl4988550943%_)))
                                                (let ((_%tl5001450340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5001250333%_)))
                                                      (_%hd5001350337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5001250333%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5001450340%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4987350903%_)
                                                          (let ((_%__splice8586885869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4987350903%_ '0)))
                    (let ((_%tl5001750346%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8586885869%_ '1)))
                          (_%target5001550343%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8586885869%_ '0))))
                      (if (gx#stx-null? _%tl5001750346%_)
                          (_%__match8612686127%_
                           _%e4986850886%_
                           _%hd4986950890%_
                           _%tl4987050893%_
                           _%e4987150896%_
                           _%hd4987250900%_
                           _%tl4987350903%_
                           _%e4987450906%_
                           _%hd4987550910%_
                           _%tl4987650913%_
                           _%e4987750916%_
                           _%hd4987850920%_
                           _%tl4987950923%_
                           _%e4988050926%_
                           _%hd4988150930%_
                           _%tl4988250933%_
                           _%e4988350936%_
                           _%hd4988450940%_
                           _%tl4988550943%_
                           _%e5001250333%_
                           _%hd5001350337%_
                           _%tl5001450340%_
                           _%__splice8586885869%_
                           _%target5001550343%_
                           _%tl5001750346%_)
                          (if (gx#stx-pair? _%hd4987550910%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4987550910%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_))))))
                  (if (gx#stx-pair? _%hd4987550910%_)
                      (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                        (let ((_%tl5003950198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003750191%_)))
                              (_%hd5003850195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003750191%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
              (if (gx#stx-pair? _%hd4987550910%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (if (gx#stx-pair/null? _%tl4987350903%_)
                          (let ((_%__splice8587285873%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4987350903%_
                                  '0)))
                            (let ((_%tl5004250204%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8587285873%_ '1)))
                                  (_%target5004050201%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8587285873%_
                                      '0))))
                              (if (gx#stx-null? _%tl5004250204%_)
                                  (_%__match8615886159%_
                                   _%e4986850886%_
                                   _%hd4986950890%_
                                   _%tl4987050893%_
                                   _%e4987150896%_
                                   _%hd4987250900%_
                                   _%tl4987350903%_
                                   _%e4987450906%_
                                   _%hd4987550910%_
                                   _%tl4987650913%_
                                   _%e5003750191%_
                                   _%hd5003850195%_
                                   _%tl5003950198%_
                                   _%__splice8587285873%_
                                   _%target5004050201%_
                                   _%tl5004250204%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4987550910%_)
                                                  (let ((_%e5003750191%_
                                                         (gx#syntax-e
                                                          _%hd4987550910%_)))
                                                    (let ((_%tl5003950198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5003750191%_)))
                                                          (_%hd5003850195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5003750191%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4987350903%_)
                                                          (let ((_%__splice8587285873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4987350903%_ '0)))
                    (let ((_%tl5004250204%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '1)))
                          (_%target5004050201%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8587285873%_ '0))))
                      (if (gx#stx-null? _%tl5004250204%_)
                          (_%__match8615886159%_
                           _%e4986850886%_
                           _%hd4986950890%_
                           _%tl4987050893%_
                           _%e4987150896%_
                           _%hd4987250900%_
                           _%tl4987350903%_
                           _%e4987450906%_
                           _%hd4987550910%_
                           _%tl4987650913%_
                           _%e5003750191%_
                           _%hd5003850195%_
                           _%tl5003950198%_
                           _%__splice8587285873%_
                           _%target5004050201%_
                           _%tl5004250204%_)
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_))))
                                          (if (gx#stx-pair? _%hd4987550910%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4987550910%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987350903%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4987350903%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4986850886%_
                       _%hd4986950890%_
                       _%tl4987050893%_
                       _%e4987150896%_
                       _%hd4987250900%_
                       _%tl4987350903%_
                       _%e4987450906%_
                       _%hd4987550910%_
                       _%tl4987650913%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                      (if (gx#stx-pair? _%hd4987550910%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4987550910%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4987350903%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4987350903%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4986850886%_
                                                           _%hd4986950890%_
                                                           _%tl4987050893%_
                                                           _%e4987150896%_
                                                           _%hd4987250900%_
                                                           _%tl4987350903%_
                                                           _%e4987450906%_
                                                           _%hd4987550910%_
                                                           _%tl4987650913%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                              (if (gx#identifier? _%hd4987850920%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91837_|
                                       _%hd4987850920%_)
                                      (if (gx#stx-pair? _%tl4988550943%_)
                                          (let ((_%e5001250333%_
                                                 (gx#syntax-e
                                                  _%tl4988550943%_)))
                                            (let ((_%tl5001450340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5001250333%_)))
                                                  (_%hd5001350337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5001250333%_))))
                                              (if (gx#stx-null?
                                                   _%tl5001450340%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987350903%_)
                                                      (let ((_%__splice8586885869%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4987350903%_
                                                              '0)))
                                                        (let ((_%tl5001750346%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8586885869%_ '1)))
                      (_%target5001550343%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8586885869%_ '0))))
                  (if (gx#stx-null? _%tl5001750346%_)
                      (_%__match8612686127%_
                       _%e4986850886%_
                       _%hd4986950890%_
                       _%tl4987050893%_
                       _%e4987150896%_
                       _%hd4987250900%_
                       _%tl4987350903%_
                       _%e4987450906%_
                       _%hd4987550910%_
                       _%tl4987650913%_
                       _%e4987750916%_
                       _%hd4987850920%_
                       _%tl4987950923%_
                       _%e4988050926%_
                       _%hd4988150930%_
                       _%tl4988250933%_
                       _%e4988350936%_
                       _%hd4988450940%_
                       _%tl4988550943%_
                       _%e5001250333%_
                       _%hd5001350337%_
                       _%tl5001450340%_
                       _%__splice8586885869%_
                       _%target5001550343%_
                       _%tl5001750346%_)
                      (if (gx#stx-pair? _%hd4987550910%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4987550910%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                          (let () (declare (not safe)) (_%g4986150070%_))))))
              (if (gx#stx-pair? _%hd4987550910%_)
                  (let ((_%e5003750191%_ (gx#syntax-e _%hd4987550910%_)))
                    (let ((_%tl5003950198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5003750191%_)))
                          (_%hd5003850195%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5003750191%_))))
                      (let () (declare (not safe)) (_%g4986150070%_))))
                  (let () (declare (not safe)) (_%g4986150070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4987550910%_)
                                                      (let ((_%e5003750191%_
                                                             (gx#syntax-e
                                                              _%hd4987550910%_)))
                                                        (let ((_%tl5003950198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5003750191%_)))
                      (_%hd5003850195%_
                       (let () (declare (not safe)) (##car _%e5003750191%_))))
                  (if (gx#stx-pair/null? _%tl4987350903%_)
                      (let ((_%__splice8587285873%_
                             (gx#syntax-split-splice->vector
                              _%tl4987350903%_
                              '0)))
                        (let ((_%tl5004250204%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '1)))
                              (_%target5004050201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '0))))
                          (if (gx#stx-null? _%tl5004250204%_)
                              (_%__match8615886159%_
                               _%e4986850886%_
                               _%hd4986950890%_
                               _%tl4987050893%_
                               _%e4987150896%_
                               _%hd4987250900%_
                               _%tl4987350903%_
                               _%e4987450906%_
                               _%hd4987550910%_
                               _%tl4987650913%_
                               _%e5003750191%_
                               _%hd5003850195%_
                               _%tl5003950198%_
                               _%__splice8587285873%_
                               _%target5004050201%_
                               _%tl5004250204%_)
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4987550910%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4987550910%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987350903%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4987350903%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4986850886%_
                       _%hd4986950890%_
                       _%tl4987050893%_
                       _%e4987150896%_
                       _%hd4987250900%_
                       _%tl4987350903%_
                       _%e4987450906%_
                       _%hd4987550910%_
                       _%tl4987650913%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))
                                      (if (gx#stx-pair? _%hd4987550910%_)
                                          (let ((_%e5003750191%_
                                                 (gx#syntax-e
                                                  _%hd4987550910%_)))
                                            (let ((_%tl5003950198%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5003750191%_)))
                                                  (_%hd5003850195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5003750191%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4987350903%_)
                                                  (let ((_%__splice8587285873%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4987350903%_
                                                          '0)))
                                                    (let ((_%tl5004250204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '1)))
                                                          (_%target5004050201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8587285873%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5004250204%_)
                                                          (_%__match8615886159%_
                                                           _%e4986850886%_
                                                           _%hd4986950890%_
                                                           _%tl4987050893%_
                                                           _%e4987150896%_
                                                           _%hd4987250900%_
                                                           _%tl4987350903%_
                                                           _%e4987450906%_
                                                           _%hd4987550910%_
                                                           _%tl4987650913%_
                                                           _%e5003750191%_
                                                           _%hd5003850195%_
                                                           _%tl5003950198%_
                                                           _%__splice8587285873%_
                                                           _%target5004050201%_
                                                           _%tl5004250204%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4986150070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                  (if (gx#stx-pair? _%hd4987550910%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4987550910%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4987350903%_)
                                              (let ((_%__splice8587285873%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4987350903%_
                                                      '0)))
                                                (let ((_%tl5004250204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '1)))
                                                      (_%target5004050201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8587285873%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5004250204%_)
                                                      (_%__match8615886159%_
                                                       _%e4986850886%_
                                                       _%hd4986950890%_
                                                       _%tl4987050893%_
                                                       _%e4987150896%_
                                                       _%hd4987250900%_
                                                       _%tl4987350903%_
                                                       _%e4987450906%_
                                                       _%hd4987550910%_
                                                       _%tl4987650913%_
                                                       _%e5003750191%_
                                                       _%hd5003850195%_
                                                       _%tl5003950198%_
                                                       _%__splice8587285873%_
                                                       _%target5004050201%_
                                                       _%tl5004250204%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4986150070%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))))
                  (if (gx#stx-null? _%tl4988250933%_)
                      (if (gx#stx-pair/null? _%tl4987350903%_)
                          (let ((_%__splice8586085861%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4987350903%_
                                  '0)))
                            (let ((_%tl4995550610%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8586085861%_ '1)))
                                  (_%target4995350607%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8586085861%_
                                      '0))))
                              (if (gx#stx-null? _%tl4995550610%_)
                                  (_%__match8602686027%_
                                   _%e4986850886%_
                                   _%hd4986950890%_
                                   _%tl4987050893%_
                                   _%e4987150896%_
                                   _%hd4987250900%_
                                   _%tl4987350903%_
                                   _%e4987450906%_
                                   _%hd4987550910%_
                                   _%tl4987650913%_
                                   _%e4987750916%_
                                   _%hd4987850920%_
                                   _%tl4987950923%_
                                   _%e4988050926%_
                                   _%hd4988150930%_
                                   _%tl4988250933%_
                                   _%__splice8586085861%_
                                   _%target4995350607%_
                                   _%tl4995550610%_)
                                  (if (gx#stx-pair? _%hd4987550910%_)
                                      (let ((_%e5003750191%_
                                             (gx#syntax-e _%hd4987550910%_)))
                                        (let ((_%tl5003950198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003750191%_)))
                                              (_%hd5003850195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003750191%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))
                          (if (gx#stx-pair? _%hd4987550910%_)
                              (let ((_%e5003750191%_
                                     (gx#syntax-e _%hd4987550910%_)))
                                (let ((_%tl5003950198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5003750191%_)))
                                      (_%hd5003850195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5003750191%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_))))
                              (let () (declare (not safe)) (_%g4986150070%_))))
                      (if (gx#stx-pair? _%hd4987550910%_)
                          (let ((_%e5003750191%_
                                 (gx#syntax-e _%hd4987550910%_)))
                            (let ((_%tl5003950198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5003750191%_)))
                                  (_%hd5003850195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5003750191%_))))
                              (if (gx#stx-pair/null? _%tl4987350903%_)
                                  (let ((_%__splice8587285873%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4987350903%_
                                          '0)))
                                    (let ((_%tl5004250204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '1)))
                                          (_%target5004050201%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8587285873%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5004250204%_)
                                          (_%__match8615886159%_
                                           _%e4986850886%_
                                           _%hd4986950890%_
                                           _%tl4987050893%_
                                           _%e4987150896%_
                                           _%hd4987250900%_
                                           _%tl4987350903%_
                                           _%e4987450906%_
                                           _%hd4987550910%_
                                           _%tl4987650913%_
                                           _%e5003750191%_
                                           _%hd5003850195%_
                                           _%tl5003950198%_
                                           _%__splice8587285873%_
                                           _%target5004050201%_
                                           _%tl5004250204%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4986150070%_)))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4987550910%_)
                                                      (let ((_%e5003750191%_
                                                             (gx#syntax-e
                                                              _%hd4987550910%_)))
                                                        (let ((_%tl5003950198%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5003750191%_)))
                      (_%hd5003850195%_
                       (let () (declare (not safe)) (##car _%e5003750191%_))))
                  (if (gx#stx-pair/null? _%tl4987350903%_)
                      (let ((_%__splice8587285873%_
                             (gx#syntax-split-splice->vector
                              _%tl4987350903%_
                              '0)))
                        (let ((_%tl5004250204%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '1)))
                              (_%target5004050201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8587285873%_ '0))))
                          (if (gx#stx-null? _%tl5004250204%_)
                              (_%__match8615886159%_
                               _%e4986850886%_
                               _%hd4986950890%_
                               _%tl4987050893%_
                               _%e4987150896%_
                               _%hd4987250900%_
                               _%tl4987350903%_
                               _%e4987450906%_
                               _%hd4987550910%_
                               _%tl4987650913%_
                               _%e5003750191%_
                               _%hd5003850195%_
                               _%tl5003950198%_
                               _%__splice8587285873%_
                               _%target5004050201%_
                               _%tl5004250204%_)
                              (let ()
                                (declare (not safe))
                                (_%g4986150070%_)))))
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4987550910%_)
                                              (let ((_%e5003750191%_
                                                     (gx#syntax-e
                                                      _%hd4987550910%_)))
                                                (let ((_%tl5003950198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5003750191%_)))
                                                      (_%hd5003850195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5003750191%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987350903%_)
                                                      (let ((_%__splice8587285873%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4987350903%_
                                                              '0)))
                                                        (let ((_%tl5004250204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '1)))
                      (_%target5004050201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8587285873%_ '0))))
                  (if (gx#stx-null? _%tl5004250204%_)
                      (_%__match8615886159%_
                       _%e4986850886%_
                       _%hd4986950890%_
                       _%tl4987050893%_
                       _%e4987150896%_
                       _%hd4987250900%_
                       _%tl4987350903%_
                       _%e4987450906%_
                       _%hd4987550910%_
                       _%tl4987650913%_
                       _%e5003750191%_
                       _%hd5003850195%_
                       _%tl5003950198%_
                       _%__splice8587285873%_
                       _%target5004050201%_
                       _%tl5004250204%_)
                      (let () (declare (not safe)) (_%g4986150070%_)))))
              (let () (declare (not safe)) (_%g4986150070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4986150070%_))))))
                                  (if (gx#stx-null? _%hd4987250900%_)
                                      (if (gx#stx-pair/null? _%tl4987350903%_)
                                          (let ((_%__splice8587685877%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4987350903%_
                                                  '0)))
                                            (let ((_%tl5005850100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8587685877%_
                                                      '1)))
                                                  (_%target5005650097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8587685877%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5005850100%_)
                                                  (_%__match8618086181%_
                                                   _%e4986850886%_
                                                   _%hd4986950890%_
                                                   _%tl4987050893%_
                                                   _%e4987150896%_
                                                   _%hd4987250900%_
                                                   _%tl4987350903%_
                                                   _%__splice8587685877%_
                                                   _%target5005650097%_
                                                   _%tl5005850100%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4986150070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4986150070%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4986150070%_))))))
                          (let () (declare (not safe)) (_%g4986150070%_)))))
                  (let () (declare (not safe)) (_%g4986150070%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx51044%_)
        (let* ((_%g5104851082%_
                (lambda (_%g5104951078%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5104951078%_)))
               (_%g5104751205%_
                (lambda (_%g5104951086%_)
                  (if (gx#stx-pair? _%g5104951086%_)
                      (let ((_%e5105351089%_ (gx#syntax-e _%g5104951086%_)))
                        (let ((_%hd5105451093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5105351089%_)))
                              (_%tl5105551096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5105351089%_))))
                          (if (gx#stx-pair? _%tl5105551096%_)
                              (let ((_%e5105651099%_
                                     (gx#syntax-e _%tl5105551096%_)))
                                (let ((_%hd5105751103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5105651099%_)))
                                      (_%tl5105851106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5105651099%_))))
                                  (if (gx#stx-pair? _%hd5105751103%_)
                                      (let ((_%e5105951109%_
                                             (gx#syntax-e _%hd5105751103%_)))
                                        (let ((_%hd5106051113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5105951109%_)))
                                              (_%tl5106151116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5105951109%_))))
                                          (if (gx#stx-pair? _%tl5106151116%_)
                                              (let ((_%e5106251119%_
                                                     (gx#syntax-e
                                                      _%tl5106151116%_)))
                                                (let ((_%hd5106351123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5106251119%_)))
                                                      (_%tl5106451126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5106251119%_))))
                                                  (if (gx#identifier?
                                                       _%hd5106351123%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91839_|
                                                           _%hd5106351123%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5106451126%_)
                                                              (let ((_%e5106551129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5106451126%_)))
                        (let ((_%hd5106651133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5106551129%_)))
                              (_%tl5106751136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5106551129%_))))
                          (if (gx#stx-null? _%tl5106751136%_)
                              (if (gx#stx-pair/null? _%tl5105851106%_)
                                  (let ((_g91840_
                                         (gx#syntax-split-splice
                                          _%tl5105851106%_
                                          '0)))
                                    (begin
                                      (let ((_g91841_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g91840_)
                                                   (##values-length _g91840_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g91841_ 2)))
                                            (error "Context expects 2 values"
                                                   _g91841_)))
                                      (let ((_%target5106851139%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g91840_ 0)))
                                            (_%tl5107051142%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g91840_ 1))))
                                        (if (gx#stx-null? _%tl5107051142%_)
                                            (letrec ((_%loop5107151145%_
                                                      (lambda (_%hd5106951149%_
                                                               _%body5107551152%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5106951149%_)
                                                            (let ((_%e5107251155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5106951149%_)))
                      (let ((_%lp-hd5107351159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5107251155%_)))
                            (_%lp-tl5107451162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5107251155%_))))
                        (_%loop5107151145%_
                         _%lp-tl5107451162%_
                         (cons _%lp-hd5107351159%_ _%body5107551152%_))))
                    (let ((_%body5107651165%_ (reverse _%body5107551152%_)))
                      ((lambda (_%L51169%_ _%L51171%_ _%L51172%_)
                         (if (gx#identifier? _%L51172%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L51171%_
                                               (cons _%L51172%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5119651199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5119751202%_)
                            (cons _%g5119651199%_ _%g5119751202%_))
                          '()
                          _%L51169%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L51172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L51171%_ (cons _%L51172%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5104851082%_ _%g5104951086%_)))
                       _%body5107651165%_
                       _%hd5106651133%_
                       _%hd5106051113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5107151145%_
                                               _%target5106851139%_
                                               '()))
                                            (_%g5104851082%_
                                             _%g5104951086%_)))))
                                  (_%g5104851082%_ _%g5104951086%_))
                              (_%g5104851082%_ _%g5104951086%_))))
                      (_%g5104851082%_ _%g5104951086%_))
                  (_%g5104851082%_ _%g5104951086%_))
              (_%g5104851082%_ _%g5104951086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5104851082%_
                                               _%g5104951086%_))))
                                      (_%g5104851082%_ _%g5104951086%_))))
                              (_%g5104851082%_ _%g5104951086%_))))
                      (_%g5104851082%_ _%g5104951086%_)))))
          (_%g5104751205%_ _%$stx51044%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass51772%_ _%slot51774%_)
        (let ((_%$e51776%_
               (let ((__obj91661 _%klass51772%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91661
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91661 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91661
                      'slot-types)))))
          (if _%$e51776%_
              ((lambda (_%slot-types51780%_)
                 (agetq _%slot51774%_ _%slot-types51780%_))
               _%$e51776%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass51753%_ _%slot51755%_)
        (let ((_%$e51757%_
               (let ((__obj91662 _%klass51753%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91662
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91662 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91662
                      'slot-defaults)))))
          (if _%$e51757%_
              ((lambda (_%slot-defaults51761%_)
                 (let ((_%$e51764%_
                        (agetq _%slot51755%_ _%slot-defaults51761%_)))
                   (if _%$e51764%_
                       (gx#syntax-local-introduce _%$e51764%_)
                       '#f)))
               _%$e51757%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass51734%_ _%slot51736%_)
        (let ((_%$e51738%_
               (let ((__obj91663 _%klass51734%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj91663
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj91663 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj91663
                      'slot-defaults)))))
          (if _%$e51738%_
              ((lambda (_%slot-defaults51742%_)
                 (let ((_%$e51745%_
                        (agetq _%slot51736%_ _%slot-defaults51742%_)))
                   (if _%$e51745%_
                       (gx#syntax-local-introduce _%$e51745%_)
                       '#f)))
               _%$e51738%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass51502%_ _%slot51504%_)
        (let ((_%contract5150551507%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51502%_
                _%slot51504%_)))
          (if _%contract5150551507%_
              (let* ((_%contract51511%_ _%contract5150551507%_)
                     (_%__stx8618386184%_ _%contract51511%_)
                     (_%g5151651553%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8618386184%_))))
                (let ((_%__kont8618686187%_
                       (lambda (_%L51703%_ _%L51705%_)
                         (not (gx#free-identifier=?
                               _%L51705%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8618886189%_
                       (lambda (_%L51643%_ _%L51645%_ _%L51646%_)
                         (not (gx#free-identifier=?
                               _%L51645%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8619086191%_ (lambda (_%L51580%_) '#f)))
                  (let* ((_%__match8623686237%_
                          (lambda (_%e5152951603%_
                                   _%hd5153051607%_
                                   _%tl5153151610%_
                                   _%e5153251613%_
                                   _%hd5153351617%_
                                   _%tl5153451620%_
                                   _%e5153551623%_
                                   _%hd5153651627%_
                                   _%tl5153751630%_
                                   _%e5153851633%_
                                   _%hd5153951637%_
                                   _%tl5154051640%_)
                            (let ((_%L51643%_ _%hd5153951637%_)
                                  (_%L51645%_ _%hd5153651627%_)
                                  (_%L51646%_ _%hd5153351617%_))
                              (if (and (gx#identifier? _%L51645%_)
                                       (or (gx#free-identifier=?
                                            _%L51645%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51645%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51645%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51645%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8618886189%_
                                   _%L51643%_
                                   _%L51645%_
                                   _%L51646%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5151651553%_))))))
                         (_%__match8620686207%_
                          (lambda (_%e5152051683%_
                                   _%hd5152151687%_
                                   _%tl5152251690%_
                                   _%e5152351693%_
                                   _%hd5152451697%_
                                   _%tl5152551700%_)
                            (let ((_%L51703%_ _%hd5152451697%_)
                                  (_%L51705%_ _%hd5152151687%_))
                              (if (and (gx#identifier? _%L51705%_)
                                       (or (gx#free-identifier=?
                                            _%L51705%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51705%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51705%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51705%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8618686187%_ _%L51703%_ _%L51705%_)
                                  (if (gx#identifier? _%hd5152151687%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91842_|
                                           _%hd5152151687%_)
                                          (_%__kont8619086191%_
                                           _%hd5152451697%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5151651553%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5151651553%_))))))))
                    (if (gx#stx-pair? _%__stx8618386184%_)
                        (let ((_%e5152051683%_
                               (gx#syntax-e _%__stx8618386184%_)))
                          (let ((_%tl5152251690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5152051683%_)))
                                (_%hd5152151687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5152051683%_))))
                            (if (gx#stx-pair? _%tl5152251690%_)
                                (let ((_%e5152351693%_
                                       (gx#syntax-e _%tl5152251690%_)))
                                  (let ((_%tl5152551700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5152351693%_)))
                                        (_%hd5152451697%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5152351693%_))))
                                    (if (gx#stx-null? _%tl5152551700%_)
                                        (_%__match8620686207%_
                                         _%e5152051683%_
                                         _%hd5152151687%_
                                         _%tl5152251690%_
                                         _%e5152351693%_
                                         _%hd5152451697%_
                                         _%tl5152551700%_)
                                        (if (gx#identifier? _%hd5152151687%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g91842_|
                                                 _%hd5152151687%_)
                                                (if (gx#stx-pair?
                                                     _%tl5152551700%_)
                                                    (let ((_%e5153551623%_
                                                           (gx#syntax-e
                                                            _%tl5152551700%_)))
                                                      (let ((_%tl5153751630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5153551623%_)))
                    (_%hd5153651627%_
                     (let () (declare (not safe)) (##car _%e5153551623%_))))
                (if (gx#stx-pair? _%tl5153751630%_)
                    (let ((_%e5153851633%_ (gx#syntax-e _%tl5153751630%_)))
                      (let ((_%tl5154051640%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5153851633%_)))
                            (_%hd5153951637%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5153851633%_))))
                        (if (gx#stx-null? _%tl5154051640%_)
                            (_%__match8623686237%_
                             _%e5152051683%_
                             _%hd5152151687%_
                             _%tl5152251690%_
                             _%e5152351693%_
                             _%hd5152451697%_
                             _%tl5152551700%_
                             _%e5153551623%_
                             _%hd5153651627%_
                             _%tl5153751630%_
                             _%e5153851633%_
                             _%hd5153951637%_
                             _%tl5154051640%_)
                            (let () (declare (not safe)) (_%g5151651553%_)))))
                    (let () (declare (not safe)) (_%g5151651553%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5151651553%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5151651553%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5151651553%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5151651553%_)))))
                        (let () (declare (not safe)) (_%g5151651553%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass51270%_ _%slot51272%_)
        (let ((_%contract5127351275%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51270%_
                _%slot51272%_)))
          (if _%contract5127351275%_
              (let* ((_%contract51279%_ _%contract5127351275%_)
                     (_%__stx8625786258%_ _%contract51279%_)
                     (_%g5128451321%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8625786258%_))))
                (let ((_%__kont8626086261%_
                       (lambda (_%L51471%_ _%L51473%_)
                         (not (gx#free-identifier=?
                               _%L51473%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8626286263%_
                       (lambda (_%L51411%_ _%L51413%_ _%L51414%_) '#t))
                      (_%__kont8626486265%_ (lambda (_%L51348%_) '#t)))
                  (let* ((_%__match8631086311%_
                          (lambda (_%e5129751371%_
                                   _%hd5129851375%_
                                   _%tl5129951378%_
                                   _%e5130051381%_
                                   _%hd5130151385%_
                                   _%tl5130251388%_
                                   _%e5130351391%_
                                   _%hd5130451395%_
                                   _%tl5130551398%_
                                   _%e5130651401%_
                                   _%hd5130751405%_
                                   _%tl5130851408%_)
                            (let ((_%L51411%_ _%hd5130751405%_)
                                  (_%L51413%_ _%hd5130451395%_)
                                  (_%L51414%_ _%hd5130151385%_))
                              (if (and (gx#identifier? _%L51413%_)
                                       (or (gx#free-identifier=?
                                            _%L51413%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51413%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51413%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51413%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8626286263%_
                                   _%L51411%_
                                   _%L51413%_
                                   _%L51414%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5128451321%_))))))
                         (_%__match8628086281%_
                          (lambda (_%e5128851451%_
                                   _%hd5128951455%_
                                   _%tl5129051458%_
                                   _%e5129151461%_
                                   _%hd5129251465%_
                                   _%tl5129351468%_)
                            (let ((_%L51471%_ _%hd5129251465%_)
                                  (_%L51473%_ _%hd5128951455%_))
                              (if (and (gx#identifier? _%L51473%_)
                                       (or (gx#free-identifier=?
                                            _%L51473%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51473%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51473%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51473%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8626086261%_ _%L51471%_ _%L51473%_)
                                  (if (gx#identifier? _%hd5128951455%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g91843_|
                                           _%hd5128951455%_)
                                          (_%__kont8626486265%_
                                           _%hd5129251465%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5128451321%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5128451321%_))))))))
                    (if (gx#stx-pair? _%__stx8625786258%_)
                        (let ((_%e5128851451%_
                               (gx#syntax-e _%__stx8625786258%_)))
                          (let ((_%tl5129051458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5128851451%_)))
                                (_%hd5128951455%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5128851451%_))))
                            (if (gx#stx-pair? _%tl5129051458%_)
                                (let ((_%e5129151461%_
                                       (gx#syntax-e _%tl5129051458%_)))
                                  (let ((_%tl5129351468%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5129151461%_)))
                                        (_%hd5129251465%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5129151461%_))))
                                    (if (gx#stx-null? _%tl5129351468%_)
                                        (_%__match8628086281%_
                                         _%e5128851451%_
                                         _%hd5128951455%_
                                         _%tl5129051458%_
                                         _%e5129151461%_
                                         _%hd5129251465%_
                                         _%tl5129351468%_)
                                        (if (gx#identifier? _%hd5128951455%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g91843_|
                                                 _%hd5128951455%_)
                                                (if (gx#stx-pair?
                                                     _%tl5129351468%_)
                                                    (let ((_%e5130351391%_
                                                           (gx#syntax-e
                                                            _%tl5129351468%_)))
                                                      (let ((_%tl5130551398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5130351391%_)))
                    (_%hd5130451395%_
                     (let () (declare (not safe)) (##car _%e5130351391%_))))
                (if (gx#stx-pair? _%tl5130551398%_)
                    (let ((_%e5130651401%_ (gx#syntax-e _%tl5130551398%_)))
                      (let ((_%tl5130851408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5130651401%_)))
                            (_%hd5130751405%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5130651401%_))))
                        (if (gx#stx-null? _%tl5130851408%_)
                            (_%__match8631086311%_
                             _%e5128851451%_
                             _%hd5128951455%_
                             _%tl5129051458%_
                             _%e5129151461%_
                             _%hd5129251465%_
                             _%tl5129351468%_
                             _%e5130351391%_
                             _%hd5130451395%_
                             _%tl5130551398%_
                             _%e5130651401%_
                             _%hd5130751405%_
                             _%tl5130851408%_)
                            (let () (declare (not safe)) (_%g5128451321%_)))))
                    (let () (declare (not safe)) (_%g5128451321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5128451321%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5128451321%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5128451321%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5128451321%_)))))
                        (let () (declare (not safe)) (_%g5128451321%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id51256%_)
        (if (gx#identifier? _%id51256%_)
            (let* ((_%str51259%_ (symbol->string (gx#stx-e _%id51256%_)))
                   (_%index5126151263%_ (string-index _%str51259%_ '#\.)))
              (if _%index5126151263%_
                  (let ((_%index51267%_ _%index5126151263%_))
                    (if (let () (declare (not safe)) (##fx> _%index51267%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str51259%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx51249%_ _%id51251%_)
        (let ((_%parts51253%_
               (string-split (symbol->string (gx#stx-e _%id51251%_)) '#\.)))
          (if (find string-empty? _%parts51253%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx51249%_
               _%id51251%_)
              (cons (gx#stx-identifier _%id51251%_ (car _%parts51253%_))
                    (map string->symbol (cdr _%parts51253%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx51230%_ _%klass-or-id51232%_ _%slot51233%_)
        (let* ((_%klass51235%_
                (if (gx#identifier? _%klass-or-id51232%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51230%_
                       _%klass-or-id51232%_))
                    _%klass-or-id51232%_))
               (_%accessors51238%_
                (let ((__obj91664 _%klass51235%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj91664
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj91664 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj91664
                       'unchecked-accessors))))
               (_%$e51243%_ (agetq _%slot51233%_ _%accessors51238%_)))
          (if _%$e51243%_
              _%$e51243%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx51230%_
               _%klass51235%_
               _%slot51233%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx51210%_
               _%klass-or-id51212%_
               _%slot51213%_
               _%checked?51214%_)
        (let* ((_%klass51216%_
                (if (gx#identifier? _%klass-or-id51212%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51210%_
                       _%klass-or-id51212%_))
                    _%klass-or-id51212%_))
               (_%mutators51219%_
                (if _%checked?51214%_
                    (let ((__obj91665 _%klass51216%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91665
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91665 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91665
                           'mutators)))
                    (let ((__obj91666 _%klass51216%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj91666
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj91666 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj91666
                           'unchecked-mutators)))))
               (_%$e51224%_ (agetq _%slot51213%_ _%mutators51219%_)))
          (if _%$e51224%_
              _%$e51224%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx51210%_
               _%klass51216%_
               _%slot51213%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx51785%_)
        (letrec ((_%expand-body51788%_
                  (lambda (_%klass52696%_
                           _%var52698%_
                           _%Type52699%_
                           _%body52700%_
                           _%checked?52701%_)
                    (let* ((_%g5270352747%_
                            (lambda (_%g5270452743%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5270452743%_)))
                           (_%g5270252904%_
                            (lambda (_%g5270452751%_)
                              (if (gx#stx-pair? _%g5270452751%_)
                                  (let ((_%e5271252754%_
                                         (gx#syntax-e _%g5270452751%_)))
                                    (let ((_%hd5271352758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5271252754%_)))
                                          (_%tl5271452761%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5271252754%_))))
                                      (if (gx#stx-pair? _%tl5271452761%_)
                                          (let ((_%e5271552764%_
                                                 (gx#syntax-e
                                                  _%tl5271452761%_)))
                                            (let ((_%hd5271652768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5271552764%_)))
                                                  (_%tl5271752771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5271552764%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5271752771%_)
                                                  (let ((_%e5271852774%_
                                                         (gx#syntax-e
                                                          _%tl5271752771%_)))
                                                    (let ((_%hd5271952778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5271852774%_)))
                                                          (_%tl5272052781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5271852774%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5272052781%_)
                                                          (let ((_%e5272152784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5272052781%_)))
                    (let ((_%hd5272252788%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5272152784%_)))
                          (_%tl5272352791%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5272152784%_))))
                      (if (gx#stx-pair? _%tl5272352791%_)
                          (let ((_%e5272452794%_
                                 (gx#syntax-e _%tl5272352791%_)))
                            (let ((_%hd5272552798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5272452794%_)))
                                  (_%tl5272652801%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5272452794%_))))
                              (if (gx#stx-pair? _%tl5272652801%_)
                                  (let ((_%e5272752804%_
                                         (gx#syntax-e _%tl5272652801%_)))
                                    (let ((_%hd5272852808%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5272752804%_)))
                                          (_%tl5272952811%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5272752804%_))))
                                      (if (gx#stx-pair? _%tl5272952811%_)
                                          (let ((_%e5273052814%_
                                                 (gx#syntax-e
                                                  _%tl5272952811%_)))
                                            (let ((_%hd5273152818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5273052814%_)))
                                                  (_%tl5273252821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5273052814%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5273152818%_)
                                                  (let ((_g91844_
                                                         (gx#syntax-split-splice
                                                          _%hd5273152818%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g91845_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g91844_)
                           (##values-length _g91844_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g91845_ 2)))
                    (error "Context expects 2 values" _g91845_)))
              (let ((_%target5273352824%_
                     (let () (declare (not safe)) (##values-ref _g91844_ 0)))
                    (_%tl5273552827%_
                     (let () (declare (not safe)) (##values-ref _g91844_ 1))))
                (if (gx#stx-null? _%tl5273552827%_)
                    (letrec ((_%loop5273652830%_
                              (lambda (_%hd5273452834%_ _%body5274052837%_)
                                (if (gx#stx-pair? _%hd5273452834%_)
                                    (let ((_%e5273752840%_
                                           (gx#syntax-e _%hd5273452834%_)))
                                      (let ((_%lp-hd5273852844%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5273752840%_)))
                                            (_%lp-tl5273952847%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5273752840%_))))
                                        (_%loop5273652830%_
                                         _%lp-tl5273952847%_
                                         (cons _%lp-hd5273852844%_
                                               _%body5274052837%_))))
                                    (let ((_%body5274152850%_
                                           (reverse _%body5274052837%_)))
                                      (if (gx#stx-null? _%tl5273252821%_)
                                          ((lambda (_%L52854%_
                                                    _%L52856%_
                                                    _%L52857%_
                                                    _%L52858%_
                                                    _%L52859%_
                                                    _%L52860%_
                                                    _%L52861%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L52859%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L52860%_ '()))
                                         (cons _%L52859%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L52861%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L52859%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L52858%_ '()))
                               (cons _%L52857%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L52856%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5289552898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5289652901%_)
                      (cons _%g5289552898%_ _%g5289652901%_))
                    '()
                    _%L52854%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5274152850%_
                                           _%hd5272852808%_
                                           _%hd5272552798%_
                                           _%hd5272252788%_
                                           _%hd5271952778%_
                                           _%hd5271652768%_
                                           _%hd5271352758%_)
                                          (_%g5270352747%_
                                           _%g5270452751%_)))))))
                      (_%loop5273652830%_ _%target5273352824%_ '()))
                    (_%g5270352747%_ _%g5270452751%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5270352747%_
                                                   _%g5270452751%_))))
                                          (_%g5270352747%_ _%g5270452751%_))))
                                  (_%g5270352747%_ _%g5270452751%_))))
                          (_%g5270352747%_ _%g5270452751%_))))
                  (_%g5270352747%_ _%g5270452751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5270352747%_
                                                   _%g5270452751%_))))
                                          (_%g5270352747%_ _%g5270452751%_))))
                                  (_%g5270352747%_ _%g5270452751%_)))))
                      (_%g5270252904%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj91667 _%klass52696%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj91667
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj91667
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj91667
                                    'type-descriptor)))
                             _%var52698%_
                             _%klass52696%_
                             _%checked?52701%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body52700%_)))))
                 (_%expand51790%_
                  (lambda (_%var52588%_
                           _%Type52590%_
                           _%body52591%_
                           _%checked?52592%_
                           _%checked-mutators?52593%_
                           _%maybe?52594%_)
                    (let* ((_%klass52596%_
                            (gx#syntax-local-value _%Type52590%_ false))
                           (_%expr-body52603%_
                            (_%expand-body51788%_
                             _%klass52596%_
                             _%var52588%_
                             _%Type52590%_
                             _%body52591%_
                             (let ((_%$e52599%_ _%checked?52592%_))
                               (if _%$e52599%_
                                   _%$e52599%_
                                   _%checked-mutators?52593%_)))))
                      (if _%checked?52592%_
                          (let* ((_%g5260852627%_
                                  (lambda (_%g5260952623%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5260952623%_)))
                                 (_%g5260752689%_
                                  (lambda (_%g5260952631%_)
                                    (if (gx#stx-pair? _%g5260952631%_)
                                        (let ((_%e5261352634%_
                                               (gx#syntax-e _%g5260952631%_)))
                                          (let ((_%hd5261452638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5261352634%_)))
                                                (_%tl5261552641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5261352634%_))))
                                            (if (gx#stx-pair? _%tl5261552641%_)
                                                (let ((_%e5261652644%_
                                                       (gx#syntax-e
                                                        _%tl5261552641%_)))
                                                  (let ((_%hd5261752648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5261652644%_)))
                                                        (_%tl5261852651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5261652644%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5261852651%_)
                                                        (let ((_%e5261952654%_
                                                               (gx#syntax-e
                                                                _%tl5261852651%_)))
                                                          (let ((_%hd5262052658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5261952654%_)))
                        (_%tl5262152661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5261952654%_))))
                    (if (gx#stx-null? _%tl5262152661%_)
                        ((lambda (_%L52664%_ _%L52666%_ _%L52667%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L52666%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L52667%_ '())))
                                       (cons _%L52664%_ '()))))
                         _%hd5262052658%_
                         _%hd5261752648%_
                         _%hd5261452638%_)
                        (_%g5260852627%_ _%g5260952631%_))))
                (_%g5260852627%_ _%g5260952631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5260852627%_
                                                 _%g5260952631%_))))
                                        (_%g5260852627%_ _%g5260952631%_)))))
                            (_%g5260752689%_
                             (list (let ((_%instance?52693%_
                                          (let ((__obj91668 _%klass52596%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj91668
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj91668
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj91668
                                                 'predicate)))))
                                     (if _%maybe?52594%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?52693%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?52693%_))
                                   _%var52588%_
                                   _%expr-body52603%_)))
                          _%expr-body52603%_)))))
          (let* ((_%__stx8633186332%_ _%stx51785%_)
                 (_%g5179651939%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8633186332%_))))
            (let ((_%__kont8633486335%_
                   (lambda (_%L52516%_ _%L52518%_ _%L52519%_ _%L52520%_)
                     (let* ((_%g5254552553%_
                             (lambda (_%g5254652549%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5254652549%_)))
                            (_%g5254452580%_
                             (lambda (_%g5254652557%_)
                               ((lambda (_%L52560%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L52520%_
                                                    (cons _%L52519%_
                                                          (cons _%L52560%_
                                                                '())))
                                              (foldr (lambda (_%g5257152574%_
                                                              _%g5257252577%_)
                                                       (cons _%g5257152574%_
                                                             _%g5257252577%_))
                                                     '()
                                                     _%L52516%_))))
                                _%g5254652557%_))))
                       (_%g5254452580%_
                        (let ((__obj91669 (gx#syntax-local-value _%L52518%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj91669
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj91669
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj91669
                               'identifier)))))))
                  (_%__kont8633886339%_
                   (lambda (_%L52394%_ _%L52396%_ _%L52397%_)
                     (_%expand51790%_
                      _%L52397%_
                      _%L52396%_
                      (foldr (lambda (_%g5242052423%_ _%g5242152426%_)
                               (cons _%g5242052423%_ _%g5242152426%_))
                             '()
                             _%L52394%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8634286343%_
                   (lambda (_%L52272%_ _%L52274%_ _%L52275%_)
                     (_%expand51790%_
                      _%L52275%_
                      _%L52274%_
                      (foldr (lambda (_%g5229852301%_ _%g5229952304%_)
                               (cons _%g5229852301%_ _%g5229952304%_))
                             '()
                             _%L52272%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8634686347%_
                   (lambda (_%L52150%_ _%L52152%_ _%L52153%_)
                     (_%expand51790%_
                      _%L52153%_
                      _%L52152%_
                      (foldr (lambda (_%g5217652179%_ _%g5217752182%_)
                               (cons _%g5217652179%_ _%g5217752182%_))
                             '()
                             _%L52150%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8635086351%_
                   (lambda (_%L52026%_ _%L52028%_ _%L52029%_)
                     (_%expand51790%_
                      _%L52029%_
                      _%L52028%_
                      (foldr (lambda (_%g5205452057%_ _%g5205552060%_)
                               (cons _%g5205452057%_ _%g5205552060%_))
                             '()
                             _%L52026%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8657086571%_
                      (lambda (_%e5191051946%_
                               _%hd5191151950%_
                               _%tl5191251953%_
                               _%e5191351956%_
                               _%hd5191451960%_
                               _%tl5191551963%_
                               _%e5191651966%_
                               _%hd5191751970%_
                               _%tl5191851973%_
                               _%e5191951976%_
                               _%hd5192051980%_
                               _%tl5192151983%_
                               _%e5192251986%_
                               _%hd5192351990%_
                               _%tl5192451993%_
                               _%__splice8635286353%_
                               _%target5192551996%_
                               _%tl5192751999%_)
                        (letrec ((_%loop5192852002%_
                                  (lambda (_%hd5192652006%_ _%body5193252009%_)
                                    (if (gx#stx-pair? _%hd5192652006%_)
                                        (let ((_%e5192952012%_
                                               (gx#syntax-e _%hd5192652006%_)))
                                          (let ((_%lp-tl5193152019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5192952012%_)))
                                                (_%lp-hd5193052016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5192952012%_))))
                                            (_%loop5192852002%_
                                             _%lp-tl5193152019%_
                                             (cons _%lp-hd5193052016%_
                                                   _%body5193252009%_))))
                                        (let ((_%body5193352022%_
                                               (reverse _%body5193252009%_)))
                                          (let ((_%L52026%_ _%body5193352022%_)
                                                (_%L52028%_ _%hd5192351990%_)
                                                (_%L52029%_ _%hd5191751970%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52028%_))
                                                (_%__kont8635086351%_
                                                 _%L52026%_
                                                 _%L52028%_
                                                 _%L52029%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))))))))
                          (_%loop5192852002%_ _%target5192551996%_ '()))))
                     (_%__match8652686527%_
                      (lambda (_%e5188352070%_
                               _%hd5188452074%_
                               _%tl5188552077%_
                               _%e5188652080%_
                               _%hd5188752084%_
                               _%tl5188852087%_
                               _%e5188952090%_
                               _%hd5189052094%_
                               _%tl5189152097%_
                               _%e5189252100%_
                               _%hd5189352104%_
                               _%tl5189452107%_
                               _%e5189552110%_
                               _%hd5189652114%_
                               _%tl5189752117%_
                               _%__splice8634886349%_
                               _%target5189852120%_
                               _%tl5190052123%_)
                        (letrec ((_%loop5190152126%_
                                  (lambda (_%hd5189952130%_ _%body5190552133%_)
                                    (if (gx#stx-pair? _%hd5189952130%_)
                                        (let ((_%e5190252136%_
                                               (gx#syntax-e _%hd5189952130%_)))
                                          (let ((_%lp-tl5190452143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5190252136%_)))
                                                (_%lp-hd5190352140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5190252136%_))))
                                            (_%loop5190152126%_
                                             _%lp-tl5190452143%_
                                             (cons _%lp-hd5190352140%_
                                                   _%body5190552133%_))))
                                        (let ((_%body5190652146%_
                                               (reverse _%body5190552133%_)))
                                          (let ((_%L52150%_ _%body5190652146%_)
                                                (_%L52152%_ _%hd5189652114%_)
                                                (_%L52153%_ _%hd5189052094%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52152%_))
                                                (_%__kont8634686347%_
                                                 _%L52150%_
                                                 _%L52152%_
                                                 _%L52153%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))))))))
                          (_%loop5190152126%_ _%target5189852120%_ '()))))
                     (_%__match8648286483%_
                      (lambda (_%e5185652192%_
                               _%hd5185752196%_
                               _%tl5185852199%_
                               _%e5185952202%_
                               _%hd5186052206%_
                               _%tl5186152209%_
                               _%e5186252212%_
                               _%hd5186352216%_
                               _%tl5186452219%_
                               _%e5186552222%_
                               _%hd5186652226%_
                               _%tl5186752229%_
                               _%e5186852232%_
                               _%hd5186952236%_
                               _%tl5187052239%_
                               _%__splice8634486345%_
                               _%target5187152242%_
                               _%tl5187352245%_)
                        (letrec ((_%loop5187452248%_
                                  (lambda (_%hd5187252252%_ _%body5187852255%_)
                                    (if (gx#stx-pair? _%hd5187252252%_)
                                        (let ((_%e5187552258%_
                                               (gx#syntax-e _%hd5187252252%_)))
                                          (let ((_%lp-tl5187752265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5187552258%_)))
                                                (_%lp-hd5187652262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5187552258%_))))
                                            (_%loop5187452248%_
                                             _%lp-tl5187752265%_
                                             (cons _%lp-hd5187652262%_
                                                   _%body5187852255%_))))
                                        (let ((_%body5187952268%_
                                               (reverse _%body5187852255%_)))
                                          (let ((_%L52272%_ _%body5187952268%_)
                                                (_%L52274%_ _%hd5186952236%_)
                                                (_%L52275%_ _%hd5186352216%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52274%_))
                                                (_%__kont8634286343%_
                                                 _%L52272%_
                                                 _%L52274%_
                                                 _%L52275%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))))))))
                          (_%loop5187452248%_ _%target5187152242%_ '()))))
                     (_%__match8643886439%_
                      (lambda (_%e5182952314%_
                               _%hd5183052318%_
                               _%tl5183152321%_
                               _%e5183252324%_
                               _%hd5183352328%_
                               _%tl5183452331%_
                               _%e5183552334%_
                               _%hd5183652338%_
                               _%tl5183752341%_
                               _%e5183852344%_
                               _%hd5183952348%_
                               _%tl5184052351%_
                               _%e5184152354%_
                               _%hd5184252358%_
                               _%tl5184352361%_
                               _%__splice8634086341%_
                               _%target5184452364%_
                               _%tl5184652367%_)
                        (letrec ((_%loop5184752370%_
                                  (lambda (_%hd5184552374%_ _%body5185152377%_)
                                    (if (gx#stx-pair? _%hd5184552374%_)
                                        (let ((_%e5184852380%_
                                               (gx#syntax-e _%hd5184552374%_)))
                                          (let ((_%lp-tl5185052387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5184852380%_)))
                                                (_%lp-hd5184952384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5184852380%_))))
                                            (_%loop5184752370%_
                                             _%lp-tl5185052387%_
                                             (cons _%lp-hd5184952384%_
                                                   _%body5185152377%_))))
                                        (let ((_%body5185252390%_
                                               (reverse _%body5185152377%_)))
                                          (let ((_%L52394%_ _%body5185252390%_)
                                                (_%L52396%_ _%hd5184252358%_)
                                                (_%L52397%_ _%hd5183652338%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52396%_))
                                                (_%__kont8633886339%_
                                                 _%L52394%_
                                                 _%L52396%_
                                                 _%L52397%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))))))))
                          (_%loop5184752370%_ _%target5184452364%_ '()))))
                     (_%__match8641886419%_
                      (lambda (_%e5182952314%_
                               _%hd5183052318%_
                               _%tl5183152321%_
                               _%e5183252324%_
                               _%hd5183352328%_
                               _%tl5183452331%_
                               _%e5183552334%_
                               _%hd5183652338%_
                               _%tl5183752341%_
                               _%e5183852344%_
                               _%hd5183952348%_
                               _%tl5184052351%_)
                        (if (gx#identifier? _%hd5183952348%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g91846_|
                                 _%hd5183952348%_)
                                (if (gx#stx-pair? _%tl5184052351%_)
                                    (let ((_%e5184152354%_
                                           (gx#syntax-e _%tl5184052351%_)))
                                      (let ((_%tl5184352361%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5184152354%_)))
                                            (_%hd5184252358%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5184152354%_))))
                                        (if (gx#stx-null? _%tl5184352361%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5183452331%_)
                                                (let ((_%__splice8634086341%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5183452331%_
                                                        '0)))
                                                  (let ((_%tl5184652367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8634086341%_
                                                            '1)))
                                                        (_%target5184452364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8634086341%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5184652367%_)
                                                        (_%__match8643886439%_
                                                         _%e5182952314%_
                                                         _%hd5183052318%_
                                                         _%tl5183152321%_
                                                         _%e5183252324%_
                                                         _%hd5183352328%_
                                                         _%tl5183452331%_
                                                         _%e5183552334%_
                                                         _%hd5183652338%_
                                                         _%tl5183752341%_
                                                         _%e5183852344%_
                                                         _%hd5183952348%_
                                                         _%tl5184052351%_
                                                         _%e5184152354%_
                                                         _%hd5184252358%_
                                                         _%tl5184352361%_
                                                         _%__splice8634086341%_
                                                         _%target5184452364%_
                                                         _%tl5184652367%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5179651939%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5179651939%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5179651939%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g91847_|
                                     _%hd5183952348%_)
                                    (if (gx#stx-pair? _%tl5184052351%_)
                                        (let ((_%e5186852232%_
                                               (gx#syntax-e _%tl5184052351%_)))
                                          (let ((_%tl5187052239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5186852232%_)))
                                                (_%hd5186952236%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5186852232%_))))
                                            (if (gx#stx-null? _%tl5187052239%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5183452331%_)
                                                    (let ((_%__splice8634486345%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5183452331%_
                                                            '0)))
                                                      (let ((_%tl5187352245%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8634486345%_ '1)))
                    (_%target5187152242%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8634486345%_ '0))))
                (if (gx#stx-null? _%tl5187352245%_)
                    (_%__match8648286483%_
                     _%e5182952314%_
                     _%hd5183052318%_
                     _%tl5183152321%_
                     _%e5183252324%_
                     _%hd5183352328%_
                     _%tl5183452331%_
                     _%e5183552334%_
                     _%hd5183652338%_
                     _%tl5183752341%_
                     _%e5183852344%_
                     _%hd5183952348%_
                     _%tl5184052351%_
                     _%e5186852232%_
                     _%hd5186952236%_
                     _%tl5187052239%_
                     _%__splice8634486345%_
                     _%target5187152242%_
                     _%tl5187352245%_)
                    (let () (declare (not safe)) (_%g5179651939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5179651939%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5179651939%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g91848_|
                                         _%hd5183952348%_)
                                        (if (gx#stx-pair? _%tl5184052351%_)
                                            (let ((_%e5189552110%_
                                                   (gx#syntax-e
                                                    _%tl5184052351%_)))
                                              (let ((_%tl5189752117%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5189552110%_)))
                                                    (_%hd5189652114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5189552110%_))))
                                                (if (gx#stx-null?
                                                     _%tl5189752117%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5183452331%_)
                                                        (let ((_%__splice8634886349%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5183452331%_
                                                                '0)))
                                                          (let ((_%tl5190052123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8634886349%_ '1)))
                        (_%target5189852120%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8634886349%_ '0))))
                    (if (gx#stx-null? _%tl5190052123%_)
                        (_%__match8652686527%_
                         _%e5182952314%_
                         _%hd5183052318%_
                         _%tl5183152321%_
                         _%e5183252324%_
                         _%hd5183352328%_
                         _%tl5183452331%_
                         _%e5183552334%_
                         _%hd5183652338%_
                         _%tl5183752341%_
                         _%e5183852344%_
                         _%hd5183952348%_
                         _%tl5184052351%_
                         _%e5189552110%_
                         _%hd5189652114%_
                         _%tl5189752117%_
                         _%__splice8634886349%_
                         _%target5189852120%_
                         _%tl5190052123%_)
                        (let () (declare (not safe)) (_%g5179651939%_)))))
                (let () (declare (not safe)) (_%g5179651939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5179651939%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5179651939%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g91849_|
                                             _%hd5183952348%_)
                                            (if (gx#stx-pair? _%tl5184052351%_)
                                                (let ((_%e5192251986%_
                                                       (gx#syntax-e
                                                        _%tl5184052351%_)))
                                                  (let ((_%tl5192451993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5192251986%_)))
                                                        (_%hd5192351990%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5192251986%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5192451993%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5183452331%_)
                                                            (let ((_%__splice8635286353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5183452331%_
                            '0)))
                      (let ((_%tl5192751999%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8635286353%_ '1)))
                            (_%target5192551996%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8635286353%_ '0))))
                        (if (gx#stx-null? _%tl5192751999%_)
                            (_%__match8657086571%_
                             _%e5182952314%_
                             _%hd5183052318%_
                             _%tl5183152321%_
                             _%e5183252324%_
                             _%hd5183352328%_
                             _%tl5183452331%_
                             _%e5183552334%_
                             _%hd5183652338%_
                             _%tl5183752341%_
                             _%e5183852344%_
                             _%hd5183952348%_
                             _%tl5184052351%_
                             _%e5192251986%_
                             _%hd5192351990%_
                             _%tl5192451993%_
                             _%__splice8635286353%_
                             _%target5192551996%_
                             _%tl5192751999%_)
                            (let () (declare (not safe)) (_%g5179651939%_)))))
                    (let () (declare (not safe)) (_%g5179651939%_)))
                (let () (declare (not safe)) (_%g5179651939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5179651939%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5179651939%_))))))
                            (let () (declare (not safe)) (_%g5179651939%_)))))
                     (_%__match8639486395%_
                      (lambda (_%e5180252436%_
                               _%hd5180352440%_
                               _%tl5180452443%_
                               _%e5180552446%_
                               _%hd5180652450%_
                               _%tl5180752453%_
                               _%e5180852456%_
                               _%hd5180952460%_
                               _%tl5181052463%_
                               _%e5181152466%_
                               _%hd5181252470%_
                               _%tl5181352473%_
                               _%e5181452476%_
                               _%hd5181552480%_
                               _%tl5181652483%_
                               _%__splice8633686337%_
                               _%target5181752486%_
                               _%tl5181952489%_)
                        (letrec ((_%loop5182052492%_
                                  (lambda (_%hd5181852496%_ _%body5182452499%_)
                                    (if (gx#stx-pair? _%hd5181852496%_)
                                        (let ((_%e5182152502%_
                                               (gx#syntax-e _%hd5181852496%_)))
                                          (let ((_%lp-tl5182352509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5182152502%_)))
                                                (_%lp-hd5182252506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5182152502%_))))
                                            (_%loop5182052492%_
                                             _%lp-tl5182352509%_
                                             (cons _%lp-hd5182252506%_
                                                   _%body5182452499%_))))
                                        (let ((_%body5182552512%_
                                               (reverse _%body5182452499%_)))
                                          (let ((_%L52516%_ _%body5182552512%_)
                                                (_%L52518%_ _%hd5181552480%_)
                                                (_%L52519%_ _%hd5181252470%_)
                                                (_%L52520%_ _%hd5180952460%_))
                                            (if (let ((__tmp91850
                                                       (gx#syntax-local-value
                                                        _%L52518%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp91850))
                                                (_%__kont8633486335%_
                                                 _%L52516%_
                                                 _%L52518%_
                                                 _%L52519%_
                                                 _%L52520%_)
                                                (_%__match8641886419%_
                                                 _%e5180252436%_
                                                 _%hd5180352440%_
                                                 _%tl5180452443%_
                                                 _%e5180552446%_
                                                 _%hd5180652450%_
                                                 _%tl5180752453%_
                                                 _%e5180852456%_
                                                 _%hd5180952460%_
                                                 _%tl5181052463%_
                                                 _%e5181152466%_
                                                 _%hd5181252470%_
                                                 _%tl5181352473%_))))))))
                          (_%loop5182052492%_ _%target5181752486%_ '())))))
                (if (gx#stx-pair? _%__stx8633186332%_)
                    (let ((_%e5180252436%_ (gx#syntax-e _%__stx8633186332%_)))
                      (let ((_%tl5180452443%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5180252436%_)))
                            (_%hd5180352440%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5180252436%_))))
                        (if (gx#stx-pair? _%tl5180452443%_)
                            (let ((_%e5180552446%_
                                   (gx#syntax-e _%tl5180452443%_)))
                              (let ((_%tl5180752453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5180552446%_)))
                                    (_%hd5180652450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5180552446%_))))
                                (if (gx#stx-pair? _%hd5180652450%_)
                                    (let ((_%e5180852456%_
                                           (gx#syntax-e _%hd5180652450%_)))
                                      (let ((_%tl5181052463%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5180852456%_)))
                                            (_%hd5180952460%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5180852456%_))))
                                        (if (gx#stx-pair? _%tl5181052463%_)
                                            (let ((_%e5181152466%_
                                                   (gx#syntax-e
                                                    _%tl5181052463%_)))
                                              (let ((_%tl5181352473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5181152466%_)))
                                                    (_%hd5181252470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5181152466%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5181352473%_)
                                                    (let ((_%e5181452476%_
                                                           (gx#syntax-e
                                                            _%tl5181352473%_)))
                                                      (let ((_%tl5181652483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5181452476%_)))
                    (_%hd5181552480%_
                     (let () (declare (not safe)) (##car _%e5181452476%_))))
                (if (gx#stx-null? _%tl5181652483%_)
                    (if (gx#stx-pair/null? _%tl5180752453%_)
                        (let ((_%__splice8633686337%_
                               (gx#syntax-split-splice->vector
                                _%tl5180752453%_
                                '0)))
                          (let ((_%tl5181952489%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8633686337%_ '1)))
                                (_%target5181752486%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8633686337%_ '0))))
                            (if (gx#stx-null? _%tl5181952489%_)
                                (_%__match8639486395%_
                                 _%e5180252436%_
                                 _%hd5180352440%_
                                 _%tl5180452443%_
                                 _%e5180552446%_
                                 _%hd5180652450%_
                                 _%tl5180752453%_
                                 _%e5180852456%_
                                 _%hd5180952460%_
                                 _%tl5181052463%_
                                 _%e5181152466%_
                                 _%hd5181252470%_
                                 _%tl5181352473%_
                                 _%e5181452476%_
                                 _%hd5181552480%_
                                 _%tl5181652483%_
                                 _%__splice8633686337%_
                                 _%target5181752486%_
                                 _%tl5181952489%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5179651939%_)))))
                        (let () (declare (not safe)) (_%g5179651939%_)))
                    (let () (declare (not safe)) (_%g5179651939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5179651939%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5179651939%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5179651939%_)))))
                            (let () (declare (not safe)) (_%g5179651939%_)))))
                    (let () (declare (not safe)) (_%g5179651939%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx52914%_)
        (letrec ((_%expand-body52917%_
                  (lambda (_%var53918%_
                           _%Interface53920%_
                           _%body53921%_
                           _%checked?53922%_)
                    (let* ((_%type53924%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx52914%_
                               _%Interface53920%_)))
                           (_%g5392753971%_
                            (lambda (_%g5392853967%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5392853967%_)))
                           (_%g5392654129%_
                            (lambda (_%g5392853975%_)
                              (if (gx#stx-pair? _%g5392853975%_)
                                  (let ((_%e5393653978%_
                                         (gx#syntax-e _%g5392853975%_)))
                                    (let ((_%hd5393753982%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5393653978%_)))
                                          (_%tl5393853985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5393653978%_))))
                                      (if (gx#stx-pair? _%tl5393853985%_)
                                          (let ((_%e5393953988%_
                                                 (gx#syntax-e
                                                  _%tl5393853985%_)))
                                            (let ((_%hd5394053992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5393953988%_)))
                                                  (_%tl5394153995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5393953988%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5394153995%_)
                                                  (let ((_%e5394253998%_
                                                         (gx#syntax-e
                                                          _%tl5394153995%_)))
                                                    (let ((_%hd5394354002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5394253998%_)))
                                                          (_%tl5394454005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5394253998%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5394454005%_)
                                                          (let ((_%e5394554008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5394454005%_)))
                    (let ((_%hd5394654012%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5394554008%_)))
                          (_%tl5394754015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5394554008%_))))
                      (if (gx#stx-pair? _%tl5394754015%_)
                          (let ((_%e5394854018%_
                                 (gx#syntax-e _%tl5394754015%_)))
                            (let ((_%hd5394954022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5394854018%_)))
                                  (_%tl5395054025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5394854018%_))))
                              (if (gx#stx-pair? _%tl5395054025%_)
                                  (let ((_%e5395154028%_
                                         (gx#syntax-e _%tl5395054025%_)))
                                    (let ((_%hd5395254032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5395154028%_)))
                                          (_%tl5395354035%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5395154028%_))))
                                      (if (gx#stx-pair? _%tl5395354035%_)
                                          (let ((_%e5395454038%_
                                                 (gx#syntax-e
                                                  _%tl5395354035%_)))
                                            (let ((_%hd5395554042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5395454038%_)))
                                                  (_%tl5395654045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5395454038%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5395554042%_)
                                                  (let ((_g91851_
                                                         (gx#syntax-split-splice
                                                          _%hd5395554042%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g91852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g91851_)
                           (##values-length _g91851_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g91852_ 2)))
                    (error "Context expects 2 values" _g91852_)))
              (let ((_%target5395754048%_
                     (let () (declare (not safe)) (##values-ref _g91851_ 0)))
                    (_%tl5395954051%_
                     (let () (declare (not safe)) (##values-ref _g91851_ 1))))
                (if (gx#stx-null? _%tl5395954051%_)
                    (letrec ((_%loop5396054054%_
                              (lambda (_%hd5395854058%_ _%body5396454061%_)
                                (if (gx#stx-pair? _%hd5395854058%_)
                                    (let ((_%e5396154064%_
                                           (gx#syntax-e _%hd5395854058%_)))
                                      (let ((_%lp-hd5396254068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5396154064%_)))
                                            (_%lp-tl5396354071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5396154064%_))))
                                        (_%loop5396054054%_
                                         _%lp-tl5396354071%_
                                         (cons _%lp-hd5396254068%_
                                               _%body5396454061%_))))
                                    (let ((_%body5396554074%_
                                           (reverse _%body5396454061%_)))
                                      (if (gx#stx-null? _%tl5395654045%_)
                                          ((lambda (_%L54078%_
                                                    _%L54080%_
                                                    _%L54081%_
                                                    _%L54082%_
                                                    _%L54083%_
                                                    _%L54084%_
                                                    _%L54085%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L54082%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L54083%_ '()))
                                         (cons _%L54082%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L54085%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L54082%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L54084%_ '()))
                               (cons _%L54081%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L54080%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5412054123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5412154126%_)
                      (cons _%g5412054123%_ _%g5412154126%_))
                    '()
                    _%L54078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5396554074%_
                                           _%hd5395254032%_
                                           _%hd5394954022%_
                                           _%hd5394654012%_
                                           _%hd5394354002%_
                                           _%hd5394053992%_
                                           _%hd5393753982%_)
                                          (_%g5392753971%_
                                           _%g5392853975%_)))))))
                      (_%loop5396054054%_ _%target5395754048%_ '()))
                    (_%g5392753971%_ _%g5392853975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5392753971%_
                                                   _%g5392853975%_))))
                                          (_%g5392753971%_ _%g5392853975%_))))
                                  (_%g5392753971%_ _%g5392853975%_))))
                          (_%g5392753971%_ _%g5392853975%_))))
                  (_%g5392753971%_ _%g5392853975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5392753971%_
                                                   _%g5392853975%_))))
                                          (_%g5392753971%_ _%g5392853975%_))))
                                  (_%g5392753971%_ _%g5392853975%_)))))
                      (_%g5392654129%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type53924%_
                             (let ((__obj91670 _%type53924%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj91670
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj91670
                                      '7
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj91670
                                    'instance-type)))
                             _%var53918%_
                             _%checked?53922%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53921%_)))))
                 (_%expand52919%_
                  (lambda (_%var53717%_
                           _%Interface53719%_
                           _%body53720%_
                           _%checked?53721%_
                           _%checked-methods?53722%_
                           _%maybe?53723%_)
                    (let* ((_%g5372553733%_
                            (lambda (_%g5372653729%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5372653729%_)))
                           (_%g5372453910%_
                            (lambda (_%g5372653737%_)
                              ((lambda (_%L53740%_)
                                 (if _%checked?53721%_
                                     (if _%maybe?53723%_
                                         (let* ((_%g5375253767%_
                                                 (lambda (_%g5375353763%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5375353763%_)))
                                                (_%g5375153813%_
                                                 (lambda (_%g5375353771%_)
                                                   (if (gx#stx-pair?
                                                        _%g5375353771%_)
                                                       (let ((_%e5375653774%_
                                                              (gx#syntax-e
                                                               _%g5375353771%_)))
                                                         (let ((_%hd5375753778%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5375653774%_)))
                       (_%tl5375853781%_
                        (let () (declare (not safe)) (##cdr _%e5375653774%_))))
                   (if (gx#stx-pair? _%tl5375853781%_)
                       (let ((_%e5375953784%_ (gx#syntax-e _%tl5375853781%_)))
                         (let ((_%hd5376053788%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5375953784%_)))
                               (_%tl5376153791%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5375953784%_))))
                           (if (gx#stx-null? _%tl5376153791%_)
                               ((lambda (_%L53794%_ _%L53796%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53796%_
                                                    (cons (cons _%L53794%_
                                                                (cons _%L53796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L53796%_
                                                                (cons _%L53740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L53796%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5376053788%_
                                _%hd5375753778%_)
                               (_%g5375253767%_ _%g5375353771%_))))
                       (_%g5375253767%_ _%g5375353771%_))))
               (_%g5375253767%_ _%g5375353771%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5375153813%_
                                            (list _%var53717%_
                                                  _%Interface53719%_)))
                                         (let* ((_%g5381753832%_
                                                 (lambda (_%g5381853828%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5381853828%_)))
                                                (_%g5381653876%_
                                                 (lambda (_%g5381853836%_)
                                                   (if (gx#stx-pair?
                                                        _%g5381853836%_)
                                                       (let ((_%e5382153839%_
                                                              (gx#syntax-e
                                                               _%g5381853836%_)))
                                                         (let ((_%hd5382253843%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5382153839%_)))
                       (_%tl5382353846%_
                        (let () (declare (not safe)) (##cdr _%e5382153839%_))))
                   (if (gx#stx-pair? _%tl5382353846%_)
                       (let ((_%e5382453849%_ (gx#syntax-e _%tl5382353846%_)))
                         (let ((_%hd5382553853%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5382453849%_)))
                               (_%tl5382653856%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5382453849%_))))
                           (if (gx#stx-null? _%tl5382653856%_)
                               ((lambda (_%L53859%_ _%L53861%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L53861%_
                                                    (cons (cons _%L53859%_
                                                                (cons _%L53861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L53740%_ '()))))
                                _%hd5382553853%_
                                _%hd5382253843%_)
                               (_%g5381753832%_ _%g5381853836%_))))
                       (_%g5381753832%_ _%g5381853836%_))))
               (_%g5381753832%_ _%g5381853836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5381653876%_
                                            (list _%var53717%_
                                                  _%Interface53719%_))))
                                     (if _%maybe?53723%_
                                         (let* ((_%g5388053888%_
                                                 (lambda (_%g5388153884%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5388153884%_)))
                                                (_%g5387953906%_
                                                 (lambda (_%g5388153892%_)
                                                   ((lambda (_%L53895%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L53895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L53740%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L53895%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5388153892%_))))
                                           (_%g5387953906%_ _%var53717%_))
                                         _%L53740%_)))
                               _%g5372653737%_))))
                      (_%g5372453910%_
                       (_%expand-body52917%_
                        _%var53717%_
                        _%Interface53719%_
                        _%body53720%_
                        (let ((_%$e53914%_ _%checked?53721%_))
                          (if _%$e53914%_
                              _%$e53914%_
                              _%checked-methods?53722%_))))))))
          (let* ((_%__stx8657386574%_ _%stx52914%_)
                 (_%g5292553068%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8657386574%_))))
            (let ((_%__kont8657686577%_
                   (lambda (_%L53645%_ _%L53647%_ _%L53648%_ _%L53649%_)
                     (let* ((_%g5367453682%_
                             (lambda (_%g5367553678%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5367553678%_)))
                            (_%g5367353709%_
                             (lambda (_%g5367553686%_)
                               ((lambda (_%L53689%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L53649%_
                                                    (cons _%L53648%_
                                                          (cons _%L53689%_
                                                                '())))
                                              (foldr (lambda (_%g5370053703%_
                                                              _%g5370153706%_)
                                                       (cons _%g5370053703%_
                                                             _%g5370153706%_))
                                                     '()
                                                     _%L53645%_))))
                                _%g5367553686%_))))
                       (_%g5367353709%_
                        (let ((__obj91671 (gx#syntax-local-value _%L53647%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj91671
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj91671
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj91671
                               'identifier)))))))
                  (_%__kont8658086581%_
                   (lambda (_%L53523%_ _%L53525%_ _%L53526%_)
                     (_%expand52919%_
                      _%L53526%_
                      _%L53525%_
                      (foldr (lambda (_%g5354953552%_ _%g5355053555%_)
                               (cons _%g5354953552%_ _%g5355053555%_))
                             '()
                             _%L53523%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8658486585%_
                   (lambda (_%L53401%_ _%L53403%_ _%L53404%_)
                     (_%expand52919%_
                      _%L53404%_
                      _%L53403%_
                      (foldr (lambda (_%g5342753430%_ _%g5342853433%_)
                               (cons _%g5342753430%_ _%g5342853433%_))
                             '()
                             _%L53401%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8658886589%_
                   (lambda (_%L53279%_ _%L53281%_ _%L53282%_)
                     (_%expand52919%_
                      _%L53282%_
                      _%L53281%_
                      (foldr (lambda (_%g5330553308%_ _%g5330653311%_)
                               (cons _%g5330553308%_ _%g5330653311%_))
                             '()
                             _%L53279%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8659286593%_
                   (lambda (_%L53155%_ _%L53157%_ _%L53158%_)
                     (_%expand52919%_
                      _%L53158%_
                      _%L53157%_
                      (foldr (lambda (_%g5318353186%_ _%g5318453189%_)
                               (cons _%g5318353186%_ _%g5318453189%_))
                             '()
                             _%L53155%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8681286813%_
                      (lambda (_%e5303953075%_
                               _%hd5304053079%_
                               _%tl5304153082%_
                               _%e5304253085%_
                               _%hd5304353089%_
                               _%tl5304453092%_
                               _%e5304553095%_
                               _%hd5304653099%_
                               _%tl5304753102%_
                               _%e5304853105%_
                               _%hd5304953109%_
                               _%tl5305053112%_
                               _%e5305153115%_
                               _%hd5305253119%_
                               _%tl5305353122%_
                               _%__splice8659486595%_
                               _%target5305453125%_
                               _%tl5305653128%_)
                        (letrec ((_%loop5305753131%_
                                  (lambda (_%hd5305553135%_ _%body5306153138%_)
                                    (if (gx#stx-pair? _%hd5305553135%_)
                                        (let ((_%e5305853141%_
                                               (gx#syntax-e _%hd5305553135%_)))
                                          (let ((_%lp-tl5306053148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5305853141%_)))
                                                (_%lp-hd5305953145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5305853141%_))))
                                            (_%loop5305753131%_
                                             _%lp-tl5306053148%_
                                             (cons _%lp-hd5305953145%_
                                                   _%body5306153138%_))))
                                        (let ((_%body5306253151%_
                                               (reverse _%body5306153138%_)))
                                          (let ((_%L53155%_ _%body5306253151%_)
                                                (_%L53157%_ _%hd5305253119%_)
                                                (_%L53158%_ _%hd5304653099%_))
                                            (if (and (gx#identifier?
                                                      _%L53158%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53157%_)))
                                                (_%__kont8659286593%_
                                                 _%L53155%_
                                                 _%L53157%_
                                                 _%L53158%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5305753131%_ _%target5305453125%_ '()))))
                     (_%__match8676886769%_
                      (lambda (_%e5301253199%_
                               _%hd5301353203%_
                               _%tl5301453206%_
                               _%e5301553209%_
                               _%hd5301653213%_
                               _%tl5301753216%_
                               _%e5301853219%_
                               _%hd5301953223%_
                               _%tl5302053226%_
                               _%e5302153229%_
                               _%hd5302253233%_
                               _%tl5302353236%_
                               _%e5302453239%_
                               _%hd5302553243%_
                               _%tl5302653246%_
                               _%__splice8659086591%_
                               _%target5302753249%_
                               _%tl5302953252%_)
                        (letrec ((_%loop5303053255%_
                                  (lambda (_%hd5302853259%_ _%body5303453262%_)
                                    (if (gx#stx-pair? _%hd5302853259%_)
                                        (let ((_%e5303153265%_
                                               (gx#syntax-e _%hd5302853259%_)))
                                          (let ((_%lp-tl5303353272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5303153265%_)))
                                                (_%lp-hd5303253269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5303153265%_))))
                                            (_%loop5303053255%_
                                             _%lp-tl5303353272%_
                                             (cons _%lp-hd5303253269%_
                                                   _%body5303453262%_))))
                                        (let ((_%body5303553275%_
                                               (reverse _%body5303453262%_)))
                                          (let ((_%L53279%_ _%body5303553275%_)
                                                (_%L53281%_ _%hd5302553243%_)
                                                (_%L53282%_ _%hd5301953223%_))
                                            (if (and (gx#identifier?
                                                      _%L53282%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53281%_)))
                                                (_%__kont8658886589%_
                                                 _%L53279%_
                                                 _%L53281%_
                                                 _%L53282%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5303053255%_ _%target5302753249%_ '()))))
                     (_%__match8672486725%_
                      (lambda (_%e5298553321%_
                               _%hd5298653325%_
                               _%tl5298753328%_
                               _%e5298853331%_
                               _%hd5298953335%_
                               _%tl5299053338%_
                               _%e5299153341%_
                               _%hd5299253345%_
                               _%tl5299353348%_
                               _%e5299453351%_
                               _%hd5299553355%_
                               _%tl5299653358%_
                               _%e5299753361%_
                               _%hd5299853365%_
                               _%tl5299953368%_
                               _%__splice8658686587%_
                               _%target5300053371%_
                               _%tl5300253374%_)
                        (letrec ((_%loop5300353377%_
                                  (lambda (_%hd5300153381%_ _%body5300753384%_)
                                    (if (gx#stx-pair? _%hd5300153381%_)
                                        (let ((_%e5300453387%_
                                               (gx#syntax-e _%hd5300153381%_)))
                                          (let ((_%lp-tl5300653394%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5300453387%_)))
                                                (_%lp-hd5300553391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5300453387%_))))
                                            (_%loop5300353377%_
                                             _%lp-tl5300653394%_
                                             (cons _%lp-hd5300553391%_
                                                   _%body5300753384%_))))
                                        (let ((_%body5300853397%_
                                               (reverse _%body5300753384%_)))
                                          (let ((_%L53401%_ _%body5300853397%_)
                                                (_%L53403%_ _%hd5299853365%_)
                                                (_%L53404%_ _%hd5299253345%_))
                                            (if (and (gx#identifier?
                                                      _%L53404%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53403%_)))
                                                (_%__kont8658486585%_
                                                 _%L53401%_
                                                 _%L53403%_
                                                 _%L53404%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5300353377%_ _%target5300053371%_ '()))))
                     (_%__match8668086681%_
                      (lambda (_%e5295853443%_
                               _%hd5295953447%_
                               _%tl5296053450%_
                               _%e5296153453%_
                               _%hd5296253457%_
                               _%tl5296353460%_
                               _%e5296453463%_
                               _%hd5296553467%_
                               _%tl5296653470%_
                               _%e5296753473%_
                               _%hd5296853477%_
                               _%tl5296953480%_
                               _%e5297053483%_
                               _%hd5297153487%_
                               _%tl5297253490%_
                               _%__splice8658286583%_
                               _%target5297353493%_
                               _%tl5297553496%_)
                        (letrec ((_%loop5297653499%_
                                  (lambda (_%hd5297453503%_ _%body5298053506%_)
                                    (if (gx#stx-pair? _%hd5297453503%_)
                                        (let ((_%e5297753509%_
                                               (gx#syntax-e _%hd5297453503%_)))
                                          (let ((_%lp-tl5297953516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5297753509%_)))
                                                (_%lp-hd5297853513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5297753509%_))))
                                            (_%loop5297653499%_
                                             _%lp-tl5297953516%_
                                             (cons _%lp-hd5297853513%_
                                                   _%body5298053506%_))))
                                        (let ((_%body5298153519%_
                                               (reverse _%body5298053506%_)))
                                          (let ((_%L53523%_ _%body5298153519%_)
                                                (_%L53525%_ _%hd5297153487%_)
                                                (_%L53526%_ _%hd5296553467%_))
                                            (if (and (gx#identifier?
                                                      _%L53526%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53525%_)))
                                                (_%__kont8658086581%_
                                                 _%L53523%_
                                                 _%L53525%_
                                                 _%L53526%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))))))
                          (_%loop5297653499%_ _%target5297353493%_ '()))))
                     (_%__match8666086661%_
                      (lambda (_%e5295853443%_
                               _%hd5295953447%_
                               _%tl5296053450%_
                               _%e5296153453%_
                               _%hd5296253457%_
                               _%tl5296353460%_
                               _%e5296453463%_
                               _%hd5296553467%_
                               _%tl5296653470%_
                               _%e5296753473%_
                               _%hd5296853477%_
                               _%tl5296953480%_)
                        (if (gx#identifier? _%hd5296853477%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g91853_|
                                 _%hd5296853477%_)
                                (if (gx#stx-pair? _%tl5296953480%_)
                                    (let ((_%e5297053483%_
                                           (gx#syntax-e _%tl5296953480%_)))
                                      (let ((_%tl5297253490%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5297053483%_)))
                                            (_%hd5297153487%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5297053483%_))))
                                        (if (gx#stx-null? _%tl5297253490%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5296353460%_)
                                                (let ((_%__splice8658286583%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5296353460%_
                                                        '0)))
                                                  (let ((_%tl5297553496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8658286583%_
                                                            '1)))
                                                        (_%target5297353493%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8658286583%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5297553496%_)
                                                        (_%__match8668086681%_
                                                         _%e5295853443%_
                                                         _%hd5295953447%_
                                                         _%tl5296053450%_
                                                         _%e5296153453%_
                                                         _%hd5296253457%_
                                                         _%tl5296353460%_
                                                         _%e5296453463%_
                                                         _%hd5296553467%_
                                                         _%tl5296653470%_
                                                         _%e5296753473%_
                                                         _%hd5296853477%_
                                                         _%tl5296953480%_
                                                         _%e5297053483%_
                                                         _%hd5297153487%_
                                                         _%tl5297253490%_
                                                         _%__splice8658286583%_
                                                         _%target5297353493%_
                                                         _%tl5297553496%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5292553068%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5292553068%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g91854_|
                                     _%hd5296853477%_)
                                    (if (gx#stx-pair? _%tl5296953480%_)
                                        (let ((_%e5299753361%_
                                               (gx#syntax-e _%tl5296953480%_)))
                                          (let ((_%tl5299953368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5299753361%_)))
                                                (_%hd5299853365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5299753361%_))))
                                            (if (gx#stx-null? _%tl5299953368%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5296353460%_)
                                                    (let ((_%__splice8658686587%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5296353460%_
                                                            '0)))
                                                      (let ((_%tl5300253374%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8658686587%_ '1)))
                    (_%target5300053371%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8658686587%_ '0))))
                (if (gx#stx-null? _%tl5300253374%_)
                    (_%__match8672486725%_
                     _%e5295853443%_
                     _%hd5295953447%_
                     _%tl5296053450%_
                     _%e5296153453%_
                     _%hd5296253457%_
                     _%tl5296353460%_
                     _%e5296453463%_
                     _%hd5296553467%_
                     _%tl5296653470%_
                     _%e5296753473%_
                     _%hd5296853477%_
                     _%tl5296953480%_
                     _%e5299753361%_
                     _%hd5299853365%_
                     _%tl5299953368%_
                     _%__splice8658686587%_
                     _%target5300053371%_
                     _%tl5300253374%_)
                    (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5292553068%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g91855_|
                                         _%hd5296853477%_)
                                        (if (gx#stx-pair? _%tl5296953480%_)
                                            (let ((_%e5302453239%_
                                                   (gx#syntax-e
                                                    _%tl5296953480%_)))
                                              (let ((_%tl5302653246%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5302453239%_)))
                                                    (_%hd5302553243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5302453239%_))))
                                                (if (gx#stx-null?
                                                     _%tl5302653246%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5296353460%_)
                                                        (let ((_%__splice8659086591%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5296353460%_
                                                                '0)))
                                                          (let ((_%tl5302953252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8659086591%_ '1)))
                        (_%target5302753249%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8659086591%_ '0))))
                    (if (gx#stx-null? _%tl5302953252%_)
                        (_%__match8676886769%_
                         _%e5295853443%_
                         _%hd5295953447%_
                         _%tl5296053450%_
                         _%e5296153453%_
                         _%hd5296253457%_
                         _%tl5296353460%_
                         _%e5296453463%_
                         _%hd5296553467%_
                         _%tl5296653470%_
                         _%e5296753473%_
                         _%hd5296853477%_
                         _%tl5296953480%_
                         _%e5302453239%_
                         _%hd5302553243%_
                         _%tl5302653246%_
                         _%__splice8659086591%_
                         _%target5302753249%_
                         _%tl5302953252%_)
                        (let () (declare (not safe)) (_%g5292553068%_)))))
                (let () (declare (not safe)) (_%g5292553068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g91856_|
                                             _%hd5296853477%_)
                                            (if (gx#stx-pair? _%tl5296953480%_)
                                                (let ((_%e5305153115%_
                                                       (gx#syntax-e
                                                        _%tl5296953480%_)))
                                                  (let ((_%tl5305353122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5305153115%_)))
                                                        (_%hd5305253119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5305153115%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5305353122%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5296353460%_)
                                                            (let ((_%__splice8659486595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5296353460%_
                            '0)))
                      (let ((_%tl5305653128%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8659486595%_ '1)))
                            (_%target5305453125%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8659486595%_ '0))))
                        (if (gx#stx-null? _%tl5305653128%_)
                            (_%__match8681286813%_
                             _%e5295853443%_
                             _%hd5295953447%_
                             _%tl5296053450%_
                             _%e5296153453%_
                             _%hd5296253457%_
                             _%tl5296353460%_
                             _%e5296453463%_
                             _%hd5296553467%_
                             _%tl5296653470%_
                             _%e5296753473%_
                             _%hd5296853477%_
                             _%tl5296953480%_
                             _%e5305153115%_
                             _%hd5305253119%_
                             _%tl5305353122%_
                             _%__splice8659486595%_
                             _%target5305453125%_
                             _%tl5305653128%_)
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                    (let () (declare (not safe)) (_%g5292553068%_)))
                (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5292553068%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_))))))
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                     (_%__match8663686637%_
                      (lambda (_%e5293153565%_
                               _%hd5293253569%_
                               _%tl5293353572%_
                               _%e5293453575%_
                               _%hd5293553579%_
                               _%tl5293653582%_
                               _%e5293753585%_
                               _%hd5293853589%_
                               _%tl5293953592%_
                               _%e5294053595%_
                               _%hd5294153599%_
                               _%tl5294253602%_
                               _%e5294353605%_
                               _%hd5294453609%_
                               _%tl5294553612%_
                               _%__splice8657886579%_
                               _%target5294653615%_
                               _%tl5294853618%_)
                        (letrec ((_%loop5294953621%_
                                  (lambda (_%hd5294753625%_ _%body5295353628%_)
                                    (if (gx#stx-pair? _%hd5294753625%_)
                                        (let ((_%e5295053631%_
                                               (gx#syntax-e _%hd5294753625%_)))
                                          (let ((_%lp-tl5295253638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5295053631%_)))
                                                (_%lp-hd5295153635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5295053631%_))))
                                            (_%loop5294953621%_
                                             _%lp-tl5295253638%_
                                             (cons _%lp-hd5295153635%_
                                                   _%body5295353628%_))))
                                        (let ((_%body5295453641%_
                                               (reverse _%body5295353628%_)))
                                          (let ((_%L53645%_ _%body5295453641%_)
                                                (_%L53647%_ _%hd5294453609%_)
                                                (_%L53648%_ _%hd5294153599%_)
                                                (_%L53649%_ _%hd5293853589%_))
                                            (if (let ((__tmp91857
                                                       (gx#syntax-local-value
                                                        _%L53647%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp91857))
                                                (_%__kont8657686577%_
                                                 _%L53645%_
                                                 _%L53647%_
                                                 _%L53648%_
                                                 _%L53649%_)
                                                (_%__match8666086661%_
                                                 _%e5293153565%_
                                                 _%hd5293253569%_
                                                 _%tl5293353572%_
                                                 _%e5293453575%_
                                                 _%hd5293553579%_
                                                 _%tl5293653582%_
                                                 _%e5293753585%_
                                                 _%hd5293853589%_
                                                 _%tl5293953592%_
                                                 _%e5294053595%_
                                                 _%hd5294153599%_
                                                 _%tl5294253602%_))))))))
                          (_%loop5294953621%_ _%target5294653615%_ '())))))
                (if (gx#stx-pair? _%__stx8657386574%_)
                    (let ((_%e5293153565%_ (gx#syntax-e _%__stx8657386574%_)))
                      (let ((_%tl5293353572%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5293153565%_)))
                            (_%hd5293253569%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5293153565%_))))
                        (if (gx#stx-pair? _%tl5293353572%_)
                            (let ((_%e5293453575%_
                                   (gx#syntax-e _%tl5293353572%_)))
                              (let ((_%tl5293653582%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5293453575%_)))
                                    (_%hd5293553579%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5293453575%_))))
                                (if (gx#stx-pair? _%hd5293553579%_)
                                    (let ((_%e5293753585%_
                                           (gx#syntax-e _%hd5293553579%_)))
                                      (let ((_%tl5293953592%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5293753585%_)))
                                            (_%hd5293853589%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5293753585%_))))
                                        (if (gx#stx-pair? _%tl5293953592%_)
                                            (let ((_%e5294053595%_
                                                   (gx#syntax-e
                                                    _%tl5293953592%_)))
                                              (let ((_%tl5294253602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5294053595%_)))
                                                    (_%hd5294153599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5294053595%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5294253602%_)
                                                    (let ((_%e5294353605%_
                                                           (gx#syntax-e
                                                            _%tl5294253602%_)))
                                                      (let ((_%tl5294553612%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5294353605%_)))
                    (_%hd5294453609%_
                     (let () (declare (not safe)) (##car _%e5294353605%_))))
                (if (gx#stx-null? _%tl5294553612%_)
                    (if (gx#stx-pair/null? _%tl5293653582%_)
                        (let ((_%__splice8657886579%_
                               (gx#syntax-split-splice->vector
                                _%tl5293653582%_
                                '0)))
                          (let ((_%tl5294853618%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8657886579%_ '1)))
                                (_%target5294653615%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8657886579%_ '0))))
                            (if (gx#stx-null? _%tl5294853618%_)
                                (_%__match8663686637%_
                                 _%e5293153565%_
                                 _%hd5293253569%_
                                 _%tl5293353572%_
                                 _%e5293453575%_
                                 _%hd5293553579%_
                                 _%tl5293653582%_
                                 _%e5293753585%_
                                 _%hd5293853589%_
                                 _%tl5293953592%_
                                 _%e5294053595%_
                                 _%hd5294153599%_
                                 _%tl5294253602%_
                                 _%e5294353605%_
                                 _%hd5294453609%_
                                 _%tl5294553612%_
                                 _%__splice8657886579%_
                                 _%target5294653615%_
                                 _%tl5294853618%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5292553068%_)))))
                        (let () (declare (not safe)) (_%g5292553068%_)))
                    (let () (declare (not safe)) (_%g5292553068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5292553068%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5292553068%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5292553068%_)))))
                            (let () (declare (not safe)) (_%g5292553068%_)))))
                    (let () (declare (not safe)) (_%g5292553068%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx54139%_)
        (let* ((_%__stx8681586816%_ _%stx54139%_)
               (_%g5414454204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8681586816%_))))
          (let ((_%__kont8681886819%_
                 (lambda (_%L54766%_ _%L54768%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L54768%_ '()))
                               (foldr (lambda (_%g5478454787%_ _%g5478554790%_)
                                        (cons _%g5478454787%_ _%g5478554790%_))
                                      '()
                                      _%L54766%_)))))
                (_%__kont8682286823%_
                 (lambda (_%L54352%_ _%L54354%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L54354%_)
                       (let* ((_%g5437454381%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx54139%_
                                _%L54354%_))
                              (_%E5437654387%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5437454381%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5437754685%_
                               (lambda (_%parts54391%_ _%var54393%_)
                                 (let ((_%$e54395%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var54393%_))))
                                   (if _%$e54395%_
                                       ((lambda (_%te54399%_)
                                          (let _%loop54402%_ ((_%parts54405%_
                                                               _%parts54391%_)
                                                              (_%type54407%_
                                                               (##direct-structure-ref
                                                                _%te54399%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object54408%_
                                                               _%var54393%_)
                                                              (_%checked-method?54409%_
                                                               (##direct-structure-ref
                                                                _%te54399%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?54410%_
                                                               '#f))
                                            (let* ((_%parts5441154419%_
                                                    _%parts54405%_)
                                                   (_%else5441354480%_
                                                    (lambda ()
                                                      (let* ((_%g5443154439%_
                                                              (lambda (_%g5443254435%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5443254435%_)))
                     (_%g5443054476%_
                      (lambda (_%g5443254443%_)
                        ((lambda (_%L54446%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L54446%_
                                       (foldr (lambda (_%g5446754470%_
                                                       _%g5446854473%_)
                                                (cons _%g5446754470%_
                                                      _%g5446854473%_))
                                              '()
                                              _%L54352%_))))
                         _%g5443254443%_))))
                (_%g5443054476%_ _%object54408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5441554659%_
                                                    (lambda (_%rest54484%_
                                                             _%part54486%_)
                                                      (if (and (not _%nil-check?54410%_)
                                                               (let ((__tmp91858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part54486%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp91858)))
                  (let ((_%str54490%_ (symbol->string _%part54486%_)))
                    (_%loop54402%_
                     (cons (let ((__tmp91859
                                  (substring
                                   _%str54490%_
                                   '1
                                   (string-length _%str54490%_))))
                             (declare (not safe))
                             (##string->symbol __tmp91859))
                           _%rest54484%_)
                     _%type54407%_
                     _%object54408%_
                     _%checked-method?54409%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type54407%_))
                      (let* ((_%g5449554510%_
                              (lambda (_%g5449654506%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5449654506%_)))
                             (_%g5449454579%_
                              (lambda (_%g5449654514%_)
                                (if (gx#stx-pair? _%g5449654514%_)
                                    (let ((_%e5449954517%_
                                           (gx#syntax-e _%g5449654514%_)))
                                      (let ((_%hd5450054521%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5449954517%_)))
                                            (_%tl5450154524%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5449954517%_))))
                                        (if (gx#stx-pair? _%tl5450154524%_)
                                            (let ((_%e5450254527%_
                                                   (gx#syntax-e
                                                    _%tl5450154524%_)))
                                              (let ((_%hd5450354531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5450254527%_)))
                                                    (_%tl5450454534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5450254527%_))))
                                                (if (gx#stx-null?
                                                     _%tl5450454534%_)
                                                    ((lambda (_%L54537%_
                                                              _%L54539%_)
                                                       (if (null? _%rest54484%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L54537%_ (cons _%L54539%_ '()))
                               (foldr (lambda (_%g5455854561%_ _%g5455954564%_)
                                        (cons _%g5455854561%_ _%g5455954564%_))
                                      '()
                                      _%L54352%_)))
                   (let ((_%$e54567%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type54407%_
                           _%part54486%_)))
                     (if _%$e54567%_
                         ((lambda (_%slot-type54571%_)
                            (let ((_%slot-type54574%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx54139%_
                                      _%slot-type54571%_))))
                              (_%loop54402%_
                               _%rest54484%_
                               _%slot-type54574%_
                               (cons _%L54537%_ (cons _%L54539%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type54407%_
                                _%part54486%_)
                               '#f)))
                          _%$e54567%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx54139%_
                          _%L54354%_
                          _%part54486%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5450354531%_
                                                     _%hd5450054521%_)
                                                    (_%g5449554510%_
                                                     _%g5449654514%_))))
                                            (_%g5449554510%_
                                             _%g5449654514%_))))
                                    (_%g5449554510%_ _%g5449654514%_)))))
                        (_%g5449454579%_
                         (list (if _%nil-check?54410%_
                                   (cons 'check-nil!
                                         (cons _%object54408%_ '()))
                                   _%object54408%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx54139%_
                                _%type54407%_
                                _%part54486%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type54407%_))
                          (if (null? _%rest54484%_)
                              (let* ((_%g5458554600%_
                                      (lambda (_%g5458654596%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5458654596%_)))
                                     (_%g5458454653%_
                                      (lambda (_%g5458654604%_)
                                        (if (gx#stx-pair? _%g5458654604%_)
                                            (let ((_%e5458954607%_
                                                   (gx#syntax-e
                                                    _%g5458654604%_)))
                                              (let ((_%hd5459054611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5458954607%_)))
                                                    (_%tl5459154614%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5458954607%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5459154614%_)
                                                    (let ((_%e5459254617%_
                                                           (gx#syntax-e
                                                            _%tl5459154614%_)))
                                                      (let ((_%hd5459354621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5459254617%_)))
                    (_%tl5459454624%_
                     (let () (declare (not safe)) (##cdr _%e5459254617%_))))
                (if (gx#stx-null? _%tl5459454624%_)
                    ((lambda (_%L54627%_ _%L54629%_)
                       (cons _%L54627%_
                             (cons _%L54629%_
                                   (foldr (lambda (_%g5464454647%_
                                                   _%g5464554650%_)
                                            (cons _%g5464454647%_
                                                  _%g5464554650%_))
                                          '()
                                          _%L54352%_))))
                     _%hd5459354621%_
                     _%hd5459054611%_)
                    (_%g5458554600%_ _%g5458654604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5458554600%_
                                                     _%g5458654604%_))))
                                            (_%g5458554600%_
                                             _%g5458654604%_)))))
                                (_%g5458454653%_
                                 (list (if _%nil-check?54410%_
                                           (cons 'check-nil!
                                                 (cons _%object54408%_ '()))
                                           _%object54408%_)
                                       (gx#stx-identifier
                                        _%L54354%_
                                        (if _%checked-method?54409%_ '"" '"&")
                                        (let ((__obj91672 _%type54407%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj91672
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj91672
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj91672
                                               'name)))
                                        '"-"
                                        _%part54486%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx54139%_
                               _%L54354%_
                               _%part54486%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx54139%_
                           _%type54407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5441154419%_)
                                                  (let ((_%hd5441654663%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5441154419%_)))
                                                        (_%tl5441754666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5441154419%_))))
                                                    (let* ((_%part54669%_
                                                            _%hd5441654663%_)
                                                           (_%rest54672%_
                                                            _%tl5441754666%_))
                                                      (_%K5441554659%_
                                                       _%rest54672%_
                                                       _%part54669%_)))
                                                  (_%else5441354480%_)))))
                                        _%$e54395%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L54354%_
                                                   (foldr (lambda (_%g5467654679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5467754682%_)
                    (cons _%g5467654679%_ _%g5467754682%_))
                  '()
                  _%L54352%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5437454381%_)
                             (let ((_%hd5437854689%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5437454381%_)))
                                   (_%tl5437954692%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5437454381%_))))
                               (let* ((_%var54695%_ _%hd5437854689%_)
                                      (_%parts54698%_ _%tl5437954692%_))
                                 (_%K5437754685%_
                                  _%parts54698%_
                                  _%var54695%_)))
                             (_%E5437654387%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L54354%_
                                   (foldr (lambda (_%g5470054703%_
                                                   _%g5470154706%_)
                                            (cons _%g5470054703%_
                                                  _%g5470154706%_))
                                          '()
                                          _%L54352%_))))))
                (_%__kont8682686827%_
                 (lambda (_%L54251%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5426654269%_ _%g5426754272%_)
                                  (cons _%g5426654269%_ _%g5426754272%_))
                                '()
                                _%L54251%_)))))
            (let* ((_%__match8690286903%_
                    (lambda (_%e5418754211%_
                             _%hd5418854215%_
                             _%tl5418954218%_
                             _%__splice8682886829%_
                             _%target5419054221%_
                             _%tl5419254224%_)
                      (letrec ((_%loop5419354227%_
                                (lambda (_%hd5419154231%_ _%arg5419754234%_)
                                  (if (gx#stx-pair? _%hd5419154231%_)
                                      (let ((_%e5419454237%_
                                             (gx#syntax-e _%hd5419154231%_)))
                                        (let ((_%lp-tl5419654244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5419454237%_)))
                                              (_%lp-hd5419554241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5419454237%_))))
                                          (_%loop5419354227%_
                                           _%lp-tl5419654244%_
                                           (cons _%lp-hd5419554241%_
                                                 _%arg5419754234%_))))
                                      (let ((_%arg5419854247%_
                                             (reverse _%arg5419754234%_)))
                                        (_%__kont8682686827%_
                                         _%arg5419854247%_))))))
                        (_%loop5419354227%_ _%target5419054221%_ '()))))
                   (_%__match8688886889%_
                    (lambda (_%e5416554282%_
                             _%hd5416654286%_
                             _%tl5416754289%_
                             _%e5416854292%_
                             _%hd5416954296%_
                             _%tl5417054299%_
                             _%e5417154302%_
                             _%hd5417254306%_
                             _%tl5417354309%_
                             _%e5417454312%_
                             _%hd5417554316%_
                             _%tl5417654319%_
                             _%__splice8682486825%_
                             _%target5417754322%_
                             _%tl5417954325%_)
                      (letrec ((_%loop5418054328%_
                                (lambda (_%hd5417854332%_ _%rand5418454335%_)
                                  (if (gx#stx-pair? _%hd5417854332%_)
                                      (let ((_%e5418154338%_
                                             (gx#syntax-e _%hd5417854332%_)))
                                        (let ((_%lp-tl5418354345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5418154338%_)))
                                              (_%lp-hd5418254342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5418154338%_))))
                                          (_%loop5418054328%_
                                           _%lp-tl5418354345%_
                                           (cons _%lp-hd5418254342%_
                                                 _%rand5418454335%_))))
                                      (let ((_%rand5418554348%_
                                             (reverse _%rand5418454335%_)))
                                        (_%__kont8682286823%_
                                         _%rand5418554348%_
                                         _%hd5417554316%_))))))
                        (_%loop5418054328%_ _%target5417754322%_ '()))))
                   (_%__match8686286863%_
                    (lambda (_%e5416554282%_
                             _%hd5416654286%_
                             _%tl5416754289%_
                             _%e5416854292%_
                             _%hd5416954296%_
                             _%tl5417054299%_)
                      (if (gx#stx-pair? _%hd5416954296%_)
                          (let ((_%e5417154302%_
                                 (gx#syntax-e _%hd5416954296%_)))
                            (let ((_%tl5417354309%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5417154302%_)))
                                  (_%hd5417254306%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5417154302%_))))
                              (if (gx#identifier? _%hd5417254306%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g91860_|
                                       _%hd5417254306%_)
                                      (if (gx#stx-pair? _%tl5417354309%_)
                                          (let ((_%e5417454312%_
                                                 (gx#syntax-e
                                                  _%tl5417354309%_)))
                                            (let ((_%tl5417654319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5417454312%_)))
                                                  (_%hd5417554316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5417454312%_))))
                                              (if (gx#stx-null?
                                                   _%tl5417654319%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5417054299%_)
                                                      (let ((_%__splice8682486825%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5417054299%_
                                                              '0)))
                                                        (let ((_%tl5417954325%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8682486825%_ '1)))
                      (_%target5417754322%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8682486825%_ '0))))
                  (if (gx#stx-null? _%tl5417954325%_)
                      (_%__match8688886889%_
                       _%e5416554282%_
                       _%hd5416654286%_
                       _%tl5416754289%_
                       _%e5416854292%_
                       _%hd5416954296%_
                       _%tl5417054299%_
                       _%e5417154302%_
                       _%hd5417254306%_
                       _%tl5417354309%_
                       _%e5417454312%_
                       _%hd5417554316%_
                       _%tl5417654319%_
                       _%__splice8682486825%_
                       _%target5417754322%_
                       _%tl5417954325%_)
                      (if (gx#stx-pair/null? _%tl5416754289%_)
                          (let ((_%__splice8682886829%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5416754289%_
                                  '0)))
                            (let ((_%tl5419254224%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8682886829%_ '1)))
                                  (_%target5419054221%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8682886829%_
                                      '0))))
                              (if (gx#stx-null? _%tl5419254224%_)
                                  (_%__match8690286903%_
                                   _%e5416554282%_
                                   _%hd5416654286%_
                                   _%tl5416754289%_
                                   _%__splice8682886829%_
                                   _%target5419054221%_
                                   _%tl5419254224%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5414454204%_)))))
                          (let () (declare (not safe)) (_%g5414454204%_))))))
              (if (gx#stx-pair/null? _%tl5416754289%_)
                  (let ((_%__splice8682886829%_
                         (gx#syntax-split-splice->vector _%tl5416754289%_ '0)))
                    (let ((_%tl5419254224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '1)))
                          (_%target5419054221%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '0))))
                      (if (gx#stx-null? _%tl5419254224%_)
                          (_%__match8690286903%_
                           _%e5416554282%_
                           _%hd5416654286%_
                           _%tl5416754289%_
                           _%__splice8682886829%_
                           _%target5419054221%_
                           _%tl5419254224%_)
                          (let () (declare (not safe)) (_%g5414454204%_)))))
                  (let () (declare (not safe)) (_%g5414454204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5416754289%_)
                                                      (let ((_%__splice8682886829%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5416754289%_
                                                              '0)))
                                                        (let ((_%tl5419254224%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8682886829%_ '1)))
                      (_%target5419054221%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8682886829%_ '0))))
                  (if (gx#stx-null? _%tl5419254224%_)
                      (_%__match8690286903%_
                       _%e5416554282%_
                       _%hd5416654286%_
                       _%tl5416754289%_
                       _%__splice8682886829%_
                       _%target5419054221%_
                       _%tl5419254224%_)
                      (let () (declare (not safe)) (_%g5414454204%_)))))
              (let () (declare (not safe)) (_%g5414454204%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5416754289%_)
                                              (let ((_%__splice8682886829%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5416754289%_
                                                      '0)))
                                                (let ((_%tl5419254224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8682886829%_
                                                          '1)))
                                                      (_%target5419054221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8682886829%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5419254224%_)
                                                      (_%__match8690286903%_
                                                       _%e5416554282%_
                                                       _%hd5416654286%_
                                                       _%tl5416754289%_
                                                       _%__splice8682886829%_
                                                       _%target5419054221%_
                                                       _%tl5419254224%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5414454204%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5414454204%_))))
                                      (if (gx#stx-pair/null? _%tl5416754289%_)
                                          (let ((_%__splice8682886829%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5416754289%_
                                                  '0)))
                                            (let ((_%tl5419254224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682886829%_
                                                      '1)))
                                                  (_%target5419054221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682886829%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5419254224%_)
                                                  (_%__match8690286903%_
                                                   _%e5416554282%_
                                                   _%hd5416654286%_
                                                   _%tl5416754289%_
                                                   _%__splice8682886829%_
                                                   _%target5419054221%_
                                                   _%tl5419254224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5414454204%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5414454204%_))))
                                  (if (gx#stx-pair/null? _%tl5416754289%_)
                                      (let ((_%__splice8682886829%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5416754289%_
                                              '0)))
                                        (let ((_%tl5419254224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8682886829%_
                                                  '1)))
                                              (_%target5419054221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8682886829%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5419254224%_)
                                              (_%__match8690286903%_
                                               _%e5416554282%_
                                               _%hd5416654286%_
                                               _%tl5416754289%_
                                               _%__splice8682886829%_
                                               _%target5419054221%_
                                               _%tl5419254224%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5414454204%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5414454204%_))))))
                          (if (gx#stx-pair/null? _%tl5416754289%_)
                              (let ((_%__splice8682886829%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5416754289%_
                                      '0)))
                                (let ((_%tl5419254224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '1)))
                                      (_%target5419054221%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5419254224%_)
                                      (_%__match8690286903%_
                                       _%e5416554282%_
                                       _%hd5416654286%_
                                       _%tl5416754289%_
                                       _%__splice8682886829%_
                                       _%target5419054221%_
                                       _%tl5419254224%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5414454204%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5414454204%_))))))
                   (_%__match8685086851%_
                    (lambda (_%e5414854716%_
                             _%hd5414954720%_
                             _%tl5415054723%_
                             _%e5415154726%_
                             _%hd5415254730%_
                             _%tl5415354733%_
                             _%__splice8682086821%_
                             _%target5415454736%_
                             _%tl5415654739%_)
                      (letrec ((_%loop5415754742%_
                                (lambda (_%hd5415554746%_ _%rand5416154749%_)
                                  (if (gx#stx-pair? _%hd5415554746%_)
                                      (let ((_%e5415854752%_
                                             (gx#syntax-e _%hd5415554746%_)))
                                        (let ((_%lp-tl5416054759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5415854752%_)))
                                              (_%lp-hd5415954756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5415854752%_))))
                                          (_%loop5415754742%_
                                           _%lp-tl5416054759%_
                                           (cons _%lp-hd5415954756%_
                                                 _%rand5416154749%_))))
                                      (let ((_%rand5416254762%_
                                             (reverse _%rand5416154749%_)))
                                        (let ((_%L54766%_ _%rand5416254762%_)
                                              (_%L54768%_ _%hd5415254730%_))
                                          (if (gx#identifier? _%L54768%_)
                                              (_%__kont8681886819%_
                                               _%L54766%_
                                               _%L54768%_)
                                              (_%__match8686286863%_
                                               _%e5414854716%_
                                               _%hd5414954720%_
                                               _%tl5415054723%_
                                               _%e5415154726%_
                                               _%hd5415254730%_
                                               _%tl5415354733%_))))))))
                        (_%loop5415754742%_ _%target5415454736%_ '())))))
              (if (gx#stx-pair? _%__stx8681586816%_)
                  (let ((_%e5414854716%_ (gx#syntax-e _%__stx8681586816%_)))
                    (let ((_%tl5415054723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5414854716%_)))
                          (_%hd5414954720%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5414854716%_))))
                      (if (gx#stx-pair? _%tl5415054723%_)
                          (let ((_%e5415154726%_
                                 (gx#syntax-e _%tl5415054723%_)))
                            (let ((_%tl5415354733%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5415154726%_)))
                                  (_%hd5415254730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5415154726%_))))
                              (if (gx#stx-pair/null? _%tl5415354733%_)
                                  (let ((_%__splice8682086821%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5415354733%_
                                          '0)))
                                    (let ((_%tl5415654739%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8682086821%_
                                              '1)))
                                          (_%target5415454736%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8682086821%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5415654739%_)
                                          (_%__match8685086851%_
                                           _%e5414854716%_
                                           _%hd5414954720%_
                                           _%tl5415054723%_
                                           _%e5415154726%_
                                           _%hd5415254730%_
                                           _%tl5415354733%_
                                           _%__splice8682086821%_
                                           _%target5415454736%_
                                           _%tl5415654739%_)
                                          (if (gx#stx-pair? _%hd5415254730%_)
                                              (let ((_%e5417154302%_
                                                     (gx#syntax-e
                                                      _%hd5415254730%_)))
                                                (let ((_%tl5417354309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5417154302%_)))
                                                      (_%hd5417254306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5417154302%_))))
                                                  (if (gx#identifier?
                                                       _%hd5417254306%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g91860_|
                                                           _%hd5417254306%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5417354309%_)
                                                              (let ((_%e5417454312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5417354309%_)))
                        (let ((_%tl5417654319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5417454312%_)))
                              (_%hd5417554316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5417454312%_))))
                          (if (gx#stx-pair/null? _%tl5415054723%_)
                              (let ((_%__splice8682886829%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5415054723%_
                                      '0)))
                                (let ((_%tl5419254224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '1)))
                                      (_%target5419054221%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5419254224%_)
                                      (_%__match8690286903%_
                                       _%e5414854716%_
                                       _%hd5414954720%_
                                       _%tl5415054723%_
                                       _%__splice8682886829%_
                                       _%target5419054221%_
                                       _%tl5419254224%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5414454204%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5414454204%_)))))
                      (if (gx#stx-pair/null? _%tl5415054723%_)
                          (let ((_%__splice8682886829%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5415054723%_
                                  '0)))
                            (let ((_%tl5419254224%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8682886829%_ '1)))
                                  (_%target5419054221%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8682886829%_
                                      '0))))
                              (if (gx#stx-null? _%tl5419254224%_)
                                  (_%__match8690286903%_
                                   _%e5414854716%_
                                   _%hd5414954720%_
                                   _%tl5415054723%_
                                   _%__splice8682886829%_
                                   _%target5419054221%_
                                   _%tl5419254224%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5414454204%_)))))
                          (let () (declare (not safe)) (_%g5414454204%_))))
                  (if (gx#stx-pair/null? _%tl5415054723%_)
                      (let ((_%__splice8682886829%_
                             (gx#syntax-split-splice->vector
                              _%tl5415054723%_
                              '0)))
                        (let ((_%tl5419254224%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8682886829%_ '1)))
                              (_%target5419054221%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8682886829%_ '0))))
                          (if (gx#stx-null? _%tl5419254224%_)
                              (_%__match8690286903%_
                               _%e5414854716%_
                               _%hd5414954720%_
                               _%tl5415054723%_
                               _%__splice8682886829%_
                               _%target5419054221%_
                               _%tl5419254224%_)
                              (let ()
                                (declare (not safe))
                                (_%g5414454204%_)))))
                      (let () (declare (not safe)) (_%g5414454204%_))))
              (if (gx#stx-pair/null? _%tl5415054723%_)
                  (let ((_%__splice8682886829%_
                         (gx#syntax-split-splice->vector _%tl5415054723%_ '0)))
                    (let ((_%tl5419254224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '1)))
                          (_%target5419054221%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '0))))
                      (if (gx#stx-null? _%tl5419254224%_)
                          (_%__match8690286903%_
                           _%e5414854716%_
                           _%hd5414954720%_
                           _%tl5415054723%_
                           _%__splice8682886829%_
                           _%target5419054221%_
                           _%tl5419254224%_)
                          (let () (declare (not safe)) (_%g5414454204%_)))))
                  (let () (declare (not safe)) (_%g5414454204%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5415054723%_)
                                                  (let ((_%__splice8682886829%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5415054723%_
                                                          '0)))
                                                    (let ((_%tl5419254224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8682886829%_
                                                              '1)))
                                                          (_%target5419054221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8682886829%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5419254224%_)
                                                          (_%__match8690286903%_
                                                           _%e5414854716%_
                                                           _%hd5414954720%_
                                                           _%tl5415054723%_
                                                           _%__splice8682886829%_
                                                           _%target5419054221%_
                                                           _%tl5419254224%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5414454204%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5414454204%_)))))))
                                  (if (gx#stx-pair? _%hd5415254730%_)
                                      (let ((_%e5417154302%_
                                             (gx#syntax-e _%hd5415254730%_)))
                                        (let ((_%tl5417354309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5417154302%_)))
                                              (_%hd5417254306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5417154302%_))))
                                          (if (gx#identifier? _%hd5417254306%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g91860_|
                                                   _%hd5417254306%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5417354309%_)
                                                      (let ((_%e5417454312%_
                                                             (gx#syntax-e
                                                              _%tl5417354309%_)))
                                                        (let ((_%tl5417654319%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5417454312%_)))
                      (_%hd5417554316%_
                       (let () (declare (not safe)) (##car _%e5417454312%_))))
                  (if (gx#stx-pair/null? _%tl5415054723%_)
                      (let ((_%__splice8682886829%_
                             (gx#syntax-split-splice->vector
                              _%tl5415054723%_
                              '0)))
                        (let ((_%tl5419254224%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8682886829%_ '1)))
                              (_%target5419054221%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8682886829%_ '0))))
                          (if (gx#stx-null? _%tl5419254224%_)
                              (_%__match8690286903%_
                               _%e5414854716%_
                               _%hd5414954720%_
                               _%tl5415054723%_
                               _%__splice8682886829%_
                               _%target5419054221%_
                               _%tl5419254224%_)
                              (let ()
                                (declare (not safe))
                                (_%g5414454204%_)))))
                      (let () (declare (not safe)) (_%g5414454204%_)))))
              (if (gx#stx-pair/null? _%tl5415054723%_)
                  (let ((_%__splice8682886829%_
                         (gx#syntax-split-splice->vector _%tl5415054723%_ '0)))
                    (let ((_%tl5419254224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '1)))
                          (_%target5419054221%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8682886829%_ '0))))
                      (if (gx#stx-null? _%tl5419254224%_)
                          (_%__match8690286903%_
                           _%e5414854716%_
                           _%hd5414954720%_
                           _%tl5415054723%_
                           _%__splice8682886829%_
                           _%target5419054221%_
                           _%tl5419254224%_)
                          (let () (declare (not safe)) (_%g5414454204%_)))))
                  (let () (declare (not safe)) (_%g5414454204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5415054723%_)
                                                      (let ((_%__splice8682886829%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5415054723%_
                                                              '0)))
                                                        (let ((_%tl5419254224%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8682886829%_ '1)))
                      (_%target5419054221%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8682886829%_ '0))))
                  (if (gx#stx-null? _%tl5419254224%_)
                      (_%__match8690286903%_
                       _%e5414854716%_
                       _%hd5414954720%_
                       _%tl5415054723%_
                       _%__splice8682886829%_
                       _%target5419054221%_
                       _%tl5419254224%_)
                      (let () (declare (not safe)) (_%g5414454204%_)))))
              (let () (declare (not safe)) (_%g5414454204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5415054723%_)
                                                  (let ((_%__splice8682886829%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5415054723%_
                                                          '0)))
                                                    (let ((_%tl5419254224%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8682886829%_
                                                              '1)))
                                                          (_%target5419054221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8682886829%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5419254224%_)
                                                          (_%__match8690286903%_
                                                           _%e5414854716%_
                                                           _%hd5414954720%_
                                                           _%tl5415054723%_
                                                           _%__splice8682886829%_
                                                           _%target5419054221%_
                                                           _%tl5419254224%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5414454204%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5414454204%_))))))
                                      (if (gx#stx-pair/null? _%tl5415054723%_)
                                          (let ((_%__splice8682886829%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5415054723%_
                                                  '0)))
                                            (let ((_%tl5419254224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682886829%_
                                                      '1)))
                                                  (_%target5419054221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8682886829%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5419254224%_)
                                                  (_%__match8690286903%_
                                                   _%e5414854716%_
                                                   _%hd5414954720%_
                                                   _%tl5415054723%_
                                                   _%__splice8682886829%_
                                                   _%target5419054221%_
                                                   _%tl5419254224%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5414454204%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5414454204%_)))))))
                          (if (gx#stx-pair/null? _%tl5415054723%_)
                              (let ((_%__splice8682886829%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5415054723%_
                                      '0)))
                                (let ((_%tl5419254224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '1)))
                                      (_%target5419054221%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8682886829%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5419254224%_)
                                      (_%__match8690286903%_
                                       _%e5414854716%_
                                       _%hd5414954720%_
                                       _%tl5415054723%_
                                       _%__splice8682886829%_
                                       _%target5419054221%_
                                       _%tl5419254224%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5414454204%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5414454204%_))))))
                  (let () (declare (not safe)) (_%g5414454204%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx54800%_)
        (let* ((_%__stx8690586906%_ _%stx54800%_)
               (_%g5480454825%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8690586906%_))))
          (let ((_%__kont8690886909%_
                 (lambda (_%L54893%_)
                   (let* ((_%g5490554912%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx54800%_
                            _%L54893%_))
                          (_%E5490754918%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5490554912%_
                                    '([var . parts]))
                             (void)))
                          (_%K5490855134%_
                           (lambda (_%parts54922%_ _%var54924%_)
                             (let ((_%$e54926%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var54924%_))))
                               (if _%$e54926%_
                                   ((lambda (_%te54930%_)
                                      (let _%loop54933%_ ((_%parts54936%_
                                                           _%parts54922%_)
                                                          (_%type54938%_
                                                           (##direct-structure-ref
                                                            _%te54930%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object54939%_
                                                           _%var54924%_)
                                                          (_%nil-check?54940%_
                                                           '#f))
                                        (let* ((_%parts5494154949%_
                                                _%parts54936%_)
                                               (_%else5494354961%_
                                                (lambda () _%object54939%_))
                                               (_%K5494555116%_
                                                (lambda (_%rest54965%_
                                                         _%part54967%_)
                                                  (if (and (not _%nil-check?54940%_)
                                                           (let ((__tmp91861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part54967%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp91861)))
              (let ((_%str54971%_ (symbol->string _%part54967%_)))
                (_%loop54933%_
                 (cons (let ((__tmp91862
                              (substring
                               _%str54971%_
                               '1
                               (string-length _%str54971%_))))
                         (declare (not safe))
                         (##string->symbol __tmp91862))
                       _%rest54965%_)
                 _%type54938%_
                 _%object54939%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type54938%_))
                  (let* ((_%g5497654991%_
                          (lambda (_%g5497754987%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5497754987%_)))
                         (_%g5497555108%_
                          (lambda (_%g5497754995%_)
                            (if (gx#stx-pair? _%g5497754995%_)
                                (let ((_%e5498054998%_
                                       (gx#syntax-e _%g5497754995%_)))
                                  (let ((_%hd5498155002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5498054998%_)))
                                        (_%tl5498255005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5498054998%_))))
                                    (if (gx#stx-pair? _%tl5498255005%_)
                                        (let ((_%e5498355008%_
                                               (gx#syntax-e _%tl5498255005%_)))
                                          (let ((_%hd5498455012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5498355008%_)))
                                                (_%tl5498555015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5498355008%_))))
                                            (if (gx#stx-null? _%tl5498555015%_)
                                                ((lambda (_%L55018%_
                                                          _%L55020%_)
                                                   (if (null? _%rest54965%_)
                                                       (let ((_%$e55050%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type54938%_
                                                               _%part54967%_)))
                                                         (if _%$e55050%_
                                                             ((lambda (_%slot-type55054%_)
                                                                (let* ((_%g5505755065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5505855061%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5505855061%_)))
                               (_%g5505655088%_
                                (lambda (_%g5505855069%_)
                                  ((lambda (_%L55072%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L55072%_ '()))
                                                 (cons (cons _%L55018%_
                                                             (cons _%L55020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5505855069%_))))
                          (_%g5505655088%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx54800%_
                              _%slot-type55054%_)))))
                      _%$e55050%_)
                     (if _%nil-check?54940%_
                         (cons _%L55018%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L55020%_ '()))
                                     '()))
                         (cons _%L55018%_ (cons _%L55020%_ '())))))
               (let ((_%$e55096%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type54938%_
                       _%part54967%_)))
                 (if _%$e55096%_
                     ((lambda (_%type55100%_)
                        (let ((_%type55103%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx54800%_
                                  _%type55100%_))))
                          (if _%nil-check?54940%_
                              (_%loop54933%_
                               _%rest54965%_
                               _%type55103%_
                               (cons _%L55018%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L55020%_ '()))
                                           '()))
                               '#f)
                              (_%loop54933%_
                               _%rest54965%_
                               _%type55103%_
                               (cons _%L55018%_ (cons _%L55020%_ '()))
                               '#f))))
                      _%$e55096%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx54800%_
                      _%L54893%_
                      _%part54967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5498455012%_
                                                 _%hd5498155002%_)
                                                (_%g5497654991%_
                                                 _%g5497754995%_))))
                                        (_%g5497654991%_ _%g5497754995%_))))
                                (_%g5497654991%_ _%g5497754995%_)))))
                    (_%g5497555108%_
                     (list (if _%nil-check?54940%_
                               (cons 'check-nil! (cons _%object54939%_ '()))
                               _%object54939%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx54800%_
                            _%type54938%_
                            _%part54967%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type54938%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx54800%_
                       _%type54938%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5494154949%_)
                                              (let ((_%hd5494655120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5494154949%_)))
                                                    (_%tl5494755123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5494154949%_))))
                                                (let* ((_%part55126%_
                                                        _%hd5494655120%_)
                                                       (_%rest55129%_
                                                        _%tl5494755123%_))
                                                  (_%K5494555116%_
                                                   _%rest55129%_
                                                   _%part55126%_)))
                                              (_%else5494354961%_)))))
                                    _%$e54926%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L54893%_ '())))))))
                     (if (pair? _%g5490554912%_)
                         (let ((_%hd5490955138%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5490554912%_)))
                               (_%tl5491055141%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5490554912%_))))
                           (let* ((_%var55144%_ _%hd5490955138%_)
                                  (_%parts55147%_ _%tl5491055141%_))
                             (_%K5490855134%_ _%parts55147%_ _%var55144%_)))
                         (_%E5490754918%_)))))
                (_%__kont8691086911%_
                 (lambda (_%L54852%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L54852%_ '())))))
            (let ((_%__match8692686927%_
                   (lambda (_%e5480754873%_
                            _%hd5480854877%_
                            _%tl5480954880%_
                            _%e5481054883%_
                            _%hd5481154887%_
                            _%tl5481254890%_)
                     (let ((_%L54893%_ _%hd5481154887%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L54893%_)
                           (_%__kont8690886909%_ _%L54893%_)
                           (_%__kont8691086911%_ _%hd5481154887%_))))))
              (if (gx#stx-pair? _%__stx8690586906%_)
                  (let ((_%e5480754873%_ (gx#syntax-e _%__stx8690586906%_)))
                    (let ((_%tl5480954880%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5480754873%_)))
                          (_%hd5480854877%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5480754873%_))))
                      (if (gx#stx-pair? _%tl5480954880%_)
                          (let ((_%e5481054883%_
                                 (gx#syntax-e _%tl5480954880%_)))
                            (let ((_%tl5481254890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5481054883%_)))
                                  (_%hd5481154887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5481054883%_))))
                              (if (gx#stx-null? _%tl5481254890%_)
                                  (_%__match8692686927%_
                                   _%e5480754873%_
                                   _%hd5480854877%_
                                   _%tl5480954880%_
                                   _%e5481054883%_
                                   _%hd5481154887%_
                                   _%tl5481254890%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5480454825%_)))))
                          (let () (declare (not safe)) (_%g5480454825%_)))))
                  (let () (declare (not safe)) (_%g5480454825%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx55154%_)
        (let* ((_%__stx8694386944%_ _%stx55154%_)
               (_%g5515855187%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8694386944%_))))
          (let ((_%__kont8694686947%_
                 (lambda (_%L55279%_ _%L55281%_)
                   (let* ((_%g5529555302%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55154%_
                            _%L55281%_))
                          (_%E5529755308%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5529555302%_
                                    '([var . parts]))
                             (void)))
                          (_%K5529855538%_
                           (lambda (_%parts55312%_ _%var55314%_)
                             (let ((_%$e55316%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55314%_))))
                               (if _%$e55316%_
                                   ((lambda (_%te55320%_)
                                      (let _%loop55323%_ ((_%parts55326%_
                                                           _%parts55312%_)
                                                          (_%type55328%_
                                                           (##direct-structure-ref
                                                            _%te55320%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55329%_
                                                           _%var55314%_)
                                                          (_%checked-mutator?55330%_
                                                           (##direct-structure-ref
                                                            _%te55320%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?55331%_
                                                           '#f))
                                        (let* ((_%parts5533255339%_
                                                _%parts55326%_)
                                               (_%E5533455345%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5533255339%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5533555520%_
                                                (lambda (_%rest55349%_
                                                         _%part55351%_)
                                                  (if (and (not _%nil-check?55331%_)
                                                           (let ((__tmp91863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55351%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp91863)))
              (let ((_%str55355%_ (symbol->string _%part55351%_)))
                (_%loop55323%_
                 (cons (let ((__tmp91864
                              (substring
                               _%str55355%_
                               '1
                               (string-length _%str55355%_))))
                         (declare (not safe))
                         (##string->symbol __tmp91864))
                       _%rest55349%_)
                 _%type55328%_
                 _%object55329%_
                 _%checked-mutator?55330%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55328%_))
                  (if (null? _%rest55349%_)
                      (let* ((_%g5536255377%_
                              (lambda (_%g5536355373%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5536355373%_)))
                             (_%g5536155434%_
                              (lambda (_%g5536355381%_)
                                (if (gx#stx-pair? _%g5536355381%_)
                                    (let ((_%e5536655384%_
                                           (gx#syntax-e _%g5536355381%_)))
                                      (let ((_%hd5536755388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5536655384%_)))
                                            (_%tl5536855391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5536655384%_))))
                                        (if (gx#stx-pair? _%tl5536855391%_)
                                            (let ((_%e5536955394%_
                                                   (gx#syntax-e
                                                    _%tl5536855391%_)))
                                              (let ((_%hd5537055398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5536955394%_)))
                                                    (_%tl5537155401%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5536955394%_))))
                                                (if (gx#stx-null?
                                                     _%tl5537155401%_)
                                                    ((lambda (_%L55404%_
                                                              _%L55406%_)
                                                       (if _%nil-check?55331%_
                                                           (cons _%L55404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L55406%_ '()))
                               (cons _%L55279%_ '())))
                   (cons _%L55404%_ (cons _%L55406%_ (cons _%L55279%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5537055398%_
                                                     _%hd5536755388%_)
                                                    (_%g5536255377%_
                                                     _%g5536355381%_))))
                                            (_%g5536255377%_
                                             _%g5536355381%_))))
                                    (_%g5536255377%_ _%g5536355381%_)))))
                        (_%g5536155434%_
                         (list _%object55329%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx55154%_
                                _%type55328%_
                                _%part55351%_
                                (if _%checked-mutator?55330%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type55328%_
                                     _%part55351%_)
                                    '#f)))))
                      (let ((_%$e55438%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type55328%_
                              _%part55351%_)))
                        (if _%$e55438%_
                            ((lambda (_%type55442%_)
                               (let* ((_%type55445%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx55154%_
                                          _%type55442%_)))
                                      (_%g5544855463%_
                                       (lambda (_%g5544955459%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5544955459%_)))
                                      (_%g5544755510%_
                                       (lambda (_%g5544955467%_)
                                         (if (gx#stx-pair? _%g5544955467%_)
                                             (let ((_%e5545255470%_
                                                    (gx#syntax-e
                                                     _%g5544955467%_)))
                                               (let ((_%hd5545355474%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5545255470%_)))
                                                     (_%tl5545455477%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5545255470%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5545455477%_)
                                                     (let ((_%e5545555480%_
                                                            (gx#syntax-e
                                                             _%tl5545455477%_)))
                                                       (let ((_%hd5545655484%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5545555480%_)))
                     (_%tl5545755487%_
                      (let () (declare (not safe)) (##cdr _%e5545555480%_))))
                 (if (gx#stx-null? _%tl5545755487%_)
                     ((lambda (_%L55490%_ _%L55492%_)
                        (_%loop55323%_
                         _%rest55349%_
                         _%type55445%_
                         (cons _%L55490%_ (cons _%L55492%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type55445%_
                          _%part55351%_)
                         '#f))
                      _%hd5545655484%_
                      _%hd5545355474%_)
                     (_%g5544855463%_ _%g5544955467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5544855463%_
                                                      _%g5544955467%_))))
                                             (_%g5544855463%_
                                              _%g5544955467%_)))))
                                 (_%g5544755510%_
                                  (list (if _%nil-check?55331%_
                                            (cons 'check-nil!
                                                  (cons _%object55329%_ '()))
                                            _%object55329%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx55154%_
                                         _%type55445%_
                                         _%part55351%_)))))
                             _%$e55438%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx55154%_
                             _%L55281%_
                             _%part55351%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55328%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55154%_
                       _%type55328%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5533255339%_)
                                              (let ((_%hd5533655524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5533255339%_)))
                                                    (_%tl5533755527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5533255339%_))))
                                                (let* ((_%part55530%_
                                                        _%hd5533655524%_)
                                                       (_%rest55533%_
                                                        _%tl5533755527%_))
                                                  (_%K5533555520%_
                                                   _%rest55533%_
                                                   _%part55530%_)))
                                              (_%E5533455345%_)))))
                                    _%$e55316%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx55154%_)))))))
                     (if (pair? _%g5529555302%_)
                         (let ((_%hd5529955542%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5529555302%_)))
                               (_%tl5530055545%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5529555302%_))))
                           (let* ((_%var55548%_ _%hd5529955542%_)
                                  (_%parts55551%_ _%tl5530055545%_))
                             (_%K5529855538%_ _%parts55551%_ _%var55548%_)))
                         (_%E5529755308%_)))))
                (_%__kont8694886949%_
                 (lambda (_%L55224%_ _%L55226%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx55154%_)))))
            (let ((_%__match8697086971%_
                   (lambda (_%e5516255249%_
                            _%hd5516355253%_
                            _%tl5516455256%_
                            _%e5516555259%_
                            _%hd5516655263%_
                            _%tl5516755266%_
                            _%e5516855269%_
                            _%hd5516955273%_
                            _%tl5517055276%_)
                     (let ((_%L55279%_ _%hd5516955273%_)
                           (_%L55281%_ _%hd5516655263%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L55281%_)
                           (_%__kont8694686947%_ _%L55279%_ _%L55281%_)
                           (_%__kont8694886949%_
                            _%hd5516955273%_
                            _%hd5516655263%_))))))
              (if (gx#stx-pair? _%__stx8694386944%_)
                  (let ((_%e5516255249%_ (gx#syntax-e _%__stx8694386944%_)))
                    (let ((_%tl5516455256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5516255249%_)))
                          (_%hd5516355253%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5516255249%_))))
                      (if (gx#stx-pair? _%tl5516455256%_)
                          (let ((_%e5516555259%_
                                 (gx#syntax-e _%tl5516455256%_)))
                            (let ((_%tl5516755266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5516555259%_)))
                                  (_%hd5516655263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5516555259%_))))
                              (if (gx#stx-pair? _%tl5516755266%_)
                                  (let ((_%e5516855269%_
                                         (gx#syntax-e _%tl5516755266%_)))
                                    (let ((_%tl5517055276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5516855269%_)))
                                          (_%hd5516955273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5516855269%_))))
                                      (if (gx#stx-null? _%tl5517055276%_)
                                          (_%__match8697086971%_
                                           _%e5516255249%_
                                           _%hd5516355253%_
                                           _%tl5516455256%_
                                           _%e5516555259%_
                                           _%hd5516655263%_
                                           _%tl5516755266%_
                                           _%e5516855269%_
                                           _%hd5516955273%_
                                           _%tl5517055276%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5515855187%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5515855187%_)))))
                          (let () (declare (not safe)) (_%g5515855187%_)))))
                  (let () (declare (not safe)) (_%g5515855187%_))))))))))
