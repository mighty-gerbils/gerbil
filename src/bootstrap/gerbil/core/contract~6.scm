(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g92317_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92318_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92319_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92322_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92323_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92326_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92327_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92328_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92329_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92333_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92334_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92335_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92336_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g92340_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx50376%_)
        (let* ((_%__stx8641386414%_ _%stx50376%_)
               (_%g5038550594%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8641386414%_))))
          (let ((_%__kont8641686417%_
                 (lambda (_%L51500%_
                          _%L51502%_
                          _%L51503%_
                          _%L51504%_
                          _%L51505%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L51505%_ (cons _%L51504%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L51505%_
                                                       (cons _%L51503%_
                                                             (cons _%L51502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5154851551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5154951554%_)
                  (cons _%g5154851551%_ _%g5154951554%_))
                '()
                _%L51500%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8642086421%_
                 (lambda (_%L51344%_
                          _%L51346%_
                          _%L51347%_
                          _%L51348%_
                          _%L51349%_
                          _%L51350%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L51350%_ (cons _%L51349%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L51350%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L51348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L51350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L51347%_ (cons _%L51346%_ '())))
                           (foldr (lambda (_%g5139451397%_ _%g5139551400%_)
                                    (cons _%g5139451397%_ _%g5139551400%_))
                                  '()
                                  _%L51344%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8642486425%_
                 (lambda (_%L51161%_ _%L51163%_ _%L51164%_ _%L51165%_)
                   (let ((_%meta51202%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50376%_
                             _%L51163%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta51202%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L51165%_
                                           (cons _%L51164%_
                                                 (cons _%L51163%_ '())))
                                     (foldr (lambda (_%g5120651209%_
                                                     _%g5120751212%_)
                                              (cons _%g5120651209%_
                                                    _%g5120751212%_))
                                            '()
                                            _%L51161%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta51202%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L51165%_
                                               (cons _%L51164%_
                                                     (cons _%L51163%_ '())))
                                         (foldr (lambda (_%g5121651219%_
                                                         _%g5121751222%_)
                                                  (cons _%g5121651219%_
                                                        _%g5121751222%_))
                                                '()
                                                _%L51161%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx50376%_
                              _%L51163%_
                              _%meta51202%_))))))
                (_%__kont8642886429%_
                 (lambda (_%L51039%_ _%L51041%_ _%L51042%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L51042%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L51041%_ '())))
                               (foldr (lambda (_%g5106551068%_ _%g5106651071%_)
                                        (cons _%g5106551068%_ _%g5106651071%_))
                                      '()
                                      _%L51039%_)))))
                (_%__kont8643286433%_
                 (lambda (_%L50897%_
                          _%L50899%_
                          _%L50900%_
                          _%L50901%_
                          _%L50902%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50902%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L50901%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L50902%_
                                                       (cons _%L50900%_
                                                             (cons _%L50899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5094350946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5094450949%_)
                  (cons _%g5094350946%_ _%g5094450949%_))
                '()
                _%L50897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8643686437%_
                 (lambda (_%L50755%_ _%L50757%_ _%L50758%_ _%L50759%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L50759%_ _%L50758%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L50757%_
                                                 (foldr (lambda (_%g5078150784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5078250787%_)
                  (cons _%g5078150784%_ _%g5078250787%_))
                '()
                _%L50755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont8644086441%_
                 (lambda (_%L50651%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5066950672%_ _%g5067050675%_)
                                        (cons _%g5066950672%_ _%g5067050675%_))
                                      '()
                                      _%L50651%_))))))
            (let* ((_%__match8674686747%_
                    (lambda (_%e5057450601%_
                             _%hd5057550605%_
                             _%tl5057650608%_
                             _%e5057750611%_
                             _%hd5057850615%_
                             _%tl5057950618%_
                             _%__splice8644286443%_
                             _%target5058050621%_
                             _%tl5058250624%_)
                      (letrec ((_%loop5058350627%_
                                (lambda (_%hd5058150631%_ _%body5058750634%_)
                                  (if (gx#stx-pair? _%hd5058150631%_)
                                      (let ((_%e5058450637%_
                                             (gx#syntax-e _%hd5058150631%_)))
                                        (let ((_%lp-tl5058650644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5058450637%_)))
                                              (_%lp-hd5058550641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5058450637%_))))
                                          (_%loop5058350627%_
                                           _%lp-tl5058650644%_
                                           (cons _%lp-hd5058550641%_
                                                 _%body5058750634%_))))
                                      (let ((_%body5058850647%_
                                             (reverse _%body5058750634%_)))
                                        (_%__kont8644086441%_
                                         _%body5058850647%_))))))
                        (_%loop5058350627%_ _%target5058050621%_ '()))))
                   (_%__match8672486725%_
                    (lambda (_%e5055250685%_
                             _%hd5055350689%_
                             _%tl5055450692%_
                             _%e5055550695%_
                             _%hd5055650699%_
                             _%tl5055750702%_
                             _%e5055850705%_
                             _%hd5055950709%_
                             _%tl5056050712%_
                             _%e5056150715%_
                             _%hd5056250719%_
                             _%tl5056350722%_
                             _%__splice8643886439%_
                             _%target5056450725%_
                             _%tl5056650728%_)
                      (letrec ((_%loop5056750731%_
                                (lambda (_%hd5056550735%_ _%body5057150738%_)
                                  (if (gx#stx-pair? _%hd5056550735%_)
                                      (let ((_%e5056850741%_
                                             (gx#syntax-e _%hd5056550735%_)))
                                        (let ((_%lp-tl5057050748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056850741%_)))
                                              (_%lp-hd5056950745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056850741%_))))
                                          (_%loop5056750731%_
                                           _%lp-tl5057050748%_
                                           (cons _%lp-hd5056950745%_
                                                 _%body5057150738%_))))
                                      (let ((_%body5057250751%_
                                             (reverse _%body5057150738%_)))
                                        (let ((_%L50755%_ _%body5057250751%_)
                                              (_%L50757%_ _%tl5056050712%_)
                                              (_%L50758%_ _%tl5056350722%_)
                                              (_%L50759%_ _%hd5056250719%_))
                                          (if (gx#identifier? _%L50759%_)
                                              (_%__kont8643686437%_
                                               _%L50755%_
                                               _%L50757%_
                                               _%L50758%_
                                               _%L50759%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_)))))))))
                        (_%loop5056750731%_ _%target5056450725%_ '()))))
                   (_%__match8671086711%_
                    (lambda (_%e5055250685%_
                             _%hd5055350689%_
                             _%tl5055450692%_
                             _%e5055550695%_
                             _%hd5055650699%_
                             _%tl5055750702%_
                             _%e5055850705%_
                             _%hd5055950709%_
                             _%tl5056050712%_)
                      (if (gx#stx-pair? _%hd5055950709%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5055950709%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (if (gx#stx-pair/null? _%tl5055750702%_)
                                  (let ((_%__splice8643886439%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5055750702%_
                                          '0)))
                                    (let ((_%tl5056650728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '1)))
                                          (_%target5056450725%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5056650728%_)
                                          (_%__match8672486725%_
                                           _%e5055250685%_
                                           _%hd5055350689%_
                                           _%tl5055450692%_
                                           _%e5055550695%_
                                           _%hd5055650699%_
                                           _%tl5055750702%_
                                           _%e5055850705%_
                                           _%hd5055950709%_
                                           _%tl5056050712%_
                                           _%e5056150715%_
                                           _%hd5056250719%_
                                           _%tl5056350722%_
                                           _%__splice8643886439%_
                                           _%target5056450725%_
                                           _%tl5056650728%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                   (_%__match8669286693%_
                    (lambda (_%e5051850797%_
                             _%hd5051950801%_
                             _%tl5052050804%_
                             _%e5052150807%_
                             _%hd5052250811%_
                             _%tl5052350814%_
                             _%e5052450817%_
                             _%hd5052550821%_
                             _%tl5052650824%_
                             _%e5052750827%_
                             _%hd5052850831%_
                             _%tl5052950834%_
                             _%e5053050837%_
                             _%hd5053150841%_
                             _%tl5053250844%_
                             _%e5053350847%_
                             _%hd5053450851%_
                             _%tl5053550854%_
                             _%e5053650857%_
                             _%hd5053750861%_
                             _%tl5053850864%_
                             _%__splice8643486435%_
                             _%target5053950867%_
                             _%tl5054150870%_)
                      (letrec ((_%loop5054250873%_
                                (lambda (_%hd5054050877%_ _%body5054650880%_)
                                  (if (gx#stx-pair? _%hd5054050877%_)
                                      (let ((_%e5054350883%_
                                             (gx#syntax-e _%hd5054050877%_)))
                                        (let ((_%lp-tl5054550890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5054350883%_)))
                                              (_%lp-hd5054450887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5054350883%_))))
                                          (_%loop5054250873%_
                                           _%lp-tl5054550890%_
                                           (cons _%lp-hd5054450887%_
                                                 _%body5054650880%_))))
                                      (let ((_%body5054750893%_
                                             (reverse _%body5054650880%_)))
                                        (let ((_%L50897%_ _%body5054750893%_)
                                              (_%L50899%_ _%hd5053750861%_)
                                              (_%L50900%_ _%hd5053450851%_)
                                              (_%L50901%_ _%hd5053150841%_)
                                              (_%L50902%_ _%hd5052550821%_))
                                          (if (and (gx#identifier? _%L50902%_)
                                                   (gx#identifier? _%L50899%_)
                                                   (gx#identifier? _%L50900%_)
                                                   (or (gx#free-identifier=?
                                                        _%L50900%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L50900%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L50900%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L50900%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8643286433%_
                                               _%L50897%_
                                               _%L50899%_
                                               _%L50900%_
                                               _%L50901%_
                                               _%L50902%_)
                                              (_%__match8671086711%_
                                               _%e5051850797%_
                                               _%hd5051950801%_
                                               _%tl5052050804%_
                                               _%e5052150807%_
                                               _%hd5052250811%_
                                               _%tl5052350814%_
                                               _%e5052450817%_
                                               _%hd5052550821%_
                                               _%tl5052650824%_))))))))
                        (_%loop5054250873%_ _%target5053950867%_ '()))))
                   (_%__match8663686637%_
                    (lambda (_%e5048950959%_
                             _%hd5049050963%_
                             _%tl5049150966%_
                             _%e5049250969%_
                             _%hd5049350973%_
                             _%tl5049450976%_
                             _%e5049550979%_
                             _%hd5049650983%_
                             _%tl5049750986%_
                             _%e5049850989%_
                             _%hd5049950993%_
                             _%tl5050050996%_
                             _%e5050150999%_
                             _%hd5050251003%_
                             _%tl5050351006%_
                             _%__splice8643086431%_
                             _%target5050451009%_
                             _%tl5050651012%_)
                      (letrec ((_%loop5050751015%_
                                (lambda (_%hd5050551019%_ _%body5051151022%_)
                                  (if (gx#stx-pair? _%hd5050551019%_)
                                      (let ((_%e5050851025%_
                                             (gx#syntax-e _%hd5050551019%_)))
                                        (let ((_%lp-tl5051051032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5050851025%_)))
                                              (_%lp-hd5050951029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5050851025%_))))
                                          (_%loop5050751015%_
                                           _%lp-tl5051051032%_
                                           (cons _%lp-hd5050951029%_
                                                 _%body5051151022%_))))
                                      (let ((_%body5051251035%_
                                             (reverse _%body5051151022%_)))
                                        (let ((_%L51039%_ _%body5051251035%_)
                                              (_%L51041%_ _%hd5050251003%_)
                                              (_%L51042%_ _%hd5049650983%_))
                                          (if (gx#identifier? _%L51042%_)
                                              (_%__kont8642886429%_
                                               _%L51039%_
                                               _%L51041%_
                                               _%L51042%_)
                                              (_%__match8671086711%_
                                               _%e5048950959%_
                                               _%hd5049050963%_
                                               _%tl5049150966%_
                                               _%e5049250969%_
                                               _%hd5049350973%_
                                               _%tl5049450976%_
                                               _%e5049550979%_
                                               _%hd5049650983%_
                                               _%tl5049750986%_))))))))
                        (_%loop5050751015%_ _%target5050451009%_ '()))))
                   (_%__match8661686617%_
                    (lambda (_%e5048950959%_
                             _%hd5049050963%_
                             _%tl5049150966%_
                             _%e5049250969%_
                             _%hd5049350973%_
                             _%tl5049450976%_
                             _%e5049550979%_
                             _%hd5049650983%_
                             _%tl5049750986%_
                             _%e5049850989%_
                             _%hd5049950993%_
                             _%tl5050050996%_)
                      (if (gx#identifier? _%hd5049950993%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92317_|
                               _%hd5049950993%_)
                              (if (gx#stx-pair? _%tl5050050996%_)
                                  (let ((_%e5050150999%_
                                         (gx#syntax-e _%tl5050050996%_)))
                                    (let ((_%tl5050351006%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5050150999%_)))
                                          (_%hd5050251003%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5050150999%_))))
                                      (if (gx#stx-null? _%tl5050351006%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5049450976%_)
                                              (let ((_%__splice8643086431%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5049450976%_
                                                      '0)))
                                                (let ((_%tl5050651012%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643086431%_
                                                          '1)))
                                                      (_%target5050451009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643086431%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5050651012%_)
                                                      (_%__match8663686637%_
                                                       _%e5048950959%_
                                                       _%hd5049050963%_
                                                       _%tl5049150966%_
                                                       _%e5049250969%_
                                                       _%hd5049350973%_
                                                       _%tl5049450976%_
                                                       _%e5049550979%_
                                                       _%hd5049650983%_
                                                       _%tl5049750986%_
                                                       _%e5049850989%_
                                                       _%hd5049950993%_
                                                       _%tl5050050996%_
                                                       _%e5050150999%_
                                                       _%hd5050251003%_
                                                       _%tl5050351006%_
                                                       _%__splice8643086431%_
                                                       _%target5050451009%_
                                                       _%tl5050651012%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5049650983%_)
                                                          (let ((_%e5056150715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5049650983%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5049650983%_)
                                                  (let ((_%e5056150715%_
                                                         (gx#syntax-e
                                                          _%hd5049650983%_)))
                                                    (let ((_%tl5056350722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056150715%_)))
                                                          (_%hd5056250719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056150715%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5038550594%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))
                                          (if (gx#stx-pair? _%tl5050351006%_)
                                              (let ((_%e5053350847%_
                                                     (gx#syntax-e
                                                      _%tl5050351006%_)))
                                                (let ((_%tl5053550854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053350847%_)))
                                                      (_%hd5053450851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053350847%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5053550854%_)
                                                      (let ((_%e5053650857%_
                                                             (gx#syntax-e
                                                              _%tl5053550854%_)))
                                                        (let ((_%tl5053850864%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053650857%_)))
                      (_%hd5053750861%_
                       (let () (declare (not safe)) (##car _%e5053650857%_))))
                  (if (gx#stx-null? _%tl5053850864%_)
                      (if (gx#stx-pair/null? _%tl5049450976%_)
                          (let ((_%__splice8643486435%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5049450976%_
                                  '0)))
                            (let ((_%tl5054150870%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643486435%_ '1)))
                                  (_%target5053950867%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643486435%_
                                      '0))))
                              (if (gx#stx-null? _%tl5054150870%_)
                                  (_%__match8669286693%_
                                   _%e5048950959%_
                                   _%hd5049050963%_
                                   _%tl5049150966%_
                                   _%e5049250969%_
                                   _%hd5049350973%_
                                   _%tl5049450976%_
                                   _%e5049550979%_
                                   _%hd5049650983%_
                                   _%tl5049750986%_
                                   _%e5049850989%_
                                   _%hd5049950993%_
                                   _%tl5050050996%_
                                   _%e5050150999%_
                                   _%hd5050251003%_
                                   _%tl5050351006%_
                                   _%e5053350847%_
                                   _%hd5053450851%_
                                   _%tl5053550854%_
                                   _%e5053650857%_
                                   _%hd5053750861%_
                                   _%tl5053850864%_
                                   _%__splice8643486435%_
                                   _%target5053950867%_
                                   _%tl5054150870%_)
                                  (if (gx#stx-pair? _%hd5049650983%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5049650983%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))
                          (if (gx#stx-pair? _%hd5049650983%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5049650983%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                      (if (gx#stx-pair? _%hd5049650983%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5049650983%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (if (gx#stx-pair/null? _%tl5049450976%_)
                                  (let ((_%__splice8643886439%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5049450976%_
                                          '0)))
                                    (let ((_%tl5056650728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '1)))
                                          (_%target5056450725%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5056650728%_)
                                          (_%__match8672486725%_
                                           _%e5048950959%_
                                           _%hd5049050963%_
                                           _%tl5049150966%_
                                           _%e5049250969%_
                                           _%hd5049350973%_
                                           _%tl5049450976%_
                                           _%e5049550979%_
                                           _%hd5049650983%_
                                           _%tl5049750986%_
                                           _%e5056150715%_
                                           _%hd5056250719%_
                                           _%tl5056350722%_
                                           _%__splice8643886439%_
                                           _%target5056450725%_
                                           _%tl5056650728%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_))))))
              (if (gx#stx-pair? _%hd5049650983%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5049650983%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5049450976%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5049450976%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5048950959%_
                                   _%hd5049050963%_
                                   _%tl5049150966%_
                                   _%e5049250969%_
                                   _%hd5049350973%_
                                   _%tl5049450976%_
                                   _%e5049550979%_
                                   _%hd5049650983%_
                                   _%tl5049750986%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5049650983%_)
                                                  (let ((_%e5056150715%_
                                                         (gx#syntax-e
                                                          _%hd5049650983%_)))
                                                    (let ((_%tl5056350722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056150715%_)))
                                                          (_%hd5056250719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056150715%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5049450976%_)
                                                          (let ((_%__splice8643886439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5049450976%_ '0)))
                    (let ((_%tl5056650728%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '1)))
                          (_%target5056450725%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '0))))
                      (if (gx#stx-null? _%tl5056650728%_)
                          (_%__match8672486725%_
                           _%e5048950959%_
                           _%hd5049050963%_
                           _%tl5049150966%_
                           _%e5049250969%_
                           _%hd5049350973%_
                           _%tl5049450976%_
                           _%e5049550979%_
                           _%hd5049650983%_
                           _%tl5049750986%_
                           _%e5056150715%_
                           _%hd5056250719%_
                           _%tl5056350722%_
                           _%__splice8643886439%_
                           _%target5056450725%_
                           _%tl5056650728%_)
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))))
                                  (if (gx#stx-pair? _%hd5049650983%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5049650983%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5049450976%_)
                                              (let ((_%__splice8643886439%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5049450976%_
                                                      '0)))
                                                (let ((_%tl5056650728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '1)))
                                                      (_%target5056450725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5056650728%_)
                                                      (_%__match8672486725%_
                                                       _%e5048950959%_
                                                       _%hd5049050963%_
                                                       _%tl5049150966%_
                                                       _%e5049250969%_
                                                       _%hd5049350973%_
                                                       _%tl5049450976%_
                                                       _%e5049550979%_
                                                       _%hd5049650983%_
                                                       _%tl5049750986%_
                                                       _%e5056150715%_
                                                       _%hd5056250719%_
                                                       _%tl5056350722%_
                                                       _%__splice8643886439%_
                                                       _%target5056450725%_
                                                       _%tl5056650728%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5038550594%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                              (if (gx#stx-pair? _%hd5049650983%_)
                                  (let ((_%e5056150715%_
                                         (gx#syntax-e _%hd5049650983%_)))
                                    (let ((_%tl5056350722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056150715%_)))
                                          (_%hd5056250719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056150715%_))))
                                      (if (gx#stx-pair/null? _%tl5049450976%_)
                                          (let ((_%__splice8643886439%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5049450976%_
                                                  '0)))
                                            (let ((_%tl5056650728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8643886439%_
                                                      '1)))
                                                  (_%target5056450725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8643886439%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5056650728%_)
                                                  (_%__match8672486725%_
                                                   _%e5048950959%_
                                                   _%hd5049050963%_
                                                   _%tl5049150966%_
                                                   _%e5049250969%_
                                                   _%hd5049350973%_
                                                   _%tl5049450976%_
                                                   _%e5049550979%_
                                                   _%hd5049650983%_
                                                   _%tl5049750986%_
                                                   _%e5056150715%_
                                                   _%hd5056250719%_
                                                   _%tl5056350722%_
                                                   _%__splice8643886439%_
                                                   _%target5056450725%_
                                                   _%tl5056650728%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                          (if (gx#stx-pair? _%hd5049650983%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5049650983%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (if (gx#stx-pair/null? _%tl5049450976%_)
                                      (let ((_%__splice8643886439%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5049450976%_
                                              '0)))
                                        (let ((_%tl5056650728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8643886439%_
                                                  '1)))
                                              (_%target5056450725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8643886439%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5056650728%_)
                                              (_%__match8672486725%_
                                               _%e5048950959%_
                                               _%hd5049050963%_
                                               _%tl5049150966%_
                                               _%e5049250969%_
                                               _%hd5049350973%_
                                               _%tl5049450976%_
                                               _%e5049550979%_
                                               _%hd5049650983%_
                                               _%tl5049750986%_
                                               _%e5056150715%_
                                               _%hd5056250719%_
                                               _%tl5056350722%_
                                               _%__splice8643886439%_
                                               _%target5056450725%_
                                               _%tl5056650728%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_))))))
                   (_%__match8659286593%_
                    (lambda (_%e5046251081%_
                             _%hd5046351085%_
                             _%tl5046451088%_
                             _%e5046551091%_
                             _%hd5046651095%_
                             _%tl5046751098%_
                             _%e5046851101%_
                             _%hd5046951105%_
                             _%tl5047051108%_
                             _%e5047151111%_
                             _%hd5047251115%_
                             _%tl5047351118%_
                             _%e5047451121%_
                             _%hd5047551125%_
                             _%tl5047651128%_
                             _%__splice8642686427%_
                             _%target5047751131%_
                             _%tl5047951134%_)
                      (letrec ((_%loop5048051137%_
                                (lambda (_%hd5047851141%_ _%body5048451144%_)
                                  (if (gx#stx-pair? _%hd5047851141%_)
                                      (let ((_%e5048151147%_
                                             (gx#syntax-e _%hd5047851141%_)))
                                        (let ((_%lp-tl5048351154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5048151147%_)))
                                              (_%lp-hd5048251151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5048151147%_))))
                                          (_%loop5048051137%_
                                           _%lp-tl5048351154%_
                                           (cons _%lp-hd5048251151%_
                                                 _%body5048451144%_))))
                                      (let ((_%body5048551157%_
                                             (reverse _%body5048451144%_)))
                                        (let ((_%L51161%_ _%body5048551157%_)
                                              (_%L51163%_ _%hd5047551125%_)
                                              (_%L51164%_ _%hd5047251115%_)
                                              (_%L51165%_ _%hd5046951105%_))
                                          (if (and (gx#identifier? _%L51165%_)
                                                   (gx#identifier? _%L51163%_)
                                                   (gx#identifier? _%L51164%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51164%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51164%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51164%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51164%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8642486425%_
                                               _%L51161%_
                                               _%L51163%_
                                               _%L51164%_
                                               _%L51165%_)
                                              (_%__match8661686617%_
                                               _%e5046251081%_
                                               _%hd5046351085%_
                                               _%tl5046451088%_
                                               _%e5046551091%_
                                               _%hd5046651095%_
                                               _%tl5046751098%_
                                               _%e5046851101%_
                                               _%hd5046951105%_
                                               _%tl5047051108%_
                                               _%e5047151111%_
                                               _%hd5047251115%_
                                               _%tl5047351118%_))))))))
                        (_%loop5048051137%_ _%target5047751131%_ '()))))
                   (_%__match8655286553%_
                    (lambda (_%e5042551234%_
                             _%hd5042651238%_
                             _%tl5042751241%_
                             _%e5042851244%_
                             _%hd5042951248%_
                             _%tl5043051251%_
                             _%e5043151254%_
                             _%hd5043251258%_
                             _%tl5043351261%_
                             _%e5043451264%_
                             _%hd5043551268%_
                             _%tl5043651271%_
                             _%e5043751274%_
                             _%hd5043851278%_
                             _%tl5043951281%_
                             _%e5044051284%_
                             _%hd5044151288%_
                             _%tl5044251291%_
                             _%e5044351294%_
                             _%hd5044451298%_
                             _%tl5044551301%_
                             _%e5044651304%_
                             _%hd5044751308%_
                             _%tl5044851311%_
                             _%__splice8642286423%_
                             _%target5044951314%_
                             _%tl5045151317%_)
                      (letrec ((_%loop5045251320%_
                                (lambda (_%hd5045051324%_ _%body5045651327%_)
                                  (if (gx#stx-pair? _%hd5045051324%_)
                                      (let ((_%e5045351330%_
                                             (gx#syntax-e _%hd5045051324%_)))
                                        (let ((_%lp-tl5045551337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5045351330%_)))
                                              (_%lp-hd5045451334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5045351330%_))))
                                          (_%loop5045251320%_
                                           _%lp-tl5045551337%_
                                           (cons _%lp-hd5045451334%_
                                                 _%body5045651327%_))))
                                      (let ((_%body5045751340%_
                                             (reverse _%body5045651327%_)))
                                        (let ((_%L51344%_ _%body5045751340%_)
                                              (_%L51346%_ _%hd5044751308%_)
                                              (_%L51347%_ _%hd5044451298%_)
                                              (_%L51348%_ _%hd5044151288%_)
                                              (_%L51349%_ _%hd5043551268%_)
                                              (_%L51350%_ _%hd5043251258%_))
                                          (if (and (gx#identifier? _%L51350%_)
                                                   (gx#identifier? _%L51346%_)
                                                   (gx#identifier? _%L51347%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51347%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51347%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51347%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51347%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8642086421%_
                                               _%L51344%_
                                               _%L51346%_
                                               _%L51347%_
                                               _%L51348%_
                                               _%L51349%_
                                               _%L51350%_)
                                              (_%__match8661686617%_
                                               _%e5042551234%_
                                               _%hd5042651238%_
                                               _%tl5042751241%_
                                               _%e5042851244%_
                                               _%hd5042951248%_
                                               _%tl5043051251%_
                                               _%e5043151254%_
                                               _%hd5043251258%_
                                               _%tl5043351261%_
                                               _%e5043451264%_
                                               _%hd5043551268%_
                                               _%tl5043651271%_))))))))
                        (_%loop5045251320%_ _%target5044951314%_ '()))))
                   (_%__match8652086521%_
                    (lambda (_%e5042551234%_
                             _%hd5042651238%_
                             _%tl5042751241%_
                             _%e5042851244%_
                             _%hd5042951248%_
                             _%tl5043051251%_
                             _%e5043151254%_
                             _%hd5043251258%_
                             _%tl5043351261%_
                             _%e5043451264%_
                             _%hd5043551268%_
                             _%tl5043651271%_
                             _%e5043751274%_
                             _%hd5043851278%_
                             _%tl5043951281%_)
                      (if (gx#identifier? _%hd5043851278%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g92318_|
                               _%hd5043851278%_)
                              (if (gx#stx-pair? _%tl5043951281%_)
                                  (let ((_%e5044051284%_
                                         (gx#syntax-e _%tl5043951281%_)))
                                    (let ((_%tl5044251291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5044051284%_)))
                                          (_%hd5044151288%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5044051284%_))))
                                      (if (gx#stx-pair? _%tl5044251291%_)
                                          (let ((_%e5044351294%_
                                                 (gx#syntax-e
                                                  _%tl5044251291%_)))
                                            (let ((_%tl5044551301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5044351294%_)))
                                                  (_%hd5044451298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5044351294%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5044551301%_)
                                                  (let ((_%e5044651304%_
                                                         (gx#syntax-e
                                                          _%tl5044551301%_)))
                                                    (let ((_%tl5044851311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5044651304%_)))
                                                          (_%hd5044751308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5044651304%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5044851311%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5043051251%_)
                                                              (let ((_%__splice8642286423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5043051251%_
                              '0)))
                        (let ((_%tl5045151317%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8642286423%_ '1)))
                              (_%target5044951314%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8642286423%_ '0))))
                          (if (gx#stx-null? _%tl5045151317%_)
                              (_%__match8655286553%_
                               _%e5042551234%_
                               _%hd5042651238%_
                               _%tl5042751241%_
                               _%e5042851244%_
                               _%hd5042951248%_
                               _%tl5043051251%_
                               _%e5043151254%_
                               _%hd5043251258%_
                               _%tl5043351261%_
                               _%e5043451264%_
                               _%hd5043551268%_
                               _%tl5043651271%_
                               _%e5043751274%_
                               _%hd5043851278%_
                               _%tl5043951281%_
                               _%e5044051284%_
                               _%hd5044151288%_
                               _%tl5044251291%_
                               _%e5044351294%_
                               _%hd5044451298%_
                               _%tl5044551301%_
                               _%e5044651304%_
                               _%hd5044751308%_
                               _%tl5044851311%_
                               _%__splice8642286423%_
                               _%target5044951314%_
                               _%tl5045151317%_)
                              (if (gx#stx-pair? _%hd5043251258%_)
                                  (let ((_%e5056150715%_
                                         (gx#syntax-e _%hd5043251258%_)))
                                    (let ((_%tl5056350722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056150715%_)))
                                          (_%hd5056250719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056150715%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))))
                      (if (gx#stx-pair? _%hd5043251258%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5043251258%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                  (if (gx#stx-pair? _%hd5043251258%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5043251258%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (if (gx#stx-pair/null? _%tl5043051251%_)
                              (let ((_%__splice8643886439%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5043051251%_
                                      '0)))
                                (let ((_%tl5056650728%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '1)))
                                      (_%target5056450725%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056650728%_)
                                      (_%__match8672486725%_
                                       _%e5042551234%_
                                       _%hd5042651238%_
                                       _%tl5042751241%_
                                       _%e5042851244%_
                                       _%hd5042951248%_
                                       _%tl5043051251%_
                                       _%e5043151254%_
                                       _%hd5043251258%_
                                       _%tl5043351261%_
                                       _%e5056150715%_
                                       _%hd5056250719%_
                                       _%tl5056350722%_
                                       _%__splice8643886439%_
                                       _%target5056450725%_
                                       _%tl5056650728%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5043551268%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92317_|
                                                           _%hd5043551268%_)
                                                          (if (gx#stx-null?
                                                               _%tl5044551301%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5043051251%_)
                          (let ((_%__splice8643486435%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5043051251%_
                                  '0)))
                            (let ((_%tl5054150870%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643486435%_ '1)))
                                  (_%target5053950867%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643486435%_
                                      '0))))
                              (if (gx#stx-null? _%tl5054150870%_)
                                  (_%__match8669286693%_
                                   _%e5042551234%_
                                   _%hd5042651238%_
                                   _%tl5042751241%_
                                   _%e5042851244%_
                                   _%hd5042951248%_
                                   _%tl5043051251%_
                                   _%e5043151254%_
                                   _%hd5043251258%_
                                   _%tl5043351261%_
                                   _%e5043451264%_
                                   _%hd5043551268%_
                                   _%tl5043651271%_
                                   _%e5043751274%_
                                   _%hd5043851278%_
                                   _%tl5043951281%_
                                   _%e5044051284%_
                                   _%hd5044151288%_
                                   _%tl5044251291%_
                                   _%e5044351294%_
                                   _%hd5044451298%_
                                   _%tl5044551301%_
                                   _%__splice8643486435%_
                                   _%target5053950867%_
                                   _%tl5054150870%_)
                                  (if (gx#stx-pair? _%hd5043251258%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5043251258%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))
                          (if (gx#stx-pair? _%hd5043251258%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5043251258%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                      (if (gx#stx-pair? _%hd5043251258%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5043251258%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (if (gx#stx-pair/null? _%tl5043051251%_)
                                  (let ((_%__splice8643886439%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5043051251%_
                                          '0)))
                                    (let ((_%tl5056650728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '1)))
                                          (_%target5056450725%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5056650728%_)
                                          (_%__match8672486725%_
                                           _%e5042551234%_
                                           _%hd5042651238%_
                                           _%tl5042751241%_
                                           _%e5042851244%_
                                           _%hd5042951248%_
                                           _%tl5043051251%_
                                           _%e5043151254%_
                                           _%hd5043251258%_
                                           _%tl5043351261%_
                                           _%e5056150715%_
                                           _%hd5056250719%_
                                           _%tl5056350722%_
                                           _%__splice8643886439%_
                                           _%target5056450725%_
                                           _%tl5056650728%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                  (if (gx#stx-pair? _%hd5043251258%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5043251258%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (if (gx#stx-pair/null? _%tl5043051251%_)
                              (let ((_%__splice8643886439%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5043051251%_
                                      '0)))
                                (let ((_%tl5056650728%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '1)))
                                      (_%target5056450725%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056650728%_)
                                      (_%__match8672486725%_
                                       _%e5042551234%_
                                       _%hd5042651238%_
                                       _%tl5042751241%_
                                       _%e5042851244%_
                                       _%hd5042951248%_
                                       _%tl5043051251%_
                                       _%e5043151254%_
                                       _%hd5043251258%_
                                       _%tl5043351261%_
                                       _%e5056150715%_
                                       _%hd5056250719%_
                                       _%tl5056350722%_
                                       _%__splice8643886439%_
                                       _%target5056450725%_
                                       _%tl5056650728%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
              (if (gx#stx-pair? _%hd5043251258%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5043251258%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5043051251%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5043051251%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5042551234%_
                                   _%hd5042651238%_
                                   _%tl5042751241%_
                                   _%e5042851244%_
                                   _%hd5042951248%_
                                   _%tl5043051251%_
                                   _%e5043151254%_
                                   _%hd5043251258%_
                                   _%tl5043351261%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5043251258%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5043251258%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5043051251%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5043051251%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5042551234%_
                       _%hd5042651238%_
                       _%tl5042751241%_
                       _%e5042851244%_
                       _%hd5042951248%_
                       _%tl5043051251%_
                       _%e5043151254%_
                       _%hd5043251258%_
                       _%tl5043351261%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))))
                                  (if (gx#stx-null? _%tl5043951281%_)
                                      (if (gx#stx-pair/null? _%tl5043051251%_)
                                          (let ((_%__splice8642686427%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5043051251%_
                                                  '0)))
                                            (let ((_%tl5047951134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8642686427%_
                                                      '1)))
                                                  (_%target5047751131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8642686427%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5047951134%_)
                                                  (_%__match8659286593%_
                                                   _%e5042551234%_
                                                   _%hd5042651238%_
                                                   _%tl5042751241%_
                                                   _%e5042851244%_
                                                   _%hd5042951248%_
                                                   _%tl5043051251%_
                                                   _%e5043151254%_
                                                   _%hd5043251258%_
                                                   _%tl5043351261%_
                                                   _%e5043451264%_
                                                   _%hd5043551268%_
                                                   _%tl5043651271%_
                                                   _%e5043751274%_
                                                   _%hd5043851278%_
                                                   _%tl5043951281%_
                                                   _%__splice8642686427%_
                                                   _%target5047751131%_
                                                   _%tl5047951134%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5043251258%_)
                                                      (let ((_%e5056150715%_
                                                             (gx#syntax-e
                                                              _%hd5043251258%_)))
                                                        (let ((_%tl5056350722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5056150715%_)))
                      (_%hd5056250719%_
                       (let () (declare (not safe)) (##car _%e5056150715%_))))
                  (let () (declare (not safe)) (_%g5038550594%_))))
              (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5043251258%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5043251258%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                      (if (gx#stx-pair? _%hd5043251258%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5043251258%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5043051251%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5043051251%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5042551234%_
                                                           _%hd5042651238%_
                                                           _%tl5042751241%_
                                                           _%e5042851244%_
                                                           _%hd5042951248%_
                                                           _%tl5043051251%_
                                                           _%e5043151254%_
                                                           _%hd5043251258%_
                                                           _%tl5043351261%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                              (if (gx#stx-null? _%tl5043951281%_)
                                  (if (gx#stx-pair/null? _%tl5043051251%_)
                                      (let ((_%__splice8642686427%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5043051251%_
                                              '0)))
                                        (let ((_%tl5047951134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8642686427%_
                                                  '1)))
                                              (_%target5047751131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8642686427%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5047951134%_)
                                              (_%__match8659286593%_
                                               _%e5042551234%_
                                               _%hd5042651238%_
                                               _%tl5042751241%_
                                               _%e5042851244%_
                                               _%hd5042951248%_
                                               _%tl5043051251%_
                                               _%e5043151254%_
                                               _%hd5043251258%_
                                               _%tl5043351261%_
                                               _%e5043451264%_
                                               _%hd5043551268%_
                                               _%tl5043651271%_
                                               _%e5043751274%_
                                               _%hd5043851278%_
                                               _%tl5043951281%_
                                               _%__splice8642686427%_
                                               _%target5047751131%_
                                               _%tl5047951134%_)
                                              (if (gx#stx-pair?
                                                   _%hd5043251258%_)
                                                  (let ((_%e5056150715%_
                                                         (gx#syntax-e
                                                          _%hd5043251258%_)))
                                                    (let ((_%tl5056350722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056150715%_)))
                                                          (_%hd5056250719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056150715%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5038550594%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))))
                                      (if (gx#stx-pair? _%hd5043251258%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5043251258%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                  (if (gx#identifier? _%hd5043551268%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92317_|
                                           _%hd5043551268%_)
                                          (if (gx#stx-pair? _%tl5043951281%_)
                                              (let ((_%e5053350847%_
                                                     (gx#syntax-e
                                                      _%tl5043951281%_)))
                                                (let ((_%tl5053550854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053350847%_)))
                                                      (_%hd5053450851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053350847%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5053550854%_)
                                                      (let ((_%e5053650857%_
                                                             (gx#syntax-e
                                                              _%tl5053550854%_)))
                                                        (let ((_%tl5053850864%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5053650857%_)))
                      (_%hd5053750861%_
                       (let () (declare (not safe)) (##car _%e5053650857%_))))
                  (if (gx#stx-null? _%tl5053850864%_)
                      (if (gx#stx-pair/null? _%tl5043051251%_)
                          (let ((_%__splice8643486435%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5043051251%_
                                  '0)))
                            (let ((_%tl5054150870%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643486435%_ '1)))
                                  (_%target5053950867%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643486435%_
                                      '0))))
                              (if (gx#stx-null? _%tl5054150870%_)
                                  (_%__match8669286693%_
                                   _%e5042551234%_
                                   _%hd5042651238%_
                                   _%tl5042751241%_
                                   _%e5042851244%_
                                   _%hd5042951248%_
                                   _%tl5043051251%_
                                   _%e5043151254%_
                                   _%hd5043251258%_
                                   _%tl5043351261%_
                                   _%e5043451264%_
                                   _%hd5043551268%_
                                   _%tl5043651271%_
                                   _%e5043751274%_
                                   _%hd5043851278%_
                                   _%tl5043951281%_
                                   _%e5053350847%_
                                   _%hd5053450851%_
                                   _%tl5053550854%_
                                   _%e5053650857%_
                                   _%hd5053750861%_
                                   _%tl5053850864%_
                                   _%__splice8643486435%_
                                   _%target5053950867%_
                                   _%tl5054150870%_)
                                  (if (gx#stx-pair? _%hd5043251258%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5043251258%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))
                          (if (gx#stx-pair? _%hd5043251258%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5043251258%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                      (if (gx#stx-pair? _%hd5043251258%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5043251258%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (if (gx#stx-pair/null? _%tl5043051251%_)
                                  (let ((_%__splice8643886439%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5043051251%_
                                          '0)))
                                    (let ((_%tl5056650728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '1)))
                                          (_%target5056450725%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5056650728%_)
                                          (_%__match8672486725%_
                                           _%e5042551234%_
                                           _%hd5042651238%_
                                           _%tl5042751241%_
                                           _%e5042851244%_
                                           _%hd5042951248%_
                                           _%tl5043051251%_
                                           _%e5043151254%_
                                           _%hd5043251258%_
                                           _%tl5043351261%_
                                           _%e5056150715%_
                                           _%hd5056250719%_
                                           _%tl5056350722%_
                                           _%__splice8643886439%_
                                           _%target5056450725%_
                                           _%tl5056650728%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_))))))
              (if (gx#stx-pair? _%hd5043251258%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5043251258%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5043051251%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5043051251%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5042551234%_
                                   _%hd5042651238%_
                                   _%tl5042751241%_
                                   _%e5042851244%_
                                   _%hd5042951248%_
                                   _%tl5043051251%_
                                   _%e5043151254%_
                                   _%hd5043251258%_
                                   _%tl5043351261%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5043251258%_)
                                                  (let ((_%e5056150715%_
                                                         (gx#syntax-e
                                                          _%hd5043251258%_)))
                                                    (let ((_%tl5056350722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056150715%_)))
                                                          (_%hd5056250719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056150715%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5043051251%_)
                                                          (let ((_%__splice8643886439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5043051251%_ '0)))
                    (let ((_%tl5056650728%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '1)))
                          (_%target5056450725%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '0))))
                      (if (gx#stx-null? _%tl5056650728%_)
                          (_%__match8672486725%_
                           _%e5042551234%_
                           _%hd5042651238%_
                           _%tl5042751241%_
                           _%e5042851244%_
                           _%hd5042951248%_
                           _%tl5043051251%_
                           _%e5043151254%_
                           _%hd5043251258%_
                           _%tl5043351261%_
                           _%e5056150715%_
                           _%hd5056250719%_
                           _%tl5056350722%_
                           _%__splice8643886439%_
                           _%target5056450725%_
                           _%tl5056650728%_)
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))
                                          (if (gx#stx-pair? _%hd5043251258%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5043251258%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5043051251%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5043051251%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5042551234%_
                       _%hd5042651238%_
                       _%tl5042751241%_
                       _%e5042851244%_
                       _%hd5042951248%_
                       _%tl5043051251%_
                       _%e5043151254%_
                       _%hd5043251258%_
                       _%tl5043351261%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                      (if (gx#stx-pair? _%hd5043251258%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5043251258%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5043051251%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5043051251%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5042551234%_
                                                           _%hd5042651238%_
                                                           _%tl5042751241%_
                                                           _%e5042851244%_
                                                           _%hd5042951248%_
                                                           _%tl5043051251%_
                                                           _%e5043151254%_
                                                           _%hd5043251258%_
                                                           _%tl5043351261%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))))
                          (if (gx#stx-null? _%tl5043951281%_)
                              (if (gx#stx-pair/null? _%tl5043051251%_)
                                  (let ((_%__splice8642686427%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5043051251%_
                                          '0)))
                                    (let ((_%tl5047951134%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8642686427%_
                                              '1)))
                                          (_%target5047751131%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8642686427%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5047951134%_)
                                          (_%__match8659286593%_
                                           _%e5042551234%_
                                           _%hd5042651238%_
                                           _%tl5042751241%_
                                           _%e5042851244%_
                                           _%hd5042951248%_
                                           _%tl5043051251%_
                                           _%e5043151254%_
                                           _%hd5043251258%_
                                           _%tl5043351261%_
                                           _%e5043451264%_
                                           _%hd5043551268%_
                                           _%tl5043651271%_
                                           _%e5043751274%_
                                           _%hd5043851278%_
                                           _%tl5043951281%_
                                           _%__splice8642686427%_
                                           _%target5047751131%_
                                           _%tl5047951134%_)
                                          (if (gx#stx-pair? _%hd5043251258%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5043251258%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))))
                                  (if (gx#stx-pair? _%hd5043251258%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5043251258%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                              (if (gx#identifier? _%hd5043551268%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92317_|
                                       _%hd5043551268%_)
                                      (if (gx#stx-pair? _%tl5043951281%_)
                                          (let ((_%e5053350847%_
                                                 (gx#syntax-e
                                                  _%tl5043951281%_)))
                                            (let ((_%tl5053550854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053350847%_)))
                                                  (_%hd5053450851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053350847%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5053550854%_)
                                                  (let ((_%e5053650857%_
                                                         (gx#syntax-e
                                                          _%tl5053550854%_)))
                                                    (let ((_%tl5053850864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5053650857%_)))
                                                          (_%hd5053750861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5053650857%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5053850864%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5043051251%_)
                                                              (let ((_%__splice8643486435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5043051251%_
                              '0)))
                        (let ((_%tl5054150870%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643486435%_ '1)))
                              (_%target5053950867%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643486435%_ '0))))
                          (if (gx#stx-null? _%tl5054150870%_)
                              (_%__match8669286693%_
                               _%e5042551234%_
                               _%hd5042651238%_
                               _%tl5042751241%_
                               _%e5042851244%_
                               _%hd5042951248%_
                               _%tl5043051251%_
                               _%e5043151254%_
                               _%hd5043251258%_
                               _%tl5043351261%_
                               _%e5043451264%_
                               _%hd5043551268%_
                               _%tl5043651271%_
                               _%e5043751274%_
                               _%hd5043851278%_
                               _%tl5043951281%_
                               _%e5053350847%_
                               _%hd5053450851%_
                               _%tl5053550854%_
                               _%e5053650857%_
                               _%hd5053750861%_
                               _%tl5053850864%_
                               _%__splice8643486435%_
                               _%target5053950867%_
                               _%tl5054150870%_)
                              (if (gx#stx-pair? _%hd5043251258%_)
                                  (let ((_%e5056150715%_
                                         (gx#syntax-e _%hd5043251258%_)))
                                    (let ((_%tl5056350722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056150715%_)))
                                          (_%hd5056250719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056150715%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))))
                      (if (gx#stx-pair? _%hd5043251258%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5043251258%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                  (if (gx#stx-pair? _%hd5043251258%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5043251258%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (if (gx#stx-pair/null? _%tl5043051251%_)
                              (let ((_%__splice8643886439%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5043051251%_
                                      '0)))
                                (let ((_%tl5056650728%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '1)))
                                      (_%target5056450725%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056650728%_)
                                      (_%__match8672486725%_
                                       _%e5042551234%_
                                       _%hd5042651238%_
                                       _%tl5042751241%_
                                       _%e5042851244%_
                                       _%hd5042951248%_
                                       _%tl5043051251%_
                                       _%e5043151254%_
                                       _%hd5043251258%_
                                       _%tl5043351261%_
                                       _%e5056150715%_
                                       _%hd5056250719%_
                                       _%tl5056350722%_
                                       _%__splice8643886439%_
                                       _%target5056450725%_
                                       _%tl5056650728%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5043251258%_)
                                                      (let ((_%e5056150715%_
                                                             (gx#syntax-e
                                                              _%hd5043251258%_)))
                                                        (let ((_%tl5056350722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5056150715%_)))
                      (_%hd5056250719%_
                       (let () (declare (not safe)) (##car _%e5056150715%_))))
                  (if (gx#stx-pair/null? _%tl5043051251%_)
                      (let ((_%__splice8643886439%_
                             (gx#syntax-split-splice->vector
                              _%tl5043051251%_
                              '0)))
                        (let ((_%tl5056650728%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '1)))
                              (_%target5056450725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '0))))
                          (if (gx#stx-null? _%tl5056650728%_)
                              (_%__match8672486725%_
                               _%e5042551234%_
                               _%hd5042651238%_
                               _%tl5042751241%_
                               _%e5042851244%_
                               _%hd5042951248%_
                               _%tl5043051251%_
                               _%e5043151254%_
                               _%hd5043251258%_
                               _%tl5043351261%_
                               _%e5056150715%_
                               _%hd5056250719%_
                               _%tl5056350722%_
                               _%__splice8643886439%_
                               _%target5056450725%_
                               _%tl5056650728%_)
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5043251258%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5043251258%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5043051251%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5043051251%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5042551234%_
                       _%hd5042651238%_
                       _%tl5042751241%_
                       _%e5042851244%_
                       _%hd5042951248%_
                       _%tl5043051251%_
                       _%e5043151254%_
                       _%hd5043251258%_
                       _%tl5043351261%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                      (if (gx#stx-pair? _%hd5043251258%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5043251258%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5043051251%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5043051251%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5042551234%_
                                                           _%hd5042651238%_
                                                           _%tl5042751241%_
                                                           _%e5042851244%_
                                                           _%hd5042951248%_
                                                           _%tl5043051251%_
                                                           _%e5043151254%_
                                                           _%hd5043251258%_
                                                           _%tl5043351261%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                  (if (gx#stx-pair? _%hd5043251258%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5043251258%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5043051251%_)
                                              (let ((_%__splice8643886439%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5043051251%_
                                                      '0)))
                                                (let ((_%tl5056650728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '1)))
                                                      (_%target5056450725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5056650728%_)
                                                      (_%__match8672486725%_
                                                       _%e5042551234%_
                                                       _%hd5042651238%_
                                                       _%tl5042751241%_
                                                       _%e5042851244%_
                                                       _%hd5042951248%_
                                                       _%tl5043051251%_
                                                       _%e5043151254%_
                                                       _%hd5043251258%_
                                                       _%tl5043351261%_
                                                       _%e5056150715%_
                                                       _%hd5056250719%_
                                                       _%tl5056350722%_
                                                       _%__splice8643886439%_
                                                       _%target5056450725%_
                                                       _%tl5056650728%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5038550594%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))))
                   (_%__match8649086491%_
                    (lambda (_%e5039251410%_
                             _%hd5039351414%_
                             _%tl5039451417%_
                             _%e5039551420%_
                             _%hd5039651424%_
                             _%tl5039751427%_
                             _%e5039851430%_
                             _%hd5039951434%_
                             _%tl5040051437%_
                             _%e5040151440%_
                             _%hd5040251444%_
                             _%tl5040351447%_
                             _%e5040451450%_
                             _%hd5040551454%_
                             _%tl5040651457%_
                             _%e5040751460%_
                             _%hd5040851464%_
                             _%tl5040951467%_
                             _%__splice8641886419%_
                             _%target5041051470%_
                             _%tl5041251473%_)
                      (letrec ((_%loop5041351476%_
                                (lambda (_%hd5041151480%_ _%body5041751483%_)
                                  (if (gx#stx-pair? _%hd5041151480%_)
                                      (let ((_%e5041451486%_
                                             (gx#syntax-e _%hd5041151480%_)))
                                        (let ((_%lp-tl5041651493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5041451486%_)))
                                              (_%lp-hd5041551490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5041451486%_))))
                                          (_%loop5041351476%_
                                           _%lp-tl5041651493%_
                                           (cons _%lp-hd5041551490%_
                                                 _%body5041751483%_))))
                                      (let ((_%body5041851496%_
                                             (reverse _%body5041751483%_)))
                                        (let ((_%L51500%_ _%body5041851496%_)
                                              (_%L51502%_ _%hd5040851464%_)
                                              (_%L51503%_ _%hd5040551454%_)
                                              (_%L51504%_ _%hd5040251444%_)
                                              (_%L51505%_ _%hd5039951434%_))
                                          (if (and (gx#identifier? _%L51505%_)
                                                   (gx#identifier? _%L51503%_)
                                                   (or (gx#free-identifier=?
                                                        _%L51503%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L51503%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L51503%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L51503%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L51503%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont8641686417%_
                                               _%L51500%_
                                               _%L51502%_
                                               _%L51503%_
                                               _%L51504%_
                                               _%L51505%_)
                                              (_%__match8652086521%_
                                               _%e5039251410%_
                                               _%hd5039351414%_
                                               _%tl5039451417%_
                                               _%e5039551420%_
                                               _%hd5039651424%_
                                               _%tl5039751427%_
                                               _%e5039851430%_
                                               _%hd5039951434%_
                                               _%tl5040051437%_
                                               _%e5040151440%_
                                               _%hd5040251444%_
                                               _%tl5040351447%_
                                               _%e5040451450%_
                                               _%hd5040551454%_
                                               _%tl5040651457%_))))))))
                        (_%loop5041351476%_ _%target5041051470%_ '())))))
              (if (gx#stx-pair? _%__stx8641386414%_)
                  (let ((_%e5039251410%_ (gx#syntax-e _%__stx8641386414%_)))
                    (let ((_%tl5039451417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5039251410%_)))
                          (_%hd5039351414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5039251410%_))))
                      (if (gx#stx-pair? _%tl5039451417%_)
                          (let ((_%e5039551420%_
                                 (gx#syntax-e _%tl5039451417%_)))
                            (let ((_%tl5039751427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5039551420%_)))
                                  (_%hd5039651424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5039551420%_))))
                              (if (gx#stx-pair? _%hd5039651424%_)
                                  (let ((_%e5039851430%_
                                         (gx#syntax-e _%hd5039651424%_)))
                                    (let ((_%tl5040051437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5039851430%_)))
                                          (_%hd5039951434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5039851430%_))))
                                      (if (gx#stx-pair? _%tl5040051437%_)
                                          (let ((_%e5040151440%_
                                                 (gx#syntax-e
                                                  _%tl5040051437%_)))
                                            (let ((_%tl5040351447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5040151440%_)))
                                                  (_%hd5040251444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5040151440%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5040351447%_)
                                                  (let ((_%e5040451450%_
                                                         (gx#syntax-e
                                                          _%tl5040351447%_)))
                                                    (let ((_%tl5040651457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5040451450%_)))
                                                          (_%hd5040551454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5040451450%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5040651457%_)
                                                          (let ((_%e5040751460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5040651457%_)))
                    (let ((_%tl5040951467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5040751460%_)))
                          (_%hd5040851464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5040751460%_))))
                      (if (gx#stx-null? _%tl5040951467%_)
                          (if (gx#stx-pair/null? _%tl5039751427%_)
                              (let ((_%__splice8641886419%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5039751427%_
                                      '0)))
                                (let ((_%tl5041251473%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8641886419%_
                                          '1)))
                                      (_%target5041051470%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8641886419%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5041251473%_)
                                      (_%__match8649086491%_
                                       _%e5039251410%_
                                       _%hd5039351414%_
                                       _%tl5039451417%_
                                       _%e5039551420%_
                                       _%hd5039651424%_
                                       _%tl5039751427%_
                                       _%e5039851430%_
                                       _%hd5039951434%_
                                       _%tl5040051437%_
                                       _%e5040151440%_
                                       _%hd5040251444%_
                                       _%tl5040351447%_
                                       _%e5040451450%_
                                       _%hd5040551454%_
                                       _%tl5040651457%_
                                       _%e5040751460%_
                                       _%hd5040851464%_
                                       _%tl5040951467%_
                                       _%__splice8641886419%_
                                       _%target5041051470%_
                                       _%tl5041251473%_)
                                      (if (gx#stx-pair? _%hd5039951434%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5039951434%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))))
                              (if (gx#stx-pair? _%hd5039951434%_)
                                  (let ((_%e5056150715%_
                                         (gx#syntax-e _%hd5039951434%_)))
                                    (let ((_%tl5056350722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056150715%_)))
                                          (_%hd5056250719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056150715%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                          (if (gx#identifier? _%hd5040551454%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g92318_|
                                   _%hd5040551454%_)
                                  (if (gx#stx-pair? _%tl5040951467%_)
                                      (let ((_%e5044351294%_
                                             (gx#syntax-e _%tl5040951467%_)))
                                        (let ((_%tl5044551301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5044351294%_)))
                                              (_%hd5044451298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5044351294%_))))
                                          (if (gx#stx-pair? _%tl5044551301%_)
                                              (let ((_%e5044651304%_
                                                     (gx#syntax-e
                                                      _%tl5044551301%_)))
                                                (let ((_%tl5044851311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5044651304%_)))
                                                      (_%hd5044751308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5044651304%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5044851311%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5039751427%_)
                                                          (let ((_%__splice8642286423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5039751427%_ '0)))
                    (let ((_%tl5045151317%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8642286423%_ '1)))
                          (_%target5044951314%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8642286423%_ '0))))
                      (if (gx#stx-null? _%tl5045151317%_)
                          (_%__match8655286553%_
                           _%e5039251410%_
                           _%hd5039351414%_
                           _%tl5039451417%_
                           _%e5039551420%_
                           _%hd5039651424%_
                           _%tl5039751427%_
                           _%e5039851430%_
                           _%hd5039951434%_
                           _%tl5040051437%_
                           _%e5040151440%_
                           _%hd5040251444%_
                           _%tl5040351447%_
                           _%e5040451450%_
                           _%hd5040551454%_
                           _%tl5040651457%_
                           _%e5040751460%_
                           _%hd5040851464%_
                           _%tl5040951467%_
                           _%e5044351294%_
                           _%hd5044451298%_
                           _%tl5044551301%_
                           _%e5044651304%_
                           _%hd5044751308%_
                           _%tl5044851311%_
                           _%__splice8642286423%_
                           _%target5044951314%_
                           _%tl5045151317%_)
                          (if (gx#stx-pair? _%hd5039951434%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5039951434%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_))))))
                  (if (gx#stx-pair? _%hd5039951434%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
              (if (gx#stx-pair? _%hd5039951434%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5039751427%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5039751427%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5039251410%_
                                   _%hd5039351414%_
                                   _%tl5039451417%_
                                   _%e5039551420%_
                                   _%hd5039651424%_
                                   _%tl5039751427%_
                                   _%e5039851430%_
                                   _%hd5039951434%_
                                   _%tl5040051437%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5040251444%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g92317_|
                                                       _%hd5040251444%_)
                                                      (if (gx#stx-null?
                                                           _%tl5044551301%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5039751427%_)
                                                              (let ((_%__splice8643486435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5039751427%_
                              '0)))
                        (let ((_%tl5054150870%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643486435%_ '1)))
                              (_%target5053950867%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643486435%_ '0))))
                          (if (gx#stx-null? _%tl5054150870%_)
                              (_%__match8669286693%_
                               _%e5039251410%_
                               _%hd5039351414%_
                               _%tl5039451417%_
                               _%e5039551420%_
                               _%hd5039651424%_
                               _%tl5039751427%_
                               _%e5039851430%_
                               _%hd5039951434%_
                               _%tl5040051437%_
                               _%e5040151440%_
                               _%hd5040251444%_
                               _%tl5040351447%_
                               _%e5040451450%_
                               _%hd5040551454%_
                               _%tl5040651457%_
                               _%e5040751460%_
                               _%hd5040851464%_
                               _%tl5040951467%_
                               _%e5044351294%_
                               _%hd5044451298%_
                               _%tl5044551301%_
                               _%__splice8643486435%_
                               _%target5053950867%_
                               _%tl5054150870%_)
                              (if (gx#stx-pair? _%hd5039951434%_)
                                  (let ((_%e5056150715%_
                                         (gx#syntax-e _%hd5039951434%_)))
                                    (let ((_%tl5056350722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5056150715%_)))
                                          (_%hd5056250719%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5056150715%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))))
                      (if (gx#stx-pair? _%hd5039951434%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5039951434%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                  (if (gx#stx-pair? _%hd5039951434%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (if (gx#stx-pair/null? _%tl5039751427%_)
                              (let ((_%__splice8643886439%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5039751427%_
                                      '0)))
                                (let ((_%tl5056650728%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '1)))
                                      (_%target5056450725%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8643886439%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5056650728%_)
                                      (_%__match8672486725%_
                                       _%e5039251410%_
                                       _%hd5039351414%_
                                       _%tl5039451417%_
                                       _%e5039551420%_
                                       _%hd5039651424%_
                                       _%tl5039751427%_
                                       _%e5039851430%_
                                       _%hd5039951434%_
                                       _%tl5040051437%_
                                       _%e5056150715%_
                                       _%hd5056250719%_
                                       _%tl5056350722%_
                                       _%__splice8643886439%_
                                       _%target5056450725%_
                                       _%tl5056650728%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
              (if (gx#stx-pair? _%hd5039951434%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5039751427%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5039751427%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5039251410%_
                                   _%hd5039351414%_
                                   _%tl5039451417%_
                                   _%e5039551420%_
                                   _%hd5039651424%_
                                   _%tl5039751427%_
                                   _%e5039851430%_
                                   _%hd5039951434%_
                                   _%tl5040051437%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5039951434%_)
                                                      (let ((_%e5056150715%_
                                                             (gx#syntax-e
                                                              _%hd5039951434%_)))
                                                        (let ((_%tl5056350722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5056150715%_)))
                      (_%hd5056250719%_
                       (let () (declare (not safe)) (##car _%e5056150715%_))))
                  (if (gx#stx-pair/null? _%tl5039751427%_)
                      (let ((_%__splice8643886439%_
                             (gx#syntax-split-splice->vector
                              _%tl5039751427%_
                              '0)))
                        (let ((_%tl5056650728%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '1)))
                              (_%target5056450725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '0))))
                          (if (gx#stx-null? _%tl5056650728%_)
                              (_%__match8672486725%_
                               _%e5039251410%_
                               _%hd5039351414%_
                               _%tl5039451417%_
                               _%e5039551420%_
                               _%hd5039651424%_
                               _%tl5039751427%_
                               _%e5039851430%_
                               _%hd5039951434%_
                               _%tl5040051437%_
                               _%e5056150715%_
                               _%hd5056250719%_
                               _%tl5056350722%_
                               _%__splice8643886439%_
                               _%target5056450725%_
                               _%tl5056650728%_)
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5039951434%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5039951434%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5039751427%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5039751427%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5039251410%_
                                                           _%hd5039351414%_
                                                           _%tl5039451417%_
                                                           _%e5039551420%_
                                                           _%hd5039651424%_
                                                           _%tl5039751427%_
                                                           _%e5039851430%_
                                                           _%hd5039951434%_
                                                           _%tl5040051437%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                  (if (gx#identifier? _%hd5040251444%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92317_|
                                           _%hd5040251444%_)
                                          (if (gx#stx-pair? _%tl5040951467%_)
                                              (let ((_%e5053650857%_
                                                     (gx#syntax-e
                                                      _%tl5040951467%_)))
                                                (let ((_%tl5053850864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5053650857%_)))
                                                      (_%hd5053750861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5053650857%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5053850864%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5039751427%_)
                                                          (let ((_%__splice8643486435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5039751427%_ '0)))
                    (let ((_%tl5054150870%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643486435%_ '1)))
                          (_%target5053950867%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643486435%_ '0))))
                      (if (gx#stx-null? _%tl5054150870%_)
                          (_%__match8669286693%_
                           _%e5039251410%_
                           _%hd5039351414%_
                           _%tl5039451417%_
                           _%e5039551420%_
                           _%hd5039651424%_
                           _%tl5039751427%_
                           _%e5039851430%_
                           _%hd5039951434%_
                           _%tl5040051437%_
                           _%e5040151440%_
                           _%hd5040251444%_
                           _%tl5040351447%_
                           _%e5040451450%_
                           _%hd5040551454%_
                           _%tl5040651457%_
                           _%e5040751460%_
                           _%hd5040851464%_
                           _%tl5040951467%_
                           _%e5053650857%_
                           _%hd5053750861%_
                           _%tl5053850864%_
                           _%__splice8643486435%_
                           _%target5053950867%_
                           _%tl5054150870%_)
                          (if (gx#stx-pair? _%hd5039951434%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5039951434%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_))))))
                  (if (gx#stx-pair? _%hd5039951434%_)
                      (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                        (let ((_%tl5056350722%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5056150715%_)))
                              (_%hd5056250719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5056150715%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
              (if (gx#stx-pair? _%hd5039951434%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (if (gx#stx-pair/null? _%tl5039751427%_)
                          (let ((_%__splice8643886439%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5039751427%_
                                  '0)))
                            (let ((_%tl5056650728%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8643886439%_ '1)))
                                  (_%target5056450725%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8643886439%_
                                      '0))))
                              (if (gx#stx-null? _%tl5056650728%_)
                                  (_%__match8672486725%_
                                   _%e5039251410%_
                                   _%hd5039351414%_
                                   _%tl5039451417%_
                                   _%e5039551420%_
                                   _%hd5039651424%_
                                   _%tl5039751427%_
                                   _%e5039851430%_
                                   _%hd5039951434%_
                                   _%tl5040051437%_
                                   _%e5056150715%_
                                   _%hd5056250719%_
                                   _%tl5056350722%_
                                   _%__splice8643886439%_
                                   _%target5056450725%_
                                   _%tl5056650728%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5039951434%_)
                                                  (let ((_%e5056150715%_
                                                         (gx#syntax-e
                                                          _%hd5039951434%_)))
                                                    (let ((_%tl5056350722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5056150715%_)))
                                                          (_%hd5056250719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5056150715%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5039751427%_)
                                                          (let ((_%__splice8643886439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5039751427%_ '0)))
                    (let ((_%tl5056650728%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '1)))
                          (_%target5056450725%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8643886439%_ '0))))
                      (if (gx#stx-null? _%tl5056650728%_)
                          (_%__match8672486725%_
                           _%e5039251410%_
                           _%hd5039351414%_
                           _%tl5039451417%_
                           _%e5039551420%_
                           _%hd5039651424%_
                           _%tl5039751427%_
                           _%e5039851430%_
                           _%hd5039951434%_
                           _%tl5040051437%_
                           _%e5056150715%_
                           _%hd5056250719%_
                           _%tl5056350722%_
                           _%__splice8643886439%_
                           _%target5056450725%_
                           _%tl5056650728%_)
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_))))
                                          (if (gx#stx-pair? _%hd5039951434%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5039951434%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5039751427%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5039751427%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5039251410%_
                       _%hd5039351414%_
                       _%tl5039451417%_
                       _%e5039551420%_
                       _%hd5039651424%_
                       _%tl5039751427%_
                       _%e5039851430%_
                       _%hd5039951434%_
                       _%tl5040051437%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                      (if (gx#stx-pair? _%hd5039951434%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5039951434%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5039751427%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5039751427%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5039251410%_
                                                           _%hd5039351414%_
                                                           _%tl5039451417%_
                                                           _%e5039551420%_
                                                           _%hd5039651424%_
                                                           _%tl5039751427%_
                                                           _%e5039851430%_
                                                           _%hd5039951434%_
                                                           _%tl5040051437%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                              (if (gx#identifier? _%hd5040251444%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92317_|
                                       _%hd5040251444%_)
                                      (if (gx#stx-pair? _%tl5040951467%_)
                                          (let ((_%e5053650857%_
                                                 (gx#syntax-e
                                                  _%tl5040951467%_)))
                                            (let ((_%tl5053850864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053650857%_)))
                                                  (_%hd5053750861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053650857%_))))
                                              (if (gx#stx-null?
                                                   _%tl5053850864%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5039751427%_)
                                                      (let ((_%__splice8643486435%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5039751427%_
                                                              '0)))
                                                        (let ((_%tl5054150870%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643486435%_ '1)))
                      (_%target5053950867%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643486435%_ '0))))
                  (if (gx#stx-null? _%tl5054150870%_)
                      (_%__match8669286693%_
                       _%e5039251410%_
                       _%hd5039351414%_
                       _%tl5039451417%_
                       _%e5039551420%_
                       _%hd5039651424%_
                       _%tl5039751427%_
                       _%e5039851430%_
                       _%hd5039951434%_
                       _%tl5040051437%_
                       _%e5040151440%_
                       _%hd5040251444%_
                       _%tl5040351447%_
                       _%e5040451450%_
                       _%hd5040551454%_
                       _%tl5040651457%_
                       _%e5040751460%_
                       _%hd5040851464%_
                       _%tl5040951467%_
                       _%e5053650857%_
                       _%hd5053750861%_
                       _%tl5053850864%_
                       _%__splice8643486435%_
                       _%target5053950867%_
                       _%tl5054150870%_)
                      (if (gx#stx-pair? _%hd5039951434%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5039951434%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                          (let () (declare (not safe)) (_%g5038550594%_))))))
              (if (gx#stx-pair? _%hd5039951434%_)
                  (let ((_%e5056150715%_ (gx#syntax-e _%hd5039951434%_)))
                    (let ((_%tl5056350722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5056150715%_)))
                          (_%hd5056250719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5056150715%_))))
                      (let () (declare (not safe)) (_%g5038550594%_))))
                  (let () (declare (not safe)) (_%g5038550594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5039951434%_)
                                                      (let ((_%e5056150715%_
                                                             (gx#syntax-e
                                                              _%hd5039951434%_)))
                                                        (let ((_%tl5056350722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5056150715%_)))
                      (_%hd5056250719%_
                       (let () (declare (not safe)) (##car _%e5056150715%_))))
                  (if (gx#stx-pair/null? _%tl5039751427%_)
                      (let ((_%__splice8643886439%_
                             (gx#syntax-split-splice->vector
                              _%tl5039751427%_
                              '0)))
                        (let ((_%tl5056650728%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '1)))
                              (_%target5056450725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '0))))
                          (if (gx#stx-null? _%tl5056650728%_)
                              (_%__match8672486725%_
                               _%e5039251410%_
                               _%hd5039351414%_
                               _%tl5039451417%_
                               _%e5039551420%_
                               _%hd5039651424%_
                               _%tl5039751427%_
                               _%e5039851430%_
                               _%hd5039951434%_
                               _%tl5040051437%_
                               _%e5056150715%_
                               _%hd5056250719%_
                               _%tl5056350722%_
                               _%__splice8643886439%_
                               _%target5056450725%_
                               _%tl5056650728%_)
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5039951434%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5039951434%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5039751427%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5039751427%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5039251410%_
                       _%hd5039351414%_
                       _%tl5039451417%_
                       _%e5039551420%_
                       _%hd5039651424%_
                       _%tl5039751427%_
                       _%e5039851430%_
                       _%hd5039951434%_
                       _%tl5040051437%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))
                                      (if (gx#stx-pair? _%hd5039951434%_)
                                          (let ((_%e5056150715%_
                                                 (gx#syntax-e
                                                  _%hd5039951434%_)))
                                            (let ((_%tl5056350722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5056150715%_)))
                                                  (_%hd5056250719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5056150715%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5039751427%_)
                                                  (let ((_%__splice8643886439%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5039751427%_
                                                          '0)))
                                                    (let ((_%tl5056650728%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '1)))
                                                          (_%target5056450725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8643886439%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5056650728%_)
                                                          (_%__match8672486725%_
                                                           _%e5039251410%_
                                                           _%hd5039351414%_
                                                           _%tl5039451417%_
                                                           _%e5039551420%_
                                                           _%hd5039651424%_
                                                           _%tl5039751427%_
                                                           _%e5039851430%_
                                                           _%hd5039951434%_
                                                           _%tl5040051437%_
                                                           _%e5056150715%_
                                                           _%hd5056250719%_
                                                           _%tl5056350722%_
                                                           _%__splice8643886439%_
                                                           _%target5056450725%_
                                                           _%tl5056650728%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5038550594%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                  (if (gx#stx-pair? _%hd5039951434%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5039951434%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5039751427%_)
                                              (let ((_%__splice8643886439%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5039751427%_
                                                      '0)))
                                                (let ((_%tl5056650728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '1)))
                                                      (_%target5056450725%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8643886439%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5056650728%_)
                                                      (_%__match8672486725%_
                                                       _%e5039251410%_
                                                       _%hd5039351414%_
                                                       _%tl5039451417%_
                                                       _%e5039551420%_
                                                       _%hd5039651424%_
                                                       _%tl5039751427%_
                                                       _%e5039851430%_
                                                       _%hd5039951434%_
                                                       _%tl5040051437%_
                                                       _%e5056150715%_
                                                       _%hd5056250719%_
                                                       _%tl5056350722%_
                                                       _%__splice8643886439%_
                                                       _%target5056450725%_
                                                       _%tl5056650728%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5038550594%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))))
                  (if (gx#stx-null? _%tl5040651457%_)
                      (if (gx#stx-pair/null? _%tl5039751427%_)
                          (let ((_%__splice8642686427%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5039751427%_
                                  '0)))
                            (let ((_%tl5047951134%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8642686427%_ '1)))
                                  (_%target5047751131%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8642686427%_
                                      '0))))
                              (if (gx#stx-null? _%tl5047951134%_)
                                  (_%__match8659286593%_
                                   _%e5039251410%_
                                   _%hd5039351414%_
                                   _%tl5039451417%_
                                   _%e5039551420%_
                                   _%hd5039651424%_
                                   _%tl5039751427%_
                                   _%e5039851430%_
                                   _%hd5039951434%_
                                   _%tl5040051437%_
                                   _%e5040151440%_
                                   _%hd5040251444%_
                                   _%tl5040351447%_
                                   _%e5040451450%_
                                   _%hd5040551454%_
                                   _%tl5040651457%_
                                   _%__splice8642686427%_
                                   _%target5047751131%_
                                   _%tl5047951134%_)
                                  (if (gx#stx-pair? _%hd5039951434%_)
                                      (let ((_%e5056150715%_
                                             (gx#syntax-e _%hd5039951434%_)))
                                        (let ((_%tl5056350722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5056150715%_)))
                                              (_%hd5056250719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5056150715%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))
                          (if (gx#stx-pair? _%hd5039951434%_)
                              (let ((_%e5056150715%_
                                     (gx#syntax-e _%hd5039951434%_)))
                                (let ((_%tl5056350722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5056150715%_)))
                                      (_%hd5056250719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5056150715%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_))))
                              (let () (declare (not safe)) (_%g5038550594%_))))
                      (if (gx#stx-pair? _%hd5039951434%_)
                          (let ((_%e5056150715%_
                                 (gx#syntax-e _%hd5039951434%_)))
                            (let ((_%tl5056350722%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5056150715%_)))
                                  (_%hd5056250719%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5056150715%_))))
                              (if (gx#stx-pair/null? _%tl5039751427%_)
                                  (let ((_%__splice8643886439%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5039751427%_
                                          '0)))
                                    (let ((_%tl5056650728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '1)))
                                          (_%target5056450725%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8643886439%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5056650728%_)
                                          (_%__match8672486725%_
                                           _%e5039251410%_
                                           _%hd5039351414%_
                                           _%tl5039451417%_
                                           _%e5039551420%_
                                           _%hd5039651424%_
                                           _%tl5039751427%_
                                           _%e5039851430%_
                                           _%hd5039951434%_
                                           _%tl5040051437%_
                                           _%e5056150715%_
                                           _%hd5056250719%_
                                           _%tl5056350722%_
                                           _%__splice8643886439%_
                                           _%target5056450725%_
                                           _%tl5056650728%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5038550594%_)))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5039951434%_)
                                                      (let ((_%e5056150715%_
                                                             (gx#syntax-e
                                                              _%hd5039951434%_)))
                                                        (let ((_%tl5056350722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5056150715%_)))
                      (_%hd5056250719%_
                       (let () (declare (not safe)) (##car _%e5056150715%_))))
                  (if (gx#stx-pair/null? _%tl5039751427%_)
                      (let ((_%__splice8643886439%_
                             (gx#syntax-split-splice->vector
                              _%tl5039751427%_
                              '0)))
                        (let ((_%tl5056650728%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '1)))
                              (_%target5056450725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8643886439%_ '0))))
                          (if (gx#stx-null? _%tl5056650728%_)
                              (_%__match8672486725%_
                               _%e5039251410%_
                               _%hd5039351414%_
                               _%tl5039451417%_
                               _%e5039551420%_
                               _%hd5039651424%_
                               _%tl5039751427%_
                               _%e5039851430%_
                               _%hd5039951434%_
                               _%tl5040051437%_
                               _%e5056150715%_
                               _%hd5056250719%_
                               _%tl5056350722%_
                               _%__splice8643886439%_
                               _%target5056450725%_
                               _%tl5056650728%_)
                              (let ()
                                (declare (not safe))
                                (_%g5038550594%_)))))
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5039951434%_)
                                              (let ((_%e5056150715%_
                                                     (gx#syntax-e
                                                      _%hd5039951434%_)))
                                                (let ((_%tl5056350722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5056150715%_)))
                                                      (_%hd5056250719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5056150715%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5039751427%_)
                                                      (let ((_%__splice8643886439%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5039751427%_
                                                              '0)))
                                                        (let ((_%tl5056650728%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '1)))
                      (_%target5056450725%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8643886439%_ '0))))
                  (if (gx#stx-null? _%tl5056650728%_)
                      (_%__match8672486725%_
                       _%e5039251410%_
                       _%hd5039351414%_
                       _%tl5039451417%_
                       _%e5039551420%_
                       _%hd5039651424%_
                       _%tl5039751427%_
                       _%e5039851430%_
                       _%hd5039951434%_
                       _%tl5040051437%_
                       _%e5056150715%_
                       _%hd5056250719%_
                       _%tl5056350722%_
                       _%__splice8643886439%_
                       _%target5056450725%_
                       _%tl5056650728%_)
                      (let () (declare (not safe)) (_%g5038550594%_)))))
              (let () (declare (not safe)) (_%g5038550594%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5038550594%_))))))
                                  (if (gx#stx-null? _%hd5039651424%_)
                                      (if (gx#stx-pair/null? _%tl5039751427%_)
                                          (let ((_%__splice8644286443%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5039751427%_
                                                  '0)))
                                            (let ((_%tl5058250624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8644286443%_
                                                      '1)))
                                                  (_%target5058050621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8644286443%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5058250624%_)
                                                  (_%__match8674686747%_
                                                   _%e5039251410%_
                                                   _%hd5039351414%_
                                                   _%tl5039451417%_
                                                   _%e5039551420%_
                                                   _%hd5039651424%_
                                                   _%tl5039751427%_
                                                   _%__splice8644286443%_
                                                   _%target5058050621%_
                                                   _%tl5058250624%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5038550594%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5038550594%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5038550594%_))))))
                          (let () (declare (not safe)) (_%g5038550594%_)))))
                  (let () (declare (not safe)) (_%g5038550594%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx51568%_)
        (let* ((_%g5157251606%_
                (lambda (_%g5157351602%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5157351602%_)))
               (_%g5157151729%_
                (lambda (_%g5157351610%_)
                  (if (gx#stx-pair? _%g5157351610%_)
                      (let ((_%e5157751613%_ (gx#syntax-e _%g5157351610%_)))
                        (let ((_%hd5157851617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5157751613%_)))
                              (_%tl5157951620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5157751613%_))))
                          (if (gx#stx-pair? _%tl5157951620%_)
                              (let ((_%e5158051623%_
                                     (gx#syntax-e _%tl5157951620%_)))
                                (let ((_%hd5158151627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5158051623%_)))
                                      (_%tl5158251630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5158051623%_))))
                                  (if (gx#stx-pair? _%hd5158151627%_)
                                      (let ((_%e5158351633%_
                                             (gx#syntax-e _%hd5158151627%_)))
                                        (let ((_%hd5158451637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5158351633%_)))
                                              (_%tl5158551640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5158351633%_))))
                                          (if (gx#stx-pair? _%tl5158551640%_)
                                              (let ((_%e5158651643%_
                                                     (gx#syntax-e
                                                      _%tl5158551640%_)))
                                                (let ((_%hd5158751647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5158651643%_)))
                                                      (_%tl5158851650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5158651643%_))))
                                                  (if (gx#identifier?
                                                       _%hd5158751647%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92319_|
                                                           _%hd5158751647%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5158851650%_)
                                                              (let ((_%e5158951653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5158851650%_)))
                        (let ((_%hd5159051657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5158951653%_)))
                              (_%tl5159151660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5158951653%_))))
                          (if (gx#stx-null? _%tl5159151660%_)
                              (if (gx#stx-pair/null? _%tl5158251630%_)
                                  (let ((_g92320_
                                         (gx#syntax-split-splice
                                          _%tl5158251630%_
                                          '0)))
                                    (begin
                                      (let ((_g92321_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g92320_)
                                                   (##values-length _g92320_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g92321_ 2)))
                                            (error "Context expects 2 values"
                                                   _g92321_)))
                                      (let ((_%target5159251663%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92320_ 0)))
                                            (_%tl5159451666%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g92320_ 1))))
                                        (if (gx#stx-null? _%tl5159451666%_)
                                            (letrec ((_%loop5159551669%_
                                                      (lambda (_%hd5159351673%_
                                                               _%body5159951676%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5159351673%_)
                                                            (let ((_%e5159651679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5159351673%_)))
                      (let ((_%lp-hd5159751683%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5159651679%_)))
                            (_%lp-tl5159851686%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5159651679%_))))
                        (_%loop5159551669%_
                         _%lp-tl5159851686%_
                         (cons _%lp-hd5159751683%_ _%body5159951676%_))))
                    (let ((_%body5160051689%_ (reverse _%body5159951676%_)))
                      ((lambda (_%L51693%_ _%L51695%_ _%L51696%_)
                         (if (gx#identifier? _%L51696%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L51695%_
                                               (cons _%L51696%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5172051723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5172151726%_)
                            (cons _%g5172051723%_ _%g5172151726%_))
                          '()
                          _%L51693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L51696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L51695%_ (cons _%L51696%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5157251606%_ _%g5157351610%_)))
                       _%body5160051689%_
                       _%hd5159051657%_
                       _%hd5158451637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5159551669%_
                                               _%target5159251663%_
                                               '()))
                                            (_%g5157251606%_
                                             _%g5157351610%_)))))
                                  (_%g5157251606%_ _%g5157351610%_))
                              (_%g5157251606%_ _%g5157351610%_))))
                      (_%g5157251606%_ _%g5157351610%_))
                  (_%g5157251606%_ _%g5157351610%_))
              (_%g5157251606%_ _%g5157351610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5157251606%_
                                               _%g5157351610%_))))
                                      (_%g5157251606%_ _%g5157351610%_))))
                              (_%g5157251606%_ _%g5157351610%_))))
                      (_%g5157251606%_ _%g5157351610%_)))))
          (_%g5157151729%_ _%$stx51568%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass52296%_ _%slot52298%_)
        (let ((_%$e52300%_
               (let ((__obj92132 _%klass52296%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92132
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92132 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92132
                      'slot-types)))))
          (if _%$e52300%_
              ((lambda (_%slot-types52304%_)
                 (agetq _%slot52298%_ _%slot-types52304%_))
               _%$e52300%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass52277%_ _%slot52279%_)
        (let ((_%$e52281%_
               (let ((__obj92133 _%klass52277%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92133
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92133 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92133
                      'slot-defaults)))))
          (if _%$e52281%_
              ((lambda (_%slot-defaults52285%_)
                 (let ((_%$e52288%_
                        (agetq _%slot52279%_ _%slot-defaults52285%_)))
                   (if _%$e52288%_
                       (gx#syntax-local-introduce _%$e52288%_)
                       '#f)))
               _%$e52281%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass52258%_ _%slot52260%_)
        (let ((_%$e52262%_
               (let ((__obj92134 _%klass52258%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj92134
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj92134 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj92134
                      'slot-defaults)))))
          (if _%$e52262%_
              ((lambda (_%slot-defaults52266%_)
                 (let ((_%$e52269%_
                        (agetq _%slot52260%_ _%slot-defaults52266%_)))
                   (if _%$e52269%_
                       (gx#syntax-local-introduce _%$e52269%_)
                       '#f)))
               _%$e52262%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass52026%_ _%slot52028%_)
        (let ((_%contract5202952031%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass52026%_
                _%slot52028%_)))
          (if _%contract5202952031%_
              (let* ((_%contract52035%_ _%contract5202952031%_)
                     (_%__stx8674986750%_ _%contract52035%_)
                     (_%g5204052077%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8674986750%_))))
                (let ((_%__kont8675286753%_
                       (lambda (_%L52227%_ _%L52229%_)
                         (not (gx#free-identifier=?
                               _%L52229%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8675486755%_
                       (lambda (_%L52167%_ _%L52169%_ _%L52170%_)
                         (not (gx#free-identifier=?
                               _%L52169%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8675686757%_ (lambda (_%L52104%_) '#f)))
                  (let* ((_%__match8680286803%_
                          (lambda (_%e5205352127%_
                                   _%hd5205452131%_
                                   _%tl5205552134%_
                                   _%e5205652137%_
                                   _%hd5205752141%_
                                   _%tl5205852144%_
                                   _%e5205952147%_
                                   _%hd5206052151%_
                                   _%tl5206152154%_
                                   _%e5206252157%_
                                   _%hd5206352161%_
                                   _%tl5206452164%_)
                            (let ((_%L52167%_ _%hd5206352161%_)
                                  (_%L52169%_ _%hd5206052151%_)
                                  (_%L52170%_ _%hd5205752141%_))
                              (if (and (gx#identifier? _%L52169%_)
                                       (or (gx#free-identifier=?
                                            _%L52169%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L52169%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L52169%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L52169%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8675486755%_
                                   _%L52167%_
                                   _%L52169%_
                                   _%L52170%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5204052077%_))))))
                         (_%__match8677286773%_
                          (lambda (_%e5204452207%_
                                   _%hd5204552211%_
                                   _%tl5204652214%_
                                   _%e5204752217%_
                                   _%hd5204852221%_
                                   _%tl5204952224%_)
                            (let ((_%L52227%_ _%hd5204852221%_)
                                  (_%L52229%_ _%hd5204552211%_))
                              (if (and (gx#identifier? _%L52229%_)
                                       (or (gx#free-identifier=?
                                            _%L52229%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L52229%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L52229%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L52229%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8675286753%_ _%L52227%_ _%L52229%_)
                                  (if (gx#identifier? _%hd5204552211%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92322_|
                                           _%hd5204552211%_)
                                          (_%__kont8675686757%_
                                           _%hd5204852221%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5204052077%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5204052077%_))))))))
                    (if (gx#stx-pair? _%__stx8674986750%_)
                        (let ((_%e5204452207%_
                               (gx#syntax-e _%__stx8674986750%_)))
                          (let ((_%tl5204652214%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5204452207%_)))
                                (_%hd5204552211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5204452207%_))))
                            (if (gx#stx-pair? _%tl5204652214%_)
                                (let ((_%e5204752217%_
                                       (gx#syntax-e _%tl5204652214%_)))
                                  (let ((_%tl5204952224%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5204752217%_)))
                                        (_%hd5204852221%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5204752217%_))))
                                    (if (gx#stx-null? _%tl5204952224%_)
                                        (_%__match8677286773%_
                                         _%e5204452207%_
                                         _%hd5204552211%_
                                         _%tl5204652214%_
                                         _%e5204752217%_
                                         _%hd5204852221%_
                                         _%tl5204952224%_)
                                        (if (gx#identifier? _%hd5204552211%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92322_|
                                                 _%hd5204552211%_)
                                                (if (gx#stx-pair?
                                                     _%tl5204952224%_)
                                                    (let ((_%e5205952147%_
                                                           (gx#syntax-e
                                                            _%tl5204952224%_)))
                                                      (let ((_%tl5206152154%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5205952147%_)))
                    (_%hd5206052151%_
                     (let () (declare (not safe)) (##car _%e5205952147%_))))
                (if (gx#stx-pair? _%tl5206152154%_)
                    (let ((_%e5206252157%_ (gx#syntax-e _%tl5206152154%_)))
                      (let ((_%tl5206452164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5206252157%_)))
                            (_%hd5206352161%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5206252157%_))))
                        (if (gx#stx-null? _%tl5206452164%_)
                            (_%__match8680286803%_
                             _%e5204452207%_
                             _%hd5204552211%_
                             _%tl5204652214%_
                             _%e5204752217%_
                             _%hd5204852221%_
                             _%tl5204952224%_
                             _%e5205952147%_
                             _%hd5206052151%_
                             _%tl5206152154%_
                             _%e5206252157%_
                             _%hd5206352161%_
                             _%tl5206452164%_)
                            (let () (declare (not safe)) (_%g5204052077%_)))))
                    (let () (declare (not safe)) (_%g5204052077%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5204052077%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5204052077%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5204052077%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5204052077%_)))))
                        (let () (declare (not safe)) (_%g5204052077%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass51794%_ _%slot51796%_)
        (let ((_%contract5179751799%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass51794%_
                _%slot51796%_)))
          (if _%contract5179751799%_
              (let* ((_%contract51803%_ _%contract5179751799%_)
                     (_%__stx8682386824%_ _%contract51803%_)
                     (_%g5180851845%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx8682386824%_))))
                (let ((_%__kont8682686827%_
                       (lambda (_%L51995%_ _%L51997%_)
                         (not (gx#free-identifier=?
                               _%L51997%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont8682886829%_
                       (lambda (_%L51935%_ _%L51937%_ _%L51938%_) '#t))
                      (_%__kont8683086831%_ (lambda (_%L51872%_) '#t)))
                  (let* ((_%__match8687686877%_
                          (lambda (_%e5182151895%_
                                   _%hd5182251899%_
                                   _%tl5182351902%_
                                   _%e5182451905%_
                                   _%hd5182551909%_
                                   _%tl5182651912%_
                                   _%e5182751915%_
                                   _%hd5182851919%_
                                   _%tl5182951922%_
                                   _%e5183051925%_
                                   _%hd5183151929%_
                                   _%tl5183251932%_)
                            (let ((_%L51935%_ _%hd5183151929%_)
                                  (_%L51937%_ _%hd5182851919%_)
                                  (_%L51938%_ _%hd5182551909%_))
                              (if (and (gx#identifier? _%L51937%_)
                                       (or (gx#free-identifier=?
                                            _%L51937%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51937%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51937%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51937%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8682886829%_
                                   _%L51935%_
                                   _%L51937%_
                                   _%L51938%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5180851845%_))))))
                         (_%__match8684686847%_
                          (lambda (_%e5181251975%_
                                   _%hd5181351979%_
                                   _%tl5181451982%_
                                   _%e5181551985%_
                                   _%hd5181651989%_
                                   _%tl5181751992%_)
                            (let ((_%L51995%_ _%hd5181651989%_)
                                  (_%L51997%_ _%hd5181351979%_))
                              (if (and (gx#identifier? _%L51997%_)
                                       (or (gx#free-identifier=?
                                            _%L51997%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L51997%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L51997%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L51997%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont8682686827%_ _%L51995%_ _%L51997%_)
                                  (if (gx#identifier? _%hd5181351979%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g92323_|
                                           _%hd5181351979%_)
                                          (_%__kont8683086831%_
                                           _%hd5181651989%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5180851845%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5180851845%_))))))))
                    (if (gx#stx-pair? _%__stx8682386824%_)
                        (let ((_%e5181251975%_
                               (gx#syntax-e _%__stx8682386824%_)))
                          (let ((_%tl5181451982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5181251975%_)))
                                (_%hd5181351979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5181251975%_))))
                            (if (gx#stx-pair? _%tl5181451982%_)
                                (let ((_%e5181551985%_
                                       (gx#syntax-e _%tl5181451982%_)))
                                  (let ((_%tl5181751992%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5181551985%_)))
                                        (_%hd5181651989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5181551985%_))))
                                    (if (gx#stx-null? _%tl5181751992%_)
                                        (_%__match8684686847%_
                                         _%e5181251975%_
                                         _%hd5181351979%_
                                         _%tl5181451982%_
                                         _%e5181551985%_
                                         _%hd5181651989%_
                                         _%tl5181751992%_)
                                        (if (gx#identifier? _%hd5181351979%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g92323_|
                                                 _%hd5181351979%_)
                                                (if (gx#stx-pair?
                                                     _%tl5181751992%_)
                                                    (let ((_%e5182751915%_
                                                           (gx#syntax-e
                                                            _%tl5181751992%_)))
                                                      (let ((_%tl5182951922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5182751915%_)))
                    (_%hd5182851919%_
                     (let () (declare (not safe)) (##car _%e5182751915%_))))
                (if (gx#stx-pair? _%tl5182951922%_)
                    (let ((_%e5183051925%_ (gx#syntax-e _%tl5182951922%_)))
                      (let ((_%tl5183251932%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5183051925%_)))
                            (_%hd5183151929%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5183051925%_))))
                        (if (gx#stx-null? _%tl5183251932%_)
                            (_%__match8687686877%_
                             _%e5181251975%_
                             _%hd5181351979%_
                             _%tl5181451982%_
                             _%e5181551985%_
                             _%hd5181651989%_
                             _%tl5181751992%_
                             _%e5182751915%_
                             _%hd5182851919%_
                             _%tl5182951922%_
                             _%e5183051925%_
                             _%hd5183151929%_
                             _%tl5183251932%_)
                            (let () (declare (not safe)) (_%g5180851845%_)))))
                    (let () (declare (not safe)) (_%g5180851845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5180851845%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5180851845%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5180851845%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5180851845%_)))))
                        (let () (declare (not safe)) (_%g5180851845%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id51780%_)
        (if (gx#identifier? _%id51780%_)
            (let* ((_%str51783%_ (symbol->string (gx#stx-e _%id51780%_)))
                   (_%index5178551787%_ (string-index _%str51783%_ '#\.)))
              (if _%index5178551787%_
                  (let ((_%index51791%_ _%index5178551787%_))
                    (if (let () (declare (not safe)) (##fx> _%index51791%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str51783%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx51773%_ _%id51775%_)
        (let ((_%parts51777%_
               (string-split (symbol->string (gx#stx-e _%id51775%_)) '#\.)))
          (if (find string-empty? _%parts51777%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx51773%_
               _%id51775%_)
              (cons (gx#stx-identifier _%id51775%_ (car _%parts51777%_))
                    (map string->symbol (cdr _%parts51777%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx51754%_ _%klass-or-id51756%_ _%slot51757%_)
        (let* ((_%klass51759%_
                (if (gx#identifier? _%klass-or-id51756%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51754%_
                       _%klass-or-id51756%_))
                    _%klass-or-id51756%_))
               (_%accessors51762%_
                (let ((__obj92135 _%klass51759%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj92135
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj92135 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj92135
                       'unchecked-accessors))))
               (_%$e51767%_ (agetq _%slot51757%_ _%accessors51762%_)))
          (if _%$e51767%_
              _%$e51767%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx51754%_
               _%klass51759%_
               _%slot51757%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx51734%_
               _%klass-or-id51736%_
               _%slot51737%_
               _%checked?51738%_)
        (let* ((_%klass51740%_
                (if (gx#identifier? _%klass-or-id51736%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx51734%_
                       _%klass-or-id51736%_))
                    _%klass-or-id51736%_))
               (_%mutators51743%_
                (if _%checked?51738%_
                    (let ((__obj92136 _%klass51740%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92136
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92136 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92136
                           'mutators)))
                    (let ((__obj92137 _%klass51740%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj92137
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj92137 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj92137
                           'unchecked-mutators)))))
               (_%$e51748%_ (agetq _%slot51737%_ _%mutators51743%_)))
          (if _%$e51748%_
              _%$e51748%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx51734%_
               _%klass51740%_
               _%slot51737%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx52309%_)
        (letrec ((_%expand-body52312%_
                  (lambda (_%klass53220%_
                           _%var53222%_
                           _%Type53223%_
                           _%body53224%_
                           _%checked?53225%_)
                    (let* ((_%g5322753271%_
                            (lambda (_%g5322853267%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5322853267%_)))
                           (_%g5322653428%_
                            (lambda (_%g5322853275%_)
                              (if (gx#stx-pair? _%g5322853275%_)
                                  (let ((_%e5323653278%_
                                         (gx#syntax-e _%g5322853275%_)))
                                    (let ((_%hd5323753282%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5323653278%_)))
                                          (_%tl5323853285%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5323653278%_))))
                                      (if (gx#stx-pair? _%tl5323853285%_)
                                          (let ((_%e5323953288%_
                                                 (gx#syntax-e
                                                  _%tl5323853285%_)))
                                            (let ((_%hd5324053292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5323953288%_)))
                                                  (_%tl5324153295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5323953288%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5324153295%_)
                                                  (let ((_%e5324253298%_
                                                         (gx#syntax-e
                                                          _%tl5324153295%_)))
                                                    (let ((_%hd5324353302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5324253298%_)))
                                                          (_%tl5324453305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5324253298%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5324453305%_)
                                                          (let ((_%e5324553308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5324453305%_)))
                    (let ((_%hd5324653312%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5324553308%_)))
                          (_%tl5324753315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5324553308%_))))
                      (if (gx#stx-pair? _%tl5324753315%_)
                          (let ((_%e5324853318%_
                                 (gx#syntax-e _%tl5324753315%_)))
                            (let ((_%hd5324953322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5324853318%_)))
                                  (_%tl5325053325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5324853318%_))))
                              (if (gx#stx-pair? _%tl5325053325%_)
                                  (let ((_%e5325153328%_
                                         (gx#syntax-e _%tl5325053325%_)))
                                    (let ((_%hd5325253332%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5325153328%_)))
                                          (_%tl5325353335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5325153328%_))))
                                      (if (gx#stx-pair? _%tl5325353335%_)
                                          (let ((_%e5325453338%_
                                                 (gx#syntax-e
                                                  _%tl5325353335%_)))
                                            (let ((_%hd5325553342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5325453338%_)))
                                                  (_%tl5325653345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5325453338%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5325553342%_)
                                                  (let ((_g92324_
                                                         (gx#syntax-split-splice
                                                          _%hd5325553342%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92325_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92324_)
                           (##values-length _g92324_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92325_ 2)))
                    (error "Context expects 2 values" _g92325_)))
              (let ((_%target5325753348%_
                     (let () (declare (not safe)) (##values-ref _g92324_ 0)))
                    (_%tl5325953351%_
                     (let () (declare (not safe)) (##values-ref _g92324_ 1))))
                (if (gx#stx-null? _%tl5325953351%_)
                    (letrec ((_%loop5326053354%_
                              (lambda (_%hd5325853358%_ _%body5326453361%_)
                                (if (gx#stx-pair? _%hd5325853358%_)
                                    (let ((_%e5326153364%_
                                           (gx#syntax-e _%hd5325853358%_)))
                                      (let ((_%lp-hd5326253368%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5326153364%_)))
                                            (_%lp-tl5326353371%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5326153364%_))))
                                        (_%loop5326053354%_
                                         _%lp-tl5326353371%_
                                         (cons _%lp-hd5326253368%_
                                               _%body5326453361%_))))
                                    (let ((_%body5326553374%_
                                           (reverse _%body5326453361%_)))
                                      (if (gx#stx-null? _%tl5325653345%_)
                                          ((lambda (_%L53378%_
                                                    _%L53380%_
                                                    _%L53381%_
                                                    _%L53382%_
                                                    _%L53383%_
                                                    _%L53384%_
                                                    _%L53385%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L53383%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L53384%_ '()))
                                         (cons _%L53383%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L53385%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L53383%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L53382%_ '()))
                               (cons _%L53381%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L53380%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5341953422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5342053425%_)
                      (cons _%g5341953422%_ _%g5342053425%_))
                    '()
                    _%L53378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5326553374%_
                                           _%hd5325253332%_
                                           _%hd5324953322%_
                                           _%hd5324653312%_
                                           _%hd5324353302%_
                                           _%hd5324053292%_
                                           _%hd5323753282%_)
                                          (_%g5322753271%_
                                           _%g5322853275%_)))))))
                      (_%loop5326053354%_ _%target5325753348%_ '()))
                    (_%g5322753271%_ _%g5322853275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5322753271%_
                                                   _%g5322853275%_))))
                                          (_%g5322753271%_ _%g5322853275%_))))
                                  (_%g5322753271%_ _%g5322853275%_))))
                          (_%g5322753271%_ _%g5322853275%_))))
                  (_%g5322753271%_ _%g5322853275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5322753271%_
                                                   _%g5322853275%_))))
                                          (_%g5322753271%_ _%g5322853275%_))))
                                  (_%g5322753271%_ _%g5322853275%_)))))
                      (_%g5322653428%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj92138 _%klass53220%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92138
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92138
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj92138
                                    'type-descriptor)))
                             _%var53222%_
                             _%klass53220%_
                             _%checked?53225%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body53224%_)))))
                 (_%expand52314%_
                  (lambda (_%var53112%_
                           _%Type53114%_
                           _%body53115%_
                           _%checked?53116%_
                           _%checked-mutators?53117%_
                           _%maybe?53118%_)
                    (let* ((_%klass53120%_
                            (gx#syntax-local-value _%Type53114%_ false))
                           (_%expr-body53127%_
                            (_%expand-body52312%_
                             _%klass53120%_
                             _%var53112%_
                             _%Type53114%_
                             _%body53115%_
                             (let ((_%$e53123%_ _%checked?53116%_))
                               (if _%$e53123%_
                                   _%$e53123%_
                                   _%checked-mutators?53117%_)))))
                      (if _%checked?53116%_
                          (let* ((_%g5313253151%_
                                  (lambda (_%g5313353147%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5313353147%_)))
                                 (_%g5313153213%_
                                  (lambda (_%g5313353155%_)
                                    (if (gx#stx-pair? _%g5313353155%_)
                                        (let ((_%e5313753158%_
                                               (gx#syntax-e _%g5313353155%_)))
                                          (let ((_%hd5313853162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5313753158%_)))
                                                (_%tl5313953165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5313753158%_))))
                                            (if (gx#stx-pair? _%tl5313953165%_)
                                                (let ((_%e5314053168%_
                                                       (gx#syntax-e
                                                        _%tl5313953165%_)))
                                                  (let ((_%hd5314153172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5314053168%_)))
                                                        (_%tl5314253175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5314053168%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5314253175%_)
                                                        (let ((_%e5314353178%_
                                                               (gx#syntax-e
                                                                _%tl5314253175%_)))
                                                          (let ((_%hd5314453182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5314353178%_)))
                        (_%tl5314553185%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5314353178%_))))
                    (if (gx#stx-null? _%tl5314553185%_)
                        ((lambda (_%L53188%_ _%L53190%_ _%L53191%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L53190%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L53191%_ '())))
                                       (cons _%L53188%_ '()))))
                         _%hd5314453182%_
                         _%hd5314153172%_
                         _%hd5313853162%_)
                        (_%g5313253151%_ _%g5313353155%_))))
                (_%g5313253151%_ _%g5313353155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5313253151%_
                                                 _%g5313353155%_))))
                                        (_%g5313253151%_ _%g5313353155%_)))))
                            (_%g5313153213%_
                             (list (let ((_%instance?53217%_
                                          (let ((__obj92139 _%klass53120%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj92139
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj92139
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj92139
                                                 'predicate)))))
                                     (if _%maybe?53118%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?53217%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?53217%_))
                                   _%var53112%_
                                   _%expr-body53127%_)))
                          _%expr-body53127%_)))))
          (let* ((_%__stx8689786898%_ _%stx52309%_)
                 (_%g5232052463%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8689786898%_))))
            (let ((_%__kont8690086901%_
                   (lambda (_%L53040%_ _%L53042%_ _%L53043%_ _%L53044%_)
                     (let* ((_%g5306953077%_
                             (lambda (_%g5307053073%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5307053073%_)))
                            (_%g5306853104%_
                             (lambda (_%g5307053081%_)
                               ((lambda (_%L53084%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L53044%_
                                                    (cons _%L53043%_
                                                          (cons _%L53084%_
                                                                '())))
                                              (foldr (lambda (_%g5309553098%_
                                                              _%g5309653101%_)
                                                       (cons _%g5309553098%_
                                                             _%g5309653101%_))
                                                     '()
                                                     _%L53040%_))))
                                _%g5307053081%_))))
                       (_%g5306853104%_
                        (let ((__obj92140 (gx#syntax-local-value _%L53042%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92140
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92140
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92140
                               'identifier)))))))
                  (_%__kont8690486905%_
                   (lambda (_%L52918%_ _%L52920%_ _%L52921%_)
                     (_%expand52314%_
                      _%L52921%_
                      _%L52920%_
                      (foldr (lambda (_%g5294452947%_ _%g5294552950%_)
                               (cons _%g5294452947%_ _%g5294552950%_))
                             '()
                             _%L52918%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8690886909%_
                   (lambda (_%L52796%_ _%L52798%_ _%L52799%_)
                     (_%expand52314%_
                      _%L52799%_
                      _%L52798%_
                      (foldr (lambda (_%g5282252825%_ _%g5282352828%_)
                               (cons _%g5282252825%_ _%g5282352828%_))
                             '()
                             _%L52796%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8691286913%_
                   (lambda (_%L52674%_ _%L52676%_ _%L52677%_)
                     (_%expand52314%_
                      _%L52677%_
                      _%L52676%_
                      (foldr (lambda (_%g5270052703%_ _%g5270152706%_)
                               (cons _%g5270052703%_ _%g5270152706%_))
                             '()
                             _%L52674%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8691686917%_
                   (lambda (_%L52550%_ _%L52552%_ _%L52553%_)
                     (_%expand52314%_
                      _%L52553%_
                      _%L52552%_
                      (foldr (lambda (_%g5257852581%_ _%g5257952584%_)
                               (cons _%g5257852581%_ _%g5257952584%_))
                             '()
                             _%L52550%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8713687137%_
                      (lambda (_%e5243452470%_
                               _%hd5243552474%_
                               _%tl5243652477%_
                               _%e5243752480%_
                               _%hd5243852484%_
                               _%tl5243952487%_
                               _%e5244052490%_
                               _%hd5244152494%_
                               _%tl5244252497%_
                               _%e5244352500%_
                               _%hd5244452504%_
                               _%tl5244552507%_
                               _%e5244652510%_
                               _%hd5244752514%_
                               _%tl5244852517%_
                               _%__splice8691886919%_
                               _%target5244952520%_
                               _%tl5245152523%_)
                        (letrec ((_%loop5245252526%_
                                  (lambda (_%hd5245052530%_ _%body5245652533%_)
                                    (if (gx#stx-pair? _%hd5245052530%_)
                                        (let ((_%e5245352536%_
                                               (gx#syntax-e _%hd5245052530%_)))
                                          (let ((_%lp-tl5245552543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5245352536%_)))
                                                (_%lp-hd5245452540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5245352536%_))))
                                            (_%loop5245252526%_
                                             _%lp-tl5245552543%_
                                             (cons _%lp-hd5245452540%_
                                                   _%body5245652533%_))))
                                        (let ((_%body5245752546%_
                                               (reverse _%body5245652533%_)))
                                          (let ((_%L52550%_ _%body5245752546%_)
                                                (_%L52552%_ _%hd5244752514%_)
                                                (_%L52553%_ _%hd5244152494%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52552%_))
                                                (_%__kont8691686917%_
                                                 _%L52550%_
                                                 _%L52552%_
                                                 _%L52553%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))))))))
                          (_%loop5245252526%_ _%target5244952520%_ '()))))
                     (_%__match8709287093%_
                      (lambda (_%e5240752594%_
                               _%hd5240852598%_
                               _%tl5240952601%_
                               _%e5241052604%_
                               _%hd5241152608%_
                               _%tl5241252611%_
                               _%e5241352614%_
                               _%hd5241452618%_
                               _%tl5241552621%_
                               _%e5241652624%_
                               _%hd5241752628%_
                               _%tl5241852631%_
                               _%e5241952634%_
                               _%hd5242052638%_
                               _%tl5242152641%_
                               _%__splice8691486915%_
                               _%target5242252644%_
                               _%tl5242452647%_)
                        (letrec ((_%loop5242552650%_
                                  (lambda (_%hd5242352654%_ _%body5242952657%_)
                                    (if (gx#stx-pair? _%hd5242352654%_)
                                        (let ((_%e5242652660%_
                                               (gx#syntax-e _%hd5242352654%_)))
                                          (let ((_%lp-tl5242852667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5242652660%_)))
                                                (_%lp-hd5242752664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5242652660%_))))
                                            (_%loop5242552650%_
                                             _%lp-tl5242852667%_
                                             (cons _%lp-hd5242752664%_
                                                   _%body5242952657%_))))
                                        (let ((_%body5243052670%_
                                               (reverse _%body5242952657%_)))
                                          (let ((_%L52674%_ _%body5243052670%_)
                                                (_%L52676%_ _%hd5242052638%_)
                                                (_%L52677%_ _%hd5241452618%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52676%_))
                                                (_%__kont8691286913%_
                                                 _%L52674%_
                                                 _%L52676%_
                                                 _%L52677%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))))))))
                          (_%loop5242552650%_ _%target5242252644%_ '()))))
                     (_%__match8704887049%_
                      (lambda (_%e5238052716%_
                               _%hd5238152720%_
                               _%tl5238252723%_
                               _%e5238352726%_
                               _%hd5238452730%_
                               _%tl5238552733%_
                               _%e5238652736%_
                               _%hd5238752740%_
                               _%tl5238852743%_
                               _%e5238952746%_
                               _%hd5239052750%_
                               _%tl5239152753%_
                               _%e5239252756%_
                               _%hd5239352760%_
                               _%tl5239452763%_
                               _%__splice8691086911%_
                               _%target5239552766%_
                               _%tl5239752769%_)
                        (letrec ((_%loop5239852772%_
                                  (lambda (_%hd5239652776%_ _%body5240252779%_)
                                    (if (gx#stx-pair? _%hd5239652776%_)
                                        (let ((_%e5239952782%_
                                               (gx#syntax-e _%hd5239652776%_)))
                                          (let ((_%lp-tl5240152789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5239952782%_)))
                                                (_%lp-hd5240052786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5239952782%_))))
                                            (_%loop5239852772%_
                                             _%lp-tl5240152789%_
                                             (cons _%lp-hd5240052786%_
                                                   _%body5240252779%_))))
                                        (let ((_%body5240352792%_
                                               (reverse _%body5240252779%_)))
                                          (let ((_%L52796%_ _%body5240352792%_)
                                                (_%L52798%_ _%hd5239352760%_)
                                                (_%L52799%_ _%hd5238752740%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52798%_))
                                                (_%__kont8690886909%_
                                                 _%L52796%_
                                                 _%L52798%_
                                                 _%L52799%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))))))))
                          (_%loop5239852772%_ _%target5239552766%_ '()))))
                     (_%__match8700487005%_
                      (lambda (_%e5235352838%_
                               _%hd5235452842%_
                               _%tl5235552845%_
                               _%e5235652848%_
                               _%hd5235752852%_
                               _%tl5235852855%_
                               _%e5235952858%_
                               _%hd5236052862%_
                               _%tl5236152865%_
                               _%e5236252868%_
                               _%hd5236352872%_
                               _%tl5236452875%_
                               _%e5236552878%_
                               _%hd5236652882%_
                               _%tl5236752885%_
                               _%__splice8690686907%_
                               _%target5236852888%_
                               _%tl5237052891%_)
                        (letrec ((_%loop5237152894%_
                                  (lambda (_%hd5236952898%_ _%body5237552901%_)
                                    (if (gx#stx-pair? _%hd5236952898%_)
                                        (let ((_%e5237252904%_
                                               (gx#syntax-e _%hd5236952898%_)))
                                          (let ((_%lp-tl5237452911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5237252904%_)))
                                                (_%lp-hd5237352908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5237252904%_))))
                                            (_%loop5237152894%_
                                             _%lp-tl5237452911%_
                                             (cons _%lp-hd5237352908%_
                                                   _%body5237552901%_))))
                                        (let ((_%body5237652914%_
                                               (reverse _%body5237552901%_)))
                                          (let ((_%L52918%_ _%body5237652914%_)
                                                (_%L52920%_ _%hd5236652882%_)
                                                (_%L52921%_ _%hd5236052862%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L52920%_))
                                                (_%__kont8690486905%_
                                                 _%L52918%_
                                                 _%L52920%_
                                                 _%L52921%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))))))))
                          (_%loop5237152894%_ _%target5236852888%_ '()))))
                     (_%__match8698486985%_
                      (lambda (_%e5235352838%_
                               _%hd5235452842%_
                               _%tl5235552845%_
                               _%e5235652848%_
                               _%hd5235752852%_
                               _%tl5235852855%_
                               _%e5235952858%_
                               _%hd5236052862%_
                               _%tl5236152865%_
                               _%e5236252868%_
                               _%hd5236352872%_
                               _%tl5236452875%_)
                        (if (gx#identifier? _%hd5236352872%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92326_|
                                 _%hd5236352872%_)
                                (if (gx#stx-pair? _%tl5236452875%_)
                                    (let ((_%e5236552878%_
                                           (gx#syntax-e _%tl5236452875%_)))
                                      (let ((_%tl5236752885%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5236552878%_)))
                                            (_%hd5236652882%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5236552878%_))))
                                        (if (gx#stx-null? _%tl5236752885%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5235852855%_)
                                                (let ((_%__splice8690686907%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5235852855%_
                                                        '0)))
                                                  (let ((_%tl5237052891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8690686907%_
                                                            '1)))
                                                        (_%target5236852888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8690686907%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5237052891%_)
                                                        (_%__match8700487005%_
                                                         _%e5235352838%_
                                                         _%hd5235452842%_
                                                         _%tl5235552845%_
                                                         _%e5235652848%_
                                                         _%hd5235752852%_
                                                         _%tl5235852855%_
                                                         _%e5235952858%_
                                                         _%hd5236052862%_
                                                         _%tl5236152865%_
                                                         _%e5236252868%_
                                                         _%hd5236352872%_
                                                         _%tl5236452875%_
                                                         _%e5236552878%_
                                                         _%hd5236652882%_
                                                         _%tl5236752885%_
                                                         _%__splice8690686907%_
                                                         _%target5236852888%_
                                                         _%tl5237052891%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5232052463%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5232052463%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5232052463%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92327_|
                                     _%hd5236352872%_)
                                    (if (gx#stx-pair? _%tl5236452875%_)
                                        (let ((_%e5239252756%_
                                               (gx#syntax-e _%tl5236452875%_)))
                                          (let ((_%tl5239452763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5239252756%_)))
                                                (_%hd5239352760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5239252756%_))))
                                            (if (gx#stx-null? _%tl5239452763%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5235852855%_)
                                                    (let ((_%__splice8691086911%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5235852855%_
                                                            '0)))
                                                      (let ((_%tl5239752769%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8691086911%_ '1)))
                    (_%target5239552766%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8691086911%_ '0))))
                (if (gx#stx-null? _%tl5239752769%_)
                    (_%__match8704887049%_
                     _%e5235352838%_
                     _%hd5235452842%_
                     _%tl5235552845%_
                     _%e5235652848%_
                     _%hd5235752852%_
                     _%tl5235852855%_
                     _%e5235952858%_
                     _%hd5236052862%_
                     _%tl5236152865%_
                     _%e5236252868%_
                     _%hd5236352872%_
                     _%tl5236452875%_
                     _%e5239252756%_
                     _%hd5239352760%_
                     _%tl5239452763%_
                     _%__splice8691086911%_
                     _%target5239552766%_
                     _%tl5239752769%_)
                    (let () (declare (not safe)) (_%g5232052463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5232052463%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5232052463%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92328_|
                                         _%hd5236352872%_)
                                        (if (gx#stx-pair? _%tl5236452875%_)
                                            (let ((_%e5241952634%_
                                                   (gx#syntax-e
                                                    _%tl5236452875%_)))
                                              (let ((_%tl5242152641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5241952634%_)))
                                                    (_%hd5242052638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5241952634%_))))
                                                (if (gx#stx-null?
                                                     _%tl5242152641%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5235852855%_)
                                                        (let ((_%__splice8691486915%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5235852855%_
                                                                '0)))
                                                          (let ((_%tl5242452647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8691486915%_ '1)))
                        (_%target5242252644%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8691486915%_ '0))))
                    (if (gx#stx-null? _%tl5242452647%_)
                        (_%__match8709287093%_
                         _%e5235352838%_
                         _%hd5235452842%_
                         _%tl5235552845%_
                         _%e5235652848%_
                         _%hd5235752852%_
                         _%tl5235852855%_
                         _%e5235952858%_
                         _%hd5236052862%_
                         _%tl5236152865%_
                         _%e5236252868%_
                         _%hd5236352872%_
                         _%tl5236452875%_
                         _%e5241952634%_
                         _%hd5242052638%_
                         _%tl5242152641%_
                         _%__splice8691486915%_
                         _%target5242252644%_
                         _%tl5242452647%_)
                        (let () (declare (not safe)) (_%g5232052463%_)))))
                (let () (declare (not safe)) (_%g5232052463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5232052463%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5232052463%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92329_|
                                             _%hd5236352872%_)
                                            (if (gx#stx-pair? _%tl5236452875%_)
                                                (let ((_%e5244652510%_
                                                       (gx#syntax-e
                                                        _%tl5236452875%_)))
                                                  (let ((_%tl5244852517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5244652510%_)))
                                                        (_%hd5244752514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5244652510%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5244852517%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5235852855%_)
                                                            (let ((_%__splice8691886919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5235852855%_
                            '0)))
                      (let ((_%tl5245152523%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8691886919%_ '1)))
                            (_%target5244952520%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8691886919%_ '0))))
                        (if (gx#stx-null? _%tl5245152523%_)
                            (_%__match8713687137%_
                             _%e5235352838%_
                             _%hd5235452842%_
                             _%tl5235552845%_
                             _%e5235652848%_
                             _%hd5235752852%_
                             _%tl5235852855%_
                             _%e5235952858%_
                             _%hd5236052862%_
                             _%tl5236152865%_
                             _%e5236252868%_
                             _%hd5236352872%_
                             _%tl5236452875%_
                             _%e5244652510%_
                             _%hd5244752514%_
                             _%tl5244852517%_
                             _%__splice8691886919%_
                             _%target5244952520%_
                             _%tl5245152523%_)
                            (let () (declare (not safe)) (_%g5232052463%_)))))
                    (let () (declare (not safe)) (_%g5232052463%_)))
                (let () (declare (not safe)) (_%g5232052463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5232052463%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5232052463%_))))))
                            (let () (declare (not safe)) (_%g5232052463%_)))))
                     (_%__match8696086961%_
                      (lambda (_%e5232652960%_
                               _%hd5232752964%_
                               _%tl5232852967%_
                               _%e5232952970%_
                               _%hd5233052974%_
                               _%tl5233152977%_
                               _%e5233252980%_
                               _%hd5233352984%_
                               _%tl5233452987%_
                               _%e5233552990%_
                               _%hd5233652994%_
                               _%tl5233752997%_
                               _%e5233853000%_
                               _%hd5233953004%_
                               _%tl5234053007%_
                               _%__splice8690286903%_
                               _%target5234153010%_
                               _%tl5234353013%_)
                        (letrec ((_%loop5234453016%_
                                  (lambda (_%hd5234253020%_ _%body5234853023%_)
                                    (if (gx#stx-pair? _%hd5234253020%_)
                                        (let ((_%e5234553026%_
                                               (gx#syntax-e _%hd5234253020%_)))
                                          (let ((_%lp-tl5234753033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5234553026%_)))
                                                (_%lp-hd5234653030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5234553026%_))))
                                            (_%loop5234453016%_
                                             _%lp-tl5234753033%_
                                             (cons _%lp-hd5234653030%_
                                                   _%body5234853023%_))))
                                        (let ((_%body5234953036%_
                                               (reverse _%body5234853023%_)))
                                          (let ((_%L53040%_ _%body5234953036%_)
                                                (_%L53042%_ _%hd5233953004%_)
                                                (_%L53043%_ _%hd5233652994%_)
                                                (_%L53044%_ _%hd5233352984%_))
                                            (if (let ((__tmp92330
                                                       (gx#syntax-local-value
                                                        _%L53042%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92330))
                                                (_%__kont8690086901%_
                                                 _%L53040%_
                                                 _%L53042%_
                                                 _%L53043%_
                                                 _%L53044%_)
                                                (_%__match8698486985%_
                                                 _%e5232652960%_
                                                 _%hd5232752964%_
                                                 _%tl5232852967%_
                                                 _%e5232952970%_
                                                 _%hd5233052974%_
                                                 _%tl5233152977%_
                                                 _%e5233252980%_
                                                 _%hd5233352984%_
                                                 _%tl5233452987%_
                                                 _%e5233552990%_
                                                 _%hd5233652994%_
                                                 _%tl5233752997%_))))))))
                          (_%loop5234453016%_ _%target5234153010%_ '())))))
                (if (gx#stx-pair? _%__stx8689786898%_)
                    (let ((_%e5232652960%_ (gx#syntax-e _%__stx8689786898%_)))
                      (let ((_%tl5232852967%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5232652960%_)))
                            (_%hd5232752964%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5232652960%_))))
                        (if (gx#stx-pair? _%tl5232852967%_)
                            (let ((_%e5232952970%_
                                   (gx#syntax-e _%tl5232852967%_)))
                              (let ((_%tl5233152977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5232952970%_)))
                                    (_%hd5233052974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5232952970%_))))
                                (if (gx#stx-pair? _%hd5233052974%_)
                                    (let ((_%e5233252980%_
                                           (gx#syntax-e _%hd5233052974%_)))
                                      (let ((_%tl5233452987%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5233252980%_)))
                                            (_%hd5233352984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5233252980%_))))
                                        (if (gx#stx-pair? _%tl5233452987%_)
                                            (let ((_%e5233552990%_
                                                   (gx#syntax-e
                                                    _%tl5233452987%_)))
                                              (let ((_%tl5233752997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5233552990%_)))
                                                    (_%hd5233652994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5233552990%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5233752997%_)
                                                    (let ((_%e5233853000%_
                                                           (gx#syntax-e
                                                            _%tl5233752997%_)))
                                                      (let ((_%tl5234053007%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5233853000%_)))
                    (_%hd5233953004%_
                     (let () (declare (not safe)) (##car _%e5233853000%_))))
                (if (gx#stx-null? _%tl5234053007%_)
                    (if (gx#stx-pair/null? _%tl5233152977%_)
                        (let ((_%__splice8690286903%_
                               (gx#syntax-split-splice->vector
                                _%tl5233152977%_
                                '0)))
                          (let ((_%tl5234353013%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8690286903%_ '1)))
                                (_%target5234153010%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8690286903%_ '0))))
                            (if (gx#stx-null? _%tl5234353013%_)
                                (_%__match8696086961%_
                                 _%e5232652960%_
                                 _%hd5232752964%_
                                 _%tl5232852967%_
                                 _%e5232952970%_
                                 _%hd5233052974%_
                                 _%tl5233152977%_
                                 _%e5233252980%_
                                 _%hd5233352984%_
                                 _%tl5233452987%_
                                 _%e5233552990%_
                                 _%hd5233652994%_
                                 _%tl5233752997%_
                                 _%e5233853000%_
                                 _%hd5233953004%_
                                 _%tl5234053007%_
                                 _%__splice8690286903%_
                                 _%target5234153010%_
                                 _%tl5234353013%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5232052463%_)))))
                        (let () (declare (not safe)) (_%g5232052463%_)))
                    (let () (declare (not safe)) (_%g5232052463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5232052463%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5232052463%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5232052463%_)))))
                            (let () (declare (not safe)) (_%g5232052463%_)))))
                    (let () (declare (not safe)) (_%g5232052463%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx53438%_)
        (letrec ((_%expand-body53441%_
                  (lambda (_%var54442%_
                           _%Interface54444%_
                           _%body54445%_
                           _%checked?54446%_)
                    (let* ((_%type54448%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx53438%_
                               _%Interface54444%_)))
                           (_%g5445154495%_
                            (lambda (_%g5445254491%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5445254491%_)))
                           (_%g5445054653%_
                            (lambda (_%g5445254499%_)
                              (if (gx#stx-pair? _%g5445254499%_)
                                  (let ((_%e5446054502%_
                                         (gx#syntax-e _%g5445254499%_)))
                                    (let ((_%hd5446154506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5446054502%_)))
                                          (_%tl5446254509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5446054502%_))))
                                      (if (gx#stx-pair? _%tl5446254509%_)
                                          (let ((_%e5446354512%_
                                                 (gx#syntax-e
                                                  _%tl5446254509%_)))
                                            (let ((_%hd5446454516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5446354512%_)))
                                                  (_%tl5446554519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5446354512%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5446554519%_)
                                                  (let ((_%e5446654522%_
                                                         (gx#syntax-e
                                                          _%tl5446554519%_)))
                                                    (let ((_%hd5446754526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5446654522%_)))
                                                          (_%tl5446854529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5446654522%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5446854529%_)
                                                          (let ((_%e5446954532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5446854529%_)))
                    (let ((_%hd5447054536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5446954532%_)))
                          (_%tl5447154539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5446954532%_))))
                      (if (gx#stx-pair? _%tl5447154539%_)
                          (let ((_%e5447254542%_
                                 (gx#syntax-e _%tl5447154539%_)))
                            (let ((_%hd5447354546%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5447254542%_)))
                                  (_%tl5447454549%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5447254542%_))))
                              (if (gx#stx-pair? _%tl5447454549%_)
                                  (let ((_%e5447554552%_
                                         (gx#syntax-e _%tl5447454549%_)))
                                    (let ((_%hd5447654556%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5447554552%_)))
                                          (_%tl5447754559%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5447554552%_))))
                                      (if (gx#stx-pair? _%tl5447754559%_)
                                          (let ((_%e5447854562%_
                                                 (gx#syntax-e
                                                  _%tl5447754559%_)))
                                            (let ((_%hd5447954566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5447854562%_)))
                                                  (_%tl5448054569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5447854562%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5447954566%_)
                                                  (let ((_g92331_
                                                         (gx#syntax-split-splice
                                                          _%hd5447954566%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g92332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g92331_)
                           (##values-length _g92331_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g92332_ 2)))
                    (error "Context expects 2 values" _g92332_)))
              (let ((_%target5448154572%_
                     (let () (declare (not safe)) (##values-ref _g92331_ 0)))
                    (_%tl5448354575%_
                     (let () (declare (not safe)) (##values-ref _g92331_ 1))))
                (if (gx#stx-null? _%tl5448354575%_)
                    (letrec ((_%loop5448454578%_
                              (lambda (_%hd5448254582%_ _%body5448854585%_)
                                (if (gx#stx-pair? _%hd5448254582%_)
                                    (let ((_%e5448554588%_
                                           (gx#syntax-e _%hd5448254582%_)))
                                      (let ((_%lp-hd5448654592%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5448554588%_)))
                                            (_%lp-tl5448754595%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5448554588%_))))
                                        (_%loop5448454578%_
                                         _%lp-tl5448754595%_
                                         (cons _%lp-hd5448654592%_
                                               _%body5448854585%_))))
                                    (let ((_%body5448954598%_
                                           (reverse _%body5448854585%_)))
                                      (if (gx#stx-null? _%tl5448054569%_)
                                          ((lambda (_%L54602%_
                                                    _%L54604%_
                                                    _%L54605%_
                                                    _%L54606%_
                                                    _%L54607%_
                                                    _%L54608%_
                                                    _%L54609%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L54606%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L54607%_ '()))
                                         (cons _%L54606%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L54609%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L54606%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L54608%_ '()))
                               (cons _%L54605%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L54604%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5464454647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5464554650%_)
                      (cons _%g5464454647%_ _%g5464554650%_))
                    '()
                    _%L54602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5448954598%_
                                           _%hd5447654556%_
                                           _%hd5447354546%_
                                           _%hd5447054536%_
                                           _%hd5446754526%_
                                           _%hd5446454516%_
                                           _%hd5446154506%_)
                                          (_%g5445154495%_
                                           _%g5445254499%_)))))))
                      (_%loop5448454578%_ _%target5448154572%_ '()))
                    (_%g5445154495%_ _%g5445254499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5445154495%_
                                                   _%g5445254499%_))))
                                          (_%g5445154495%_ _%g5445254499%_))))
                                  (_%g5445154495%_ _%g5445254499%_))))
                          (_%g5445154495%_ _%g5445254499%_))))
                  (_%g5445154495%_ _%g5445254499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5445154495%_
                                                   _%g5445254499%_))))
                                          (_%g5445154495%_ _%g5445254499%_))))
                                  (_%g5445154495%_ _%g5445254499%_)))))
                      (_%g5445054653%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type54448%_
                             (let ((__obj92141 _%type54448%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj92141
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj92141
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj92141
                                    'type-descriptor)))
                             _%var54442%_
                             _%checked?54446%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54445%_)))))
                 (_%expand53443%_
                  (lambda (_%var54241%_
                           _%Interface54243%_
                           _%body54244%_
                           _%checked?54245%_
                           _%checked-methods?54246%_
                           _%maybe?54247%_)
                    (let* ((_%g5424954257%_
                            (lambda (_%g5425054253%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5425054253%_)))
                           (_%g5424854434%_
                            (lambda (_%g5425054261%_)
                              ((lambda (_%L54264%_)
                                 (if _%checked?54245%_
                                     (if _%maybe?54247%_
                                         (let* ((_%g5427654291%_
                                                 (lambda (_%g5427754287%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5427754287%_)))
                                                (_%g5427554337%_
                                                 (lambda (_%g5427754295%_)
                                                   (if (gx#stx-pair?
                                                        _%g5427754295%_)
                                                       (let ((_%e5428054298%_
                                                              (gx#syntax-e
                                                               _%g5427754295%_)))
                                                         (let ((_%hd5428154302%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5428054298%_)))
                       (_%tl5428254305%_
                        (let () (declare (not safe)) (##cdr _%e5428054298%_))))
                   (if (gx#stx-pair? _%tl5428254305%_)
                       (let ((_%e5428354308%_ (gx#syntax-e _%tl5428254305%_)))
                         (let ((_%hd5428454312%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5428354308%_)))
                               (_%tl5428554315%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5428354308%_))))
                           (if (gx#stx-null? _%tl5428554315%_)
                               ((lambda (_%L54318%_ _%L54320%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L54320%_
                                                    (cons (cons _%L54318%_
                                                                (cons _%L54320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L54320%_
                                                                (cons _%L54264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L54320%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5428454312%_
                                _%hd5428154302%_)
                               (_%g5427654291%_ _%g5427754295%_))))
                       (_%g5427654291%_ _%g5427754295%_))))
               (_%g5427654291%_ _%g5427754295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5427554337%_
                                            (list _%var54241%_
                                                  _%Interface54243%_)))
                                         (let* ((_%g5434154356%_
                                                 (lambda (_%g5434254352%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5434254352%_)))
                                                (_%g5434054400%_
                                                 (lambda (_%g5434254360%_)
                                                   (if (gx#stx-pair?
                                                        _%g5434254360%_)
                                                       (let ((_%e5434554363%_
                                                              (gx#syntax-e
                                                               _%g5434254360%_)))
                                                         (let ((_%hd5434654367%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5434554363%_)))
                       (_%tl5434754370%_
                        (let () (declare (not safe)) (##cdr _%e5434554363%_))))
                   (if (gx#stx-pair? _%tl5434754370%_)
                       (let ((_%e5434854373%_ (gx#syntax-e _%tl5434754370%_)))
                         (let ((_%hd5434954377%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5434854373%_)))
                               (_%tl5435054380%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5434854373%_))))
                           (if (gx#stx-null? _%tl5435054380%_)
                               ((lambda (_%L54383%_ _%L54385%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L54385%_
                                                    (cons (cons _%L54383%_
                                                                (cons _%L54385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L54264%_ '()))))
                                _%hd5434954377%_
                                _%hd5434654367%_)
                               (_%g5434154356%_ _%g5434254360%_))))
                       (_%g5434154356%_ _%g5434254360%_))))
               (_%g5434154356%_ _%g5434254360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5434054400%_
                                            (list _%var54241%_
                                                  _%Interface54243%_))))
                                     (if _%maybe?54247%_
                                         (let* ((_%g5440454412%_
                                                 (lambda (_%g5440554408%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5440554408%_)))
                                                (_%g5440354430%_
                                                 (lambda (_%g5440554416%_)
                                                   ((lambda (_%L54419%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L54419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L54264%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L54419%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5440554416%_))))
                                           (_%g5440354430%_ _%var54241%_))
                                         _%L54264%_)))
                               _%g5425054261%_))))
                      (_%g5424854434%_
                       (_%expand-body53441%_
                        _%var54241%_
                        _%Interface54243%_
                        _%body54244%_
                        (let ((_%$e54438%_ _%checked?54245%_))
                          (if _%$e54438%_
                              _%$e54438%_
                              _%checked-methods?54246%_))))))))
          (let* ((_%__stx8713987140%_ _%stx53438%_)
                 (_%g5344953592%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8713987140%_))))
            (let ((_%__kont8714287143%_
                   (lambda (_%L54169%_ _%L54171%_ _%L54172%_ _%L54173%_)
                     (let* ((_%g5419854206%_
                             (lambda (_%g5419954202%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5419954202%_)))
                            (_%g5419754233%_
                             (lambda (_%g5419954210%_)
                               ((lambda (_%L54213%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L54173%_
                                                    (cons _%L54172%_
                                                          (cons _%L54213%_
                                                                '())))
                                              (foldr (lambda (_%g5422454227%_
                                                              _%g5422554230%_)
                                                       (cons _%g5422454227%_
                                                             _%g5422554230%_))
                                                     '()
                                                     _%L54169%_))))
                                _%g5419954210%_))))
                       (_%g5419754233%_
                        (let ((__obj92142 (gx#syntax-local-value _%L54171%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj92142
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj92142
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj92142
                               'identifier)))))))
                  (_%__kont8714687147%_
                   (lambda (_%L54047%_ _%L54049%_ _%L54050%_)
                     (_%expand53443%_
                      _%L54050%_
                      _%L54049%_
                      (foldr (lambda (_%g5407354076%_ _%g5407454079%_)
                               (cons _%g5407354076%_ _%g5407454079%_))
                             '()
                             _%L54047%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont8715087151%_
                   (lambda (_%L53925%_ _%L53927%_ _%L53928%_)
                     (_%expand53443%_
                      _%L53928%_
                      _%L53927%_
                      (foldr (lambda (_%g5395153954%_ _%g5395253957%_)
                               (cons _%g5395153954%_ _%g5395253957%_))
                             '()
                             _%L53925%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont8715487155%_
                   (lambda (_%L53803%_ _%L53805%_ _%L53806%_)
                     (_%expand53443%_
                      _%L53806%_
                      _%L53805%_
                      (foldr (lambda (_%g5382953832%_ _%g5383053835%_)
                               (cons _%g5382953832%_ _%g5383053835%_))
                             '()
                             _%L53803%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont8715887159%_
                   (lambda (_%L53679%_ _%L53681%_ _%L53682%_)
                     (_%expand53443%_
                      _%L53682%_
                      _%L53681%_
                      (foldr (lambda (_%g5370753710%_ _%g5370853713%_)
                               (cons _%g5370753710%_ _%g5370853713%_))
                             '()
                             _%L53679%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match8737887379%_
                      (lambda (_%e5356353599%_
                               _%hd5356453603%_
                               _%tl5356553606%_
                               _%e5356653609%_
                               _%hd5356753613%_
                               _%tl5356853616%_
                               _%e5356953619%_
                               _%hd5357053623%_
                               _%tl5357153626%_
                               _%e5357253629%_
                               _%hd5357353633%_
                               _%tl5357453636%_
                               _%e5357553639%_
                               _%hd5357653643%_
                               _%tl5357753646%_
                               _%__splice8716087161%_
                               _%target5357853649%_
                               _%tl5358053652%_)
                        (letrec ((_%loop5358153655%_
                                  (lambda (_%hd5357953659%_ _%body5358553662%_)
                                    (if (gx#stx-pair? _%hd5357953659%_)
                                        (let ((_%e5358253665%_
                                               (gx#syntax-e _%hd5357953659%_)))
                                          (let ((_%lp-tl5358453672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5358253665%_)))
                                                (_%lp-hd5358353669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5358253665%_))))
                                            (_%loop5358153655%_
                                             _%lp-tl5358453672%_
                                             (cons _%lp-hd5358353669%_
                                                   _%body5358553662%_))))
                                        (let ((_%body5358653675%_
                                               (reverse _%body5358553662%_)))
                                          (let ((_%L53679%_ _%body5358653675%_)
                                                (_%L53681%_ _%hd5357653643%_)
                                                (_%L53682%_ _%hd5357053623%_))
                                            (if (and (gx#identifier?
                                                      _%L53682%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53681%_)))
                                                (_%__kont8715887159%_
                                                 _%L53679%_
                                                 _%L53681%_
                                                 _%L53682%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))))))))
                          (_%loop5358153655%_ _%target5357853649%_ '()))))
                     (_%__match8733487335%_
                      (lambda (_%e5353653723%_
                               _%hd5353753727%_
                               _%tl5353853730%_
                               _%e5353953733%_
                               _%hd5354053737%_
                               _%tl5354153740%_
                               _%e5354253743%_
                               _%hd5354353747%_
                               _%tl5354453750%_
                               _%e5354553753%_
                               _%hd5354653757%_
                               _%tl5354753760%_
                               _%e5354853763%_
                               _%hd5354953767%_
                               _%tl5355053770%_
                               _%__splice8715687157%_
                               _%target5355153773%_
                               _%tl5355353776%_)
                        (letrec ((_%loop5355453779%_
                                  (lambda (_%hd5355253783%_ _%body5355853786%_)
                                    (if (gx#stx-pair? _%hd5355253783%_)
                                        (let ((_%e5355553789%_
                                               (gx#syntax-e _%hd5355253783%_)))
                                          (let ((_%lp-tl5355753796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5355553789%_)))
                                                (_%lp-hd5355653793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5355553789%_))))
                                            (_%loop5355453779%_
                                             _%lp-tl5355753796%_
                                             (cons _%lp-hd5355653793%_
                                                   _%body5355853786%_))))
                                        (let ((_%body5355953799%_
                                               (reverse _%body5355853786%_)))
                                          (let ((_%L53803%_ _%body5355953799%_)
                                                (_%L53805%_ _%hd5354953767%_)
                                                (_%L53806%_ _%hd5354353747%_))
                                            (if (and (gx#identifier?
                                                      _%L53806%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53805%_)))
                                                (_%__kont8715487155%_
                                                 _%L53803%_
                                                 _%L53805%_
                                                 _%L53806%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))))))))
                          (_%loop5355453779%_ _%target5355153773%_ '()))))
                     (_%__match8729087291%_
                      (lambda (_%e5350953845%_
                               _%hd5351053849%_
                               _%tl5351153852%_
                               _%e5351253855%_
                               _%hd5351353859%_
                               _%tl5351453862%_
                               _%e5351553865%_
                               _%hd5351653869%_
                               _%tl5351753872%_
                               _%e5351853875%_
                               _%hd5351953879%_
                               _%tl5352053882%_
                               _%e5352153885%_
                               _%hd5352253889%_
                               _%tl5352353892%_
                               _%__splice8715287153%_
                               _%target5352453895%_
                               _%tl5352653898%_)
                        (letrec ((_%loop5352753901%_
                                  (lambda (_%hd5352553905%_ _%body5353153908%_)
                                    (if (gx#stx-pair? _%hd5352553905%_)
                                        (let ((_%e5352853911%_
                                               (gx#syntax-e _%hd5352553905%_)))
                                          (let ((_%lp-tl5353053918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5352853911%_)))
                                                (_%lp-hd5352953915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5352853911%_))))
                                            (_%loop5352753901%_
                                             _%lp-tl5353053918%_
                                             (cons _%lp-hd5352953915%_
                                                   _%body5353153908%_))))
                                        (let ((_%body5353253921%_
                                               (reverse _%body5353153908%_)))
                                          (let ((_%L53925%_ _%body5353253921%_)
                                                (_%L53927%_ _%hd5352253889%_)
                                                (_%L53928%_ _%hd5351653869%_))
                                            (if (and (gx#identifier?
                                                      _%L53928%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L53927%_)))
                                                (_%__kont8715087151%_
                                                 _%L53925%_
                                                 _%L53927%_
                                                 _%L53928%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))))))))
                          (_%loop5352753901%_ _%target5352453895%_ '()))))
                     (_%__match8724687247%_
                      (lambda (_%e5348253967%_
                               _%hd5348353971%_
                               _%tl5348453974%_
                               _%e5348553977%_
                               _%hd5348653981%_
                               _%tl5348753984%_
                               _%e5348853987%_
                               _%hd5348953991%_
                               _%tl5349053994%_
                               _%e5349153997%_
                               _%hd5349254001%_
                               _%tl5349354004%_
                               _%e5349454007%_
                               _%hd5349554011%_
                               _%tl5349654014%_
                               _%__splice8714887149%_
                               _%target5349754017%_
                               _%tl5349954020%_)
                        (letrec ((_%loop5350054023%_
                                  (lambda (_%hd5349854027%_ _%body5350454030%_)
                                    (if (gx#stx-pair? _%hd5349854027%_)
                                        (let ((_%e5350154033%_
                                               (gx#syntax-e _%hd5349854027%_)))
                                          (let ((_%lp-tl5350354040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5350154033%_)))
                                                (_%lp-hd5350254037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5350154033%_))))
                                            (_%loop5350054023%_
                                             _%lp-tl5350354040%_
                                             (cons _%lp-hd5350254037%_
                                                   _%body5350454030%_))))
                                        (let ((_%body5350554043%_
                                               (reverse _%body5350454030%_)))
                                          (let ((_%L54047%_ _%body5350554043%_)
                                                (_%L54049%_ _%hd5349554011%_)
                                                (_%L54050%_ _%hd5348953991%_))
                                            (if (and (gx#identifier?
                                                      _%L54050%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L54049%_)))
                                                (_%__kont8714687147%_
                                                 _%L54047%_
                                                 _%L54049%_
                                                 _%L54050%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))))))))
                          (_%loop5350054023%_ _%target5349754017%_ '()))))
                     (_%__match8722687227%_
                      (lambda (_%e5348253967%_
                               _%hd5348353971%_
                               _%tl5348453974%_
                               _%e5348553977%_
                               _%hd5348653981%_
                               _%tl5348753984%_
                               _%e5348853987%_
                               _%hd5348953991%_
                               _%tl5349053994%_
                               _%e5349153997%_
                               _%hd5349254001%_
                               _%tl5349354004%_)
                        (if (gx#identifier? _%hd5349254001%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g92333_|
                                 _%hd5349254001%_)
                                (if (gx#stx-pair? _%tl5349354004%_)
                                    (let ((_%e5349454007%_
                                           (gx#syntax-e _%tl5349354004%_)))
                                      (let ((_%tl5349654014%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5349454007%_)))
                                            (_%hd5349554011%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5349454007%_))))
                                        (if (gx#stx-null? _%tl5349654014%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5348753984%_)
                                                (let ((_%__splice8714887149%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5348753984%_
                                                        '0)))
                                                  (let ((_%tl5349954020%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8714887149%_
                                                            '1)))
                                                        (_%target5349754017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8714887149%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5349954020%_)
                                                        (_%__match8724687247%_
                                                         _%e5348253967%_
                                                         _%hd5348353971%_
                                                         _%tl5348453974%_
                                                         _%e5348553977%_
                                                         _%hd5348653981%_
                                                         _%tl5348753984%_
                                                         _%e5348853987%_
                                                         _%hd5348953991%_
                                                         _%tl5349053994%_
                                                         _%e5349153997%_
                                                         _%hd5349254001%_
                                                         _%tl5349354004%_
                                                         _%e5349454007%_
                                                         _%hd5349554011%_
                                                         _%tl5349654014%_
                                                         _%__splice8714887149%_
                                                         _%target5349754017%_
                                                         _%tl5349954020%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5344953592%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5344953592%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5344953592%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g92334_|
                                     _%hd5349254001%_)
                                    (if (gx#stx-pair? _%tl5349354004%_)
                                        (let ((_%e5352153885%_
                                               (gx#syntax-e _%tl5349354004%_)))
                                          (let ((_%tl5352353892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5352153885%_)))
                                                (_%hd5352253889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5352153885%_))))
                                            (if (gx#stx-null? _%tl5352353892%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5348753984%_)
                                                    (let ((_%__splice8715287153%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5348753984%_
                                                            '0)))
                                                      (let ((_%tl5352653898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8715287153%_ '1)))
                    (_%target5352453895%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8715287153%_ '0))))
                (if (gx#stx-null? _%tl5352653898%_)
                    (_%__match8729087291%_
                     _%e5348253967%_
                     _%hd5348353971%_
                     _%tl5348453974%_
                     _%e5348553977%_
                     _%hd5348653981%_
                     _%tl5348753984%_
                     _%e5348853987%_
                     _%hd5348953991%_
                     _%tl5349053994%_
                     _%e5349153997%_
                     _%hd5349254001%_
                     _%tl5349354004%_
                     _%e5352153885%_
                     _%hd5352253889%_
                     _%tl5352353892%_
                     _%__splice8715287153%_
                     _%target5352453895%_
                     _%tl5352653898%_)
                    (let () (declare (not safe)) (_%g5344953592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5344953592%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5344953592%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g92335_|
                                         _%hd5349254001%_)
                                        (if (gx#stx-pair? _%tl5349354004%_)
                                            (let ((_%e5354853763%_
                                                   (gx#syntax-e
                                                    _%tl5349354004%_)))
                                              (let ((_%tl5355053770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5354853763%_)))
                                                    (_%hd5354953767%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5354853763%_))))
                                                (if (gx#stx-null?
                                                     _%tl5355053770%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5348753984%_)
                                                        (let ((_%__splice8715687157%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5348753984%_
                                                                '0)))
                                                          (let ((_%tl5355353776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8715687157%_ '1)))
                        (_%target5355153773%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8715687157%_ '0))))
                    (if (gx#stx-null? _%tl5355353776%_)
                        (_%__match8733487335%_
                         _%e5348253967%_
                         _%hd5348353971%_
                         _%tl5348453974%_
                         _%e5348553977%_
                         _%hd5348653981%_
                         _%tl5348753984%_
                         _%e5348853987%_
                         _%hd5348953991%_
                         _%tl5349053994%_
                         _%e5349153997%_
                         _%hd5349254001%_
                         _%tl5349354004%_
                         _%e5354853763%_
                         _%hd5354953767%_
                         _%tl5355053770%_
                         _%__splice8715687157%_
                         _%target5355153773%_
                         _%tl5355353776%_)
                        (let () (declare (not safe)) (_%g5344953592%_)))))
                (let () (declare (not safe)) (_%g5344953592%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5344953592%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5344953592%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g92336_|
                                             _%hd5349254001%_)
                                            (if (gx#stx-pair? _%tl5349354004%_)
                                                (let ((_%e5357553639%_
                                                       (gx#syntax-e
                                                        _%tl5349354004%_)))
                                                  (let ((_%tl5357753646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5357553639%_)))
                                                        (_%hd5357653643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5357553639%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5357753646%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5348753984%_)
                                                            (let ((_%__splice8716087161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5348753984%_
                            '0)))
                      (let ((_%tl5358053652%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8716087161%_ '1)))
                            (_%target5357853649%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8716087161%_ '0))))
                        (if (gx#stx-null? _%tl5358053652%_)
                            (_%__match8737887379%_
                             _%e5348253967%_
                             _%hd5348353971%_
                             _%tl5348453974%_
                             _%e5348553977%_
                             _%hd5348653981%_
                             _%tl5348753984%_
                             _%e5348853987%_
                             _%hd5348953991%_
                             _%tl5349053994%_
                             _%e5349153997%_
                             _%hd5349254001%_
                             _%tl5349354004%_
                             _%e5357553639%_
                             _%hd5357653643%_
                             _%tl5357753646%_
                             _%__splice8716087161%_
                             _%target5357853649%_
                             _%tl5358053652%_)
                            (let () (declare (not safe)) (_%g5344953592%_)))))
                    (let () (declare (not safe)) (_%g5344953592%_)))
                (let () (declare (not safe)) (_%g5344953592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344953592%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5344953592%_))))))
                            (let () (declare (not safe)) (_%g5344953592%_)))))
                     (_%__match8720287203%_
                      (lambda (_%e5345554089%_
                               _%hd5345654093%_
                               _%tl5345754096%_
                               _%e5345854099%_
                               _%hd5345954103%_
                               _%tl5346054106%_
                               _%e5346154109%_
                               _%hd5346254113%_
                               _%tl5346354116%_
                               _%e5346454119%_
                               _%hd5346554123%_
                               _%tl5346654126%_
                               _%e5346754129%_
                               _%hd5346854133%_
                               _%tl5346954136%_
                               _%__splice8714487145%_
                               _%target5347054139%_
                               _%tl5347254142%_)
                        (letrec ((_%loop5347354145%_
                                  (lambda (_%hd5347154149%_ _%body5347754152%_)
                                    (if (gx#stx-pair? _%hd5347154149%_)
                                        (let ((_%e5347454155%_
                                               (gx#syntax-e _%hd5347154149%_)))
                                          (let ((_%lp-tl5347654162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5347454155%_)))
                                                (_%lp-hd5347554159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5347454155%_))))
                                            (_%loop5347354145%_
                                             _%lp-tl5347654162%_
                                             (cons _%lp-hd5347554159%_
                                                   _%body5347754152%_))))
                                        (let ((_%body5347854165%_
                                               (reverse _%body5347754152%_)))
                                          (let ((_%L54169%_ _%body5347854165%_)
                                                (_%L54171%_ _%hd5346854133%_)
                                                (_%L54172%_ _%hd5346554123%_)
                                                (_%L54173%_ _%hd5346254113%_))
                                            (if (let ((__tmp92337
                                                       (gx#syntax-local-value
                                                        _%L54171%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp92337))
                                                (_%__kont8714287143%_
                                                 _%L54169%_
                                                 _%L54171%_
                                                 _%L54172%_
                                                 _%L54173%_)
                                                (_%__match8722687227%_
                                                 _%e5345554089%_
                                                 _%hd5345654093%_
                                                 _%tl5345754096%_
                                                 _%e5345854099%_
                                                 _%hd5345954103%_
                                                 _%tl5346054106%_
                                                 _%e5346154109%_
                                                 _%hd5346254113%_
                                                 _%tl5346354116%_
                                                 _%e5346454119%_
                                                 _%hd5346554123%_
                                                 _%tl5346654126%_))))))))
                          (_%loop5347354145%_ _%target5347054139%_ '())))))
                (if (gx#stx-pair? _%__stx8713987140%_)
                    (let ((_%e5345554089%_ (gx#syntax-e _%__stx8713987140%_)))
                      (let ((_%tl5345754096%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5345554089%_)))
                            (_%hd5345654093%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5345554089%_))))
                        (if (gx#stx-pair? _%tl5345754096%_)
                            (let ((_%e5345854099%_
                                   (gx#syntax-e _%tl5345754096%_)))
                              (let ((_%tl5346054106%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5345854099%_)))
                                    (_%hd5345954103%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5345854099%_))))
                                (if (gx#stx-pair? _%hd5345954103%_)
                                    (let ((_%e5346154109%_
                                           (gx#syntax-e _%hd5345954103%_)))
                                      (let ((_%tl5346354116%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5346154109%_)))
                                            (_%hd5346254113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5346154109%_))))
                                        (if (gx#stx-pair? _%tl5346354116%_)
                                            (let ((_%e5346454119%_
                                                   (gx#syntax-e
                                                    _%tl5346354116%_)))
                                              (let ((_%tl5346654126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5346454119%_)))
                                                    (_%hd5346554123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5346454119%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5346654126%_)
                                                    (let ((_%e5346754129%_
                                                           (gx#syntax-e
                                                            _%tl5346654126%_)))
                                                      (let ((_%tl5346954136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5346754129%_)))
                    (_%hd5346854133%_
                     (let () (declare (not safe)) (##car _%e5346754129%_))))
                (if (gx#stx-null? _%tl5346954136%_)
                    (if (gx#stx-pair/null? _%tl5346054106%_)
                        (let ((_%__splice8714487145%_
                               (gx#syntax-split-splice->vector
                                _%tl5346054106%_
                                '0)))
                          (let ((_%tl5347254142%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8714487145%_ '1)))
                                (_%target5347054139%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8714487145%_ '0))))
                            (if (gx#stx-null? _%tl5347254142%_)
                                (_%__match8720287203%_
                                 _%e5345554089%_
                                 _%hd5345654093%_
                                 _%tl5345754096%_
                                 _%e5345854099%_
                                 _%hd5345954103%_
                                 _%tl5346054106%_
                                 _%e5346154109%_
                                 _%hd5346254113%_
                                 _%tl5346354116%_
                                 _%e5346454119%_
                                 _%hd5346554123%_
                                 _%tl5346654126%_
                                 _%e5346754129%_
                                 _%hd5346854133%_
                                 _%tl5346954136%_
                                 _%__splice8714487145%_
                                 _%target5347054139%_
                                 _%tl5347254142%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5344953592%_)))))
                        (let () (declare (not safe)) (_%g5344953592%_)))
                    (let () (declare (not safe)) (_%g5344953592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5344953592%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5344953592%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5344953592%_)))))
                            (let () (declare (not safe)) (_%g5344953592%_)))))
                    (let () (declare (not safe)) (_%g5344953592%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx54663%_)
        (let* ((_%__stx8738187382%_ _%stx54663%_)
               (_%g5466854728%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8738187382%_))))
          (let ((_%__kont8738487385%_
                 (lambda (_%L55290%_ _%L55292%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L55292%_ '()))
                               (foldr (lambda (_%g5530855311%_ _%g5530955314%_)
                                        (cons _%g5530855311%_ _%g5530955314%_))
                                      '()
                                      _%L55290%_)))))
                (_%__kont8738887389%_
                 (lambda (_%L54876%_ _%L54878%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L54878%_)
                       (let* ((_%g5489854905%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx54663%_
                                _%L54878%_))
                              (_%E5490054911%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5489854905%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5490155209%_
                               (lambda (_%parts54915%_ _%var54917%_)
                                 (let ((_%$e54919%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var54917%_))))
                                   (if _%$e54919%_
                                       ((lambda (_%te54923%_)
                                          (let _%loop54926%_ ((_%parts54929%_
                                                               _%parts54915%_)
                                                              (_%type54931%_
                                                               (##direct-structure-ref
                                                                _%te54923%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object54932%_
                                                               _%var54917%_)
                                                              (_%checked-method?54933%_
                                                               (##direct-structure-ref
                                                                _%te54923%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?54934%_
                                                               '#f))
                                            (let* ((_%parts5493554943%_
                                                    _%parts54929%_)
                                                   (_%else5493755004%_
                                                    (lambda ()
                                                      (let* ((_%g5495554963%_
                                                              (lambda (_%g5495654959%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5495654959%_)))
                     (_%g5495455000%_
                      (lambda (_%g5495654967%_)
                        ((lambda (_%L54970%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L54970%_
                                       (foldr (lambda (_%g5499154994%_
                                                       _%g5499254997%_)
                                                (cons _%g5499154994%_
                                                      _%g5499254997%_))
                                              '()
                                              _%L54876%_))))
                         _%g5495654967%_))))
                (_%g5495455000%_ _%object54932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5493955183%_
                                                    (lambda (_%rest55008%_
                                                             _%part55010%_)
                                                      (if (and (not _%nil-check?54934%_)
                                                               (let ((__tmp92338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part55010%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp92338)))
                  (let ((_%str55014%_ (symbol->string _%part55010%_)))
                    (_%loop54926%_
                     (cons (let ((__tmp92339
                                  (substring
                                   _%str55014%_
                                   '1
                                   (string-length _%str55014%_))))
                             (declare (not safe))
                             (##string->symbol __tmp92339))
                           _%rest55008%_)
                     _%type54931%_
                     _%object54932%_
                     _%checked-method?54933%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type54931%_))
                      (let* ((_%g5501955034%_
                              (lambda (_%g5502055030%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5502055030%_)))
                             (_%g5501855103%_
                              (lambda (_%g5502055038%_)
                                (if (gx#stx-pair? _%g5502055038%_)
                                    (let ((_%e5502355041%_
                                           (gx#syntax-e _%g5502055038%_)))
                                      (let ((_%hd5502455045%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5502355041%_)))
                                            (_%tl5502555048%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5502355041%_))))
                                        (if (gx#stx-pair? _%tl5502555048%_)
                                            (let ((_%e5502655051%_
                                                   (gx#syntax-e
                                                    _%tl5502555048%_)))
                                              (let ((_%hd5502755055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5502655051%_)))
                                                    (_%tl5502855058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5502655051%_))))
                                                (if (gx#stx-null?
                                                     _%tl5502855058%_)
                                                    ((lambda (_%L55061%_
                                                              _%L55063%_)
                                                       (if (null? _%rest55008%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L55061%_ (cons _%L55063%_ '()))
                               (foldr (lambda (_%g5508255085%_ _%g5508355088%_)
                                        (cons _%g5508255085%_ _%g5508355088%_))
                                      '()
                                      _%L54876%_)))
                   (let ((_%$e55091%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type54931%_
                           _%part55010%_)))
                     (if _%$e55091%_
                         ((lambda (_%slot-type55095%_)
                            (let ((_%slot-type55098%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx54663%_
                                      _%slot-type55095%_))))
                              (_%loop54926%_
                               _%rest55008%_
                               _%slot-type55098%_
                               (cons _%L55061%_ (cons _%L55063%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type54931%_
                                _%part55010%_)
                               '#f)))
                          _%$e55091%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx54663%_
                          _%L54878%_
                          _%part55010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5502755055%_
                                                     _%hd5502455045%_)
                                                    (_%g5501955034%_
                                                     _%g5502055038%_))))
                                            (_%g5501955034%_
                                             _%g5502055038%_))))
                                    (_%g5501955034%_ _%g5502055038%_)))))
                        (_%g5501855103%_
                         (list (if _%nil-check?54934%_
                                   (cons 'check-nil!
                                         (cons _%object54932%_ '()))
                                   _%object54932%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx54663%_
                                _%type54931%_
                                _%part55010%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type54931%_))
                          (if (null? _%rest55008%_)
                              (let* ((_%g5510955124%_
                                      (lambda (_%g5511055120%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5511055120%_)))
                                     (_%g5510855177%_
                                      (lambda (_%g5511055128%_)
                                        (if (gx#stx-pair? _%g5511055128%_)
                                            (let ((_%e5511355131%_
                                                   (gx#syntax-e
                                                    _%g5511055128%_)))
                                              (let ((_%hd5511455135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5511355131%_)))
                                                    (_%tl5511555138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5511355131%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5511555138%_)
                                                    (let ((_%e5511655141%_
                                                           (gx#syntax-e
                                                            _%tl5511555138%_)))
                                                      (let ((_%hd5511755145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5511655141%_)))
                    (_%tl5511855148%_
                     (let () (declare (not safe)) (##cdr _%e5511655141%_))))
                (if (gx#stx-null? _%tl5511855148%_)
                    ((lambda (_%L55151%_ _%L55153%_)
                       (cons _%L55151%_
                             (cons _%L55153%_
                                   (foldr (lambda (_%g5516855171%_
                                                   _%g5516955174%_)
                                            (cons _%g5516855171%_
                                                  _%g5516955174%_))
                                          '()
                                          _%L54876%_))))
                     _%hd5511755145%_
                     _%hd5511455135%_)
                    (_%g5510955124%_ _%g5511055128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5510955124%_
                                                     _%g5511055128%_))))
                                            (_%g5510955124%_
                                             _%g5511055128%_)))))
                                (_%g5510855177%_
                                 (list (if _%nil-check?54934%_
                                           (cons 'check-nil!
                                                 (cons _%object54932%_ '()))
                                           _%object54932%_)
                                       (gx#stx-identifier
                                        _%L54878%_
                                        (if _%checked-method?54933%_ '"" '"&")
                                        (let ((__obj92143 _%type54931%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj92143
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj92143
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj92143
                                               'name)))
                                        '"-"
                                        _%part55010%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx54663%_
                               _%L54878%_
                               _%part55010%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx54663%_
                           _%type54931%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5493554943%_)
                                                  (let ((_%hd5494055187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5493554943%_)))
                                                        (_%tl5494155190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5493554943%_))))
                                                    (let* ((_%part55193%_
                                                            _%hd5494055187%_)
                                                           (_%rest55196%_
                                                            _%tl5494155190%_))
                                                      (_%K5493955183%_
                                                       _%rest55196%_
                                                       _%part55193%_)))
                                                  (_%else5493755004%_)))))
                                        _%$e54919%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L54878%_
                                                   (foldr (lambda (_%g5520055203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5520155206%_)
                    (cons _%g5520055203%_ _%g5520155206%_))
                  '()
                  _%L54876%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5489854905%_)
                             (let ((_%hd5490255213%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5489854905%_)))
                                   (_%tl5490355216%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5489854905%_))))
                               (let* ((_%var55219%_ _%hd5490255213%_)
                                      (_%parts55222%_ _%tl5490355216%_))
                                 (_%K5490155209%_
                                  _%parts55222%_
                                  _%var55219%_)))
                             (_%E5490054911%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L54878%_
                                   (foldr (lambda (_%g5522455227%_
                                                   _%g5522555230%_)
                                            (cons _%g5522455227%_
                                                  _%g5522555230%_))
                                          '()
                                          _%L54876%_))))))
                (_%__kont8739287393%_
                 (lambda (_%L54775%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5479054793%_ _%g5479154796%_)
                                  (cons _%g5479054793%_ _%g5479154796%_))
                                '()
                                _%L54775%_)))))
            (let* ((_%__match8746887469%_
                    (lambda (_%e5471154735%_
                             _%hd5471254739%_
                             _%tl5471354742%_
                             _%__splice8739487395%_
                             _%target5471454745%_
                             _%tl5471654748%_)
                      (letrec ((_%loop5471754751%_
                                (lambda (_%hd5471554755%_ _%arg5472154758%_)
                                  (if (gx#stx-pair? _%hd5471554755%_)
                                      (let ((_%e5471854761%_
                                             (gx#syntax-e _%hd5471554755%_)))
                                        (let ((_%lp-tl5472054768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5471854761%_)))
                                              (_%lp-hd5471954765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5471854761%_))))
                                          (_%loop5471754751%_
                                           _%lp-tl5472054768%_
                                           (cons _%lp-hd5471954765%_
                                                 _%arg5472154758%_))))
                                      (let ((_%arg5472254771%_
                                             (reverse _%arg5472154758%_)))
                                        (_%__kont8739287393%_
                                         _%arg5472254771%_))))))
                        (_%loop5471754751%_ _%target5471454745%_ '()))))
                   (_%__match8745487455%_
                    (lambda (_%e5468954806%_
                             _%hd5469054810%_
                             _%tl5469154813%_
                             _%e5469254816%_
                             _%hd5469354820%_
                             _%tl5469454823%_
                             _%e5469554826%_
                             _%hd5469654830%_
                             _%tl5469754833%_
                             _%e5469854836%_
                             _%hd5469954840%_
                             _%tl5470054843%_
                             _%__splice8739087391%_
                             _%target5470154846%_
                             _%tl5470354849%_)
                      (letrec ((_%loop5470454852%_
                                (lambda (_%hd5470254856%_ _%rand5470854859%_)
                                  (if (gx#stx-pair? _%hd5470254856%_)
                                      (let ((_%e5470554862%_
                                             (gx#syntax-e _%hd5470254856%_)))
                                        (let ((_%lp-tl5470754869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5470554862%_)))
                                              (_%lp-hd5470654866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5470554862%_))))
                                          (_%loop5470454852%_
                                           _%lp-tl5470754869%_
                                           (cons _%lp-hd5470654866%_
                                                 _%rand5470854859%_))))
                                      (let ((_%rand5470954872%_
                                             (reverse _%rand5470854859%_)))
                                        (_%__kont8738887389%_
                                         _%rand5470954872%_
                                         _%hd5469954840%_))))))
                        (_%loop5470454852%_ _%target5470154846%_ '()))))
                   (_%__match8742887429%_
                    (lambda (_%e5468954806%_
                             _%hd5469054810%_
                             _%tl5469154813%_
                             _%e5469254816%_
                             _%hd5469354820%_
                             _%tl5469454823%_)
                      (if (gx#stx-pair? _%hd5469354820%_)
                          (let ((_%e5469554826%_
                                 (gx#syntax-e _%hd5469354820%_)))
                            (let ((_%tl5469754833%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5469554826%_)))
                                  (_%hd5469654830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5469554826%_))))
                              (if (gx#identifier? _%hd5469654830%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g92340_|
                                       _%hd5469654830%_)
                                      (if (gx#stx-pair? _%tl5469754833%_)
                                          (let ((_%e5469854836%_
                                                 (gx#syntax-e
                                                  _%tl5469754833%_)))
                                            (let ((_%tl5470054843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5469854836%_)))
                                                  (_%hd5469954840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5469854836%_))))
                                              (if (gx#stx-null?
                                                   _%tl5470054843%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5469454823%_)
                                                      (let ((_%__splice8739087391%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5469454823%_
                                                              '0)))
                                                        (let ((_%tl5470354849%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8739087391%_ '1)))
                      (_%target5470154846%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8739087391%_ '0))))
                  (if (gx#stx-null? _%tl5470354849%_)
                      (_%__match8745487455%_
                       _%e5468954806%_
                       _%hd5469054810%_
                       _%tl5469154813%_
                       _%e5469254816%_
                       _%hd5469354820%_
                       _%tl5469454823%_
                       _%e5469554826%_
                       _%hd5469654830%_
                       _%tl5469754833%_
                       _%e5469854836%_
                       _%hd5469954840%_
                       _%tl5470054843%_
                       _%__splice8739087391%_
                       _%target5470154846%_
                       _%tl5470354849%_)
                      (if (gx#stx-pair/null? _%tl5469154813%_)
                          (let ((_%__splice8739487395%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5469154813%_
                                  '0)))
                            (let ((_%tl5471654748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8739487395%_ '1)))
                                  (_%target5471454745%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8739487395%_
                                      '0))))
                              (if (gx#stx-null? _%tl5471654748%_)
                                  (_%__match8746887469%_
                                   _%e5468954806%_
                                   _%hd5469054810%_
                                   _%tl5469154813%_
                                   _%__splice8739487395%_
                                   _%target5471454745%_
                                   _%tl5471654748%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5466854728%_)))))
                          (let () (declare (not safe)) (_%g5466854728%_))))))
              (if (gx#stx-pair/null? _%tl5469154813%_)
                  (let ((_%__splice8739487395%_
                         (gx#syntax-split-splice->vector _%tl5469154813%_ '0)))
                    (let ((_%tl5471654748%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '1)))
                          (_%target5471454745%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '0))))
                      (if (gx#stx-null? _%tl5471654748%_)
                          (_%__match8746887469%_
                           _%e5468954806%_
                           _%hd5469054810%_
                           _%tl5469154813%_
                           _%__splice8739487395%_
                           _%target5471454745%_
                           _%tl5471654748%_)
                          (let () (declare (not safe)) (_%g5466854728%_)))))
                  (let () (declare (not safe)) (_%g5466854728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5469154813%_)
                                                      (let ((_%__splice8739487395%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5469154813%_
                                                              '0)))
                                                        (let ((_%tl5471654748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8739487395%_ '1)))
                      (_%target5471454745%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8739487395%_ '0))))
                  (if (gx#stx-null? _%tl5471654748%_)
                      (_%__match8746887469%_
                       _%e5468954806%_
                       _%hd5469054810%_
                       _%tl5469154813%_
                       _%__splice8739487395%_
                       _%target5471454745%_
                       _%tl5471654748%_)
                      (let () (declare (not safe)) (_%g5466854728%_)))))
              (let () (declare (not safe)) (_%g5466854728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5469154813%_)
                                              (let ((_%__splice8739487395%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5469154813%_
                                                      '0)))
                                                (let ((_%tl5471654748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8739487395%_
                                                          '1)))
                                                      (_%target5471454745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8739487395%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5471654748%_)
                                                      (_%__match8746887469%_
                                                       _%e5468954806%_
                                                       _%hd5469054810%_
                                                       _%tl5469154813%_
                                                       _%__splice8739487395%_
                                                       _%target5471454745%_
                                                       _%tl5471654748%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5466854728%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5466854728%_))))
                                      (if (gx#stx-pair/null? _%tl5469154813%_)
                                          (let ((_%__splice8739487395%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5469154813%_
                                                  '0)))
                                            (let ((_%tl5471654748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8739487395%_
                                                      '1)))
                                                  (_%target5471454745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8739487395%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5471654748%_)
                                                  (_%__match8746887469%_
                                                   _%e5468954806%_
                                                   _%hd5469054810%_
                                                   _%tl5469154813%_
                                                   _%__splice8739487395%_
                                                   _%target5471454745%_
                                                   _%tl5471654748%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5466854728%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5466854728%_))))
                                  (if (gx#stx-pair/null? _%tl5469154813%_)
                                      (let ((_%__splice8739487395%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5469154813%_
                                              '0)))
                                        (let ((_%tl5471654748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8739487395%_
                                                  '1)))
                                              (_%target5471454745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8739487395%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5471654748%_)
                                              (_%__match8746887469%_
                                               _%e5468954806%_
                                               _%hd5469054810%_
                                               _%tl5469154813%_
                                               _%__splice8739487395%_
                                               _%target5471454745%_
                                               _%tl5471654748%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5466854728%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5466854728%_))))))
                          (if (gx#stx-pair/null? _%tl5469154813%_)
                              (let ((_%__splice8739487395%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5469154813%_
                                      '0)))
                                (let ((_%tl5471654748%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '1)))
                                      (_%target5471454745%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5471654748%_)
                                      (_%__match8746887469%_
                                       _%e5468954806%_
                                       _%hd5469054810%_
                                       _%tl5469154813%_
                                       _%__splice8739487395%_
                                       _%target5471454745%_
                                       _%tl5471654748%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5466854728%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5466854728%_))))))
                   (_%__match8741687417%_
                    (lambda (_%e5467255240%_
                             _%hd5467355244%_
                             _%tl5467455247%_
                             _%e5467555250%_
                             _%hd5467655254%_
                             _%tl5467755257%_
                             _%__splice8738687387%_
                             _%target5467855260%_
                             _%tl5468055263%_)
                      (letrec ((_%loop5468155266%_
                                (lambda (_%hd5467955270%_ _%rand5468555273%_)
                                  (if (gx#stx-pair? _%hd5467955270%_)
                                      (let ((_%e5468255276%_
                                             (gx#syntax-e _%hd5467955270%_)))
                                        (let ((_%lp-tl5468455283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5468255276%_)))
                                              (_%lp-hd5468355280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5468255276%_))))
                                          (_%loop5468155266%_
                                           _%lp-tl5468455283%_
                                           (cons _%lp-hd5468355280%_
                                                 _%rand5468555273%_))))
                                      (let ((_%rand5468655286%_
                                             (reverse _%rand5468555273%_)))
                                        (let ((_%L55290%_ _%rand5468655286%_)
                                              (_%L55292%_ _%hd5467655254%_))
                                          (if (gx#identifier? _%L55292%_)
                                              (_%__kont8738487385%_
                                               _%L55290%_
                                               _%L55292%_)
                                              (_%__match8742887429%_
                                               _%e5467255240%_
                                               _%hd5467355244%_
                                               _%tl5467455247%_
                                               _%e5467555250%_
                                               _%hd5467655254%_
                                               _%tl5467755257%_))))))))
                        (_%loop5468155266%_ _%target5467855260%_ '())))))
              (if (gx#stx-pair? _%__stx8738187382%_)
                  (let ((_%e5467255240%_ (gx#syntax-e _%__stx8738187382%_)))
                    (let ((_%tl5467455247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5467255240%_)))
                          (_%hd5467355244%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5467255240%_))))
                      (if (gx#stx-pair? _%tl5467455247%_)
                          (let ((_%e5467555250%_
                                 (gx#syntax-e _%tl5467455247%_)))
                            (let ((_%tl5467755257%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5467555250%_)))
                                  (_%hd5467655254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5467555250%_))))
                              (if (gx#stx-pair/null? _%tl5467755257%_)
                                  (let ((_%__splice8738687387%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5467755257%_
                                          '0)))
                                    (let ((_%tl5468055263%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8738687387%_
                                              '1)))
                                          (_%target5467855260%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8738687387%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5468055263%_)
                                          (_%__match8741687417%_
                                           _%e5467255240%_
                                           _%hd5467355244%_
                                           _%tl5467455247%_
                                           _%e5467555250%_
                                           _%hd5467655254%_
                                           _%tl5467755257%_
                                           _%__splice8738687387%_
                                           _%target5467855260%_
                                           _%tl5468055263%_)
                                          (if (gx#stx-pair? _%hd5467655254%_)
                                              (let ((_%e5469554826%_
                                                     (gx#syntax-e
                                                      _%hd5467655254%_)))
                                                (let ((_%tl5469754833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5469554826%_)))
                                                      (_%hd5469654830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5469554826%_))))
                                                  (if (gx#identifier?
                                                       _%hd5469654830%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g92340_|
                                                           _%hd5469654830%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5469754833%_)
                                                              (let ((_%e5469854836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5469754833%_)))
                        (let ((_%tl5470054843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5469854836%_)))
                              (_%hd5469954840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5469854836%_))))
                          (if (gx#stx-pair/null? _%tl5467455247%_)
                              (let ((_%__splice8739487395%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5467455247%_
                                      '0)))
                                (let ((_%tl5471654748%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '1)))
                                      (_%target5471454745%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5471654748%_)
                                      (_%__match8746887469%_
                                       _%e5467255240%_
                                       _%hd5467355244%_
                                       _%tl5467455247%_
                                       _%__splice8739487395%_
                                       _%target5471454745%_
                                       _%tl5471654748%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5466854728%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5466854728%_)))))
                      (if (gx#stx-pair/null? _%tl5467455247%_)
                          (let ((_%__splice8739487395%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5467455247%_
                                  '0)))
                            (let ((_%tl5471654748%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8739487395%_ '1)))
                                  (_%target5471454745%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8739487395%_
                                      '0))))
                              (if (gx#stx-null? _%tl5471654748%_)
                                  (_%__match8746887469%_
                                   _%e5467255240%_
                                   _%hd5467355244%_
                                   _%tl5467455247%_
                                   _%__splice8739487395%_
                                   _%target5471454745%_
                                   _%tl5471654748%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5466854728%_)))))
                          (let () (declare (not safe)) (_%g5466854728%_))))
                  (if (gx#stx-pair/null? _%tl5467455247%_)
                      (let ((_%__splice8739487395%_
                             (gx#syntax-split-splice->vector
                              _%tl5467455247%_
                              '0)))
                        (let ((_%tl5471654748%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8739487395%_ '1)))
                              (_%target5471454745%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8739487395%_ '0))))
                          (if (gx#stx-null? _%tl5471654748%_)
                              (_%__match8746887469%_
                               _%e5467255240%_
                               _%hd5467355244%_
                               _%tl5467455247%_
                               _%__splice8739487395%_
                               _%target5471454745%_
                               _%tl5471654748%_)
                              (let ()
                                (declare (not safe))
                                (_%g5466854728%_)))))
                      (let () (declare (not safe)) (_%g5466854728%_))))
              (if (gx#stx-pair/null? _%tl5467455247%_)
                  (let ((_%__splice8739487395%_
                         (gx#syntax-split-splice->vector _%tl5467455247%_ '0)))
                    (let ((_%tl5471654748%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '1)))
                          (_%target5471454745%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '0))))
                      (if (gx#stx-null? _%tl5471654748%_)
                          (_%__match8746887469%_
                           _%e5467255240%_
                           _%hd5467355244%_
                           _%tl5467455247%_
                           _%__splice8739487395%_
                           _%target5471454745%_
                           _%tl5471654748%_)
                          (let () (declare (not safe)) (_%g5466854728%_)))))
                  (let () (declare (not safe)) (_%g5466854728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5467455247%_)
                                                  (let ((_%__splice8739487395%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5467455247%_
                                                          '0)))
                                                    (let ((_%tl5471654748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8739487395%_
                                                              '1)))
                                                          (_%target5471454745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8739487395%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5471654748%_)
                                                          (_%__match8746887469%_
                                                           _%e5467255240%_
                                                           _%hd5467355244%_
                                                           _%tl5467455247%_
                                                           _%__splice8739487395%_
                                                           _%target5471454745%_
                                                           _%tl5471654748%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5466854728%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5466854728%_)))))))
                                  (if (gx#stx-pair? _%hd5467655254%_)
                                      (let ((_%e5469554826%_
                                             (gx#syntax-e _%hd5467655254%_)))
                                        (let ((_%tl5469754833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5469554826%_)))
                                              (_%hd5469654830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5469554826%_))))
                                          (if (gx#identifier? _%hd5469654830%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g92340_|
                                                   _%hd5469654830%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5469754833%_)
                                                      (let ((_%e5469854836%_
                                                             (gx#syntax-e
                                                              _%tl5469754833%_)))
                                                        (let ((_%tl5470054843%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5469854836%_)))
                      (_%hd5469954840%_
                       (let () (declare (not safe)) (##car _%e5469854836%_))))
                  (if (gx#stx-pair/null? _%tl5467455247%_)
                      (let ((_%__splice8739487395%_
                             (gx#syntax-split-splice->vector
                              _%tl5467455247%_
                              '0)))
                        (let ((_%tl5471654748%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8739487395%_ '1)))
                              (_%target5471454745%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8739487395%_ '0))))
                          (if (gx#stx-null? _%tl5471654748%_)
                              (_%__match8746887469%_
                               _%e5467255240%_
                               _%hd5467355244%_
                               _%tl5467455247%_
                               _%__splice8739487395%_
                               _%target5471454745%_
                               _%tl5471654748%_)
                              (let ()
                                (declare (not safe))
                                (_%g5466854728%_)))))
                      (let () (declare (not safe)) (_%g5466854728%_)))))
              (if (gx#stx-pair/null? _%tl5467455247%_)
                  (let ((_%__splice8739487395%_
                         (gx#syntax-split-splice->vector _%tl5467455247%_ '0)))
                    (let ((_%tl5471654748%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '1)))
                          (_%target5471454745%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8739487395%_ '0))))
                      (if (gx#stx-null? _%tl5471654748%_)
                          (_%__match8746887469%_
                           _%e5467255240%_
                           _%hd5467355244%_
                           _%tl5467455247%_
                           _%__splice8739487395%_
                           _%target5471454745%_
                           _%tl5471654748%_)
                          (let () (declare (not safe)) (_%g5466854728%_)))))
                  (let () (declare (not safe)) (_%g5466854728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5467455247%_)
                                                      (let ((_%__splice8739487395%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5467455247%_
                                                              '0)))
                                                        (let ((_%tl5471654748%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8739487395%_ '1)))
                      (_%target5471454745%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8739487395%_ '0))))
                  (if (gx#stx-null? _%tl5471654748%_)
                      (_%__match8746887469%_
                       _%e5467255240%_
                       _%hd5467355244%_
                       _%tl5467455247%_
                       _%__splice8739487395%_
                       _%target5471454745%_
                       _%tl5471654748%_)
                      (let () (declare (not safe)) (_%g5466854728%_)))))
              (let () (declare (not safe)) (_%g5466854728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5467455247%_)
                                                  (let ((_%__splice8739487395%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5467455247%_
                                                          '0)))
                                                    (let ((_%tl5471654748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8739487395%_
                                                              '1)))
                                                          (_%target5471454745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8739487395%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5471654748%_)
                                                          (_%__match8746887469%_
                                                           _%e5467255240%_
                                                           _%hd5467355244%_
                                                           _%tl5467455247%_
                                                           _%__splice8739487395%_
                                                           _%target5471454745%_
                                                           _%tl5471654748%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5466854728%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5466854728%_))))))
                                      (if (gx#stx-pair/null? _%tl5467455247%_)
                                          (let ((_%__splice8739487395%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5467455247%_
                                                  '0)))
                                            (let ((_%tl5471654748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8739487395%_
                                                      '1)))
                                                  (_%target5471454745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8739487395%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5471654748%_)
                                                  (_%__match8746887469%_
                                                   _%e5467255240%_
                                                   _%hd5467355244%_
                                                   _%tl5467455247%_
                                                   _%__splice8739487395%_
                                                   _%target5471454745%_
                                                   _%tl5471654748%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5466854728%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5466854728%_)))))))
                          (if (gx#stx-pair/null? _%tl5467455247%_)
                              (let ((_%__splice8739487395%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5467455247%_
                                      '0)))
                                (let ((_%tl5471654748%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '1)))
                                      (_%target5471454745%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice8739487395%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5471654748%_)
                                      (_%__match8746887469%_
                                       _%e5467255240%_
                                       _%hd5467355244%_
                                       _%tl5467455247%_
                                       _%__splice8739487395%_
                                       _%target5471454745%_
                                       _%tl5471654748%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5466854728%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5466854728%_))))))
                  (let () (declare (not safe)) (_%g5466854728%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx55324%_)
        (let* ((_%__stx8747187472%_ _%stx55324%_)
               (_%g5532855349%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8747187472%_))))
          (let ((_%__kont8747487475%_
                 (lambda (_%L55417%_)
                   (let* ((_%g5542955436%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55324%_
                            _%L55417%_))
                          (_%E5543155442%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5542955436%_
                                    '([var . parts]))
                             (void)))
                          (_%K5543255658%_
                           (lambda (_%parts55446%_ _%var55448%_)
                             (let ((_%$e55450%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55448%_))))
                               (if _%$e55450%_
                                   ((lambda (_%te55454%_)
                                      (let _%loop55457%_ ((_%parts55460%_
                                                           _%parts55446%_)
                                                          (_%type55462%_
                                                           (##direct-structure-ref
                                                            _%te55454%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55463%_
                                                           _%var55448%_)
                                                          (_%nil-check?55464%_
                                                           '#f))
                                        (let* ((_%parts5546555473%_
                                                _%parts55460%_)
                                               (_%else5546755485%_
                                                (lambda () _%object55463%_))
                                               (_%K5546955640%_
                                                (lambda (_%rest55489%_
                                                         _%part55491%_)
                                                  (if (and (not _%nil-check?55464%_)
                                                           (let ((__tmp92341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55491%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92341)))
              (let ((_%str55495%_ (symbol->string _%part55491%_)))
                (_%loop55457%_
                 (cons (let ((__tmp92342
                              (substring
                               _%str55495%_
                               '1
                               (string-length _%str55495%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92342))
                       _%rest55489%_)
                 _%type55462%_
                 _%object55463%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55462%_))
                  (let* ((_%g5550055515%_
                          (lambda (_%g5550155511%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5550155511%_)))
                         (_%g5549955632%_
                          (lambda (_%g5550155519%_)
                            (if (gx#stx-pair? _%g5550155519%_)
                                (let ((_%e5550455522%_
                                       (gx#syntax-e _%g5550155519%_)))
                                  (let ((_%hd5550555526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5550455522%_)))
                                        (_%tl5550655529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5550455522%_))))
                                    (if (gx#stx-pair? _%tl5550655529%_)
                                        (let ((_%e5550755532%_
                                               (gx#syntax-e _%tl5550655529%_)))
                                          (let ((_%hd5550855536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5550755532%_)))
                                                (_%tl5550955539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5550755532%_))))
                                            (if (gx#stx-null? _%tl5550955539%_)
                                                ((lambda (_%L55542%_
                                                          _%L55544%_)
                                                   (if (null? _%rest55489%_)
                                                       (let ((_%$e55574%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type55462%_
                                                               _%part55491%_)))
                                                         (if _%$e55574%_
                                                             ((lambda (_%slot-type55578%_)
                                                                (let* ((_%g5558155589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5558255585%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5558255585%_)))
                               (_%g5558055612%_
                                (lambda (_%g5558255593%_)
                                  ((lambda (_%L55596%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L55596%_ '()))
                                                 (cons (cons _%L55542%_
                                                             (cons _%L55544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5558255593%_))))
                          (_%g5558055612%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx55324%_
                              _%slot-type55578%_)))))
                      _%$e55574%_)
                     (if _%nil-check?55464%_
                         (cons _%L55542%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L55544%_ '()))
                                     '()))
                         (cons _%L55542%_ (cons _%L55544%_ '())))))
               (let ((_%$e55620%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type55462%_
                       _%part55491%_)))
                 (if _%$e55620%_
                     ((lambda (_%type55624%_)
                        (let ((_%type55627%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx55324%_
                                  _%type55624%_))))
                          (if _%nil-check?55464%_
                              (_%loop55457%_
                               _%rest55489%_
                               _%type55627%_
                               (cons _%L55542%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L55544%_ '()))
                                           '()))
                               '#f)
                              (_%loop55457%_
                               _%rest55489%_
                               _%type55627%_
                               (cons _%L55542%_ (cons _%L55544%_ '()))
                               '#f))))
                      _%$e55620%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx55324%_
                      _%L55417%_
                      _%part55491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5550855536%_
                                                 _%hd5550555526%_)
                                                (_%g5550055515%_
                                                 _%g5550155519%_))))
                                        (_%g5550055515%_ _%g5550155519%_))))
                                (_%g5550055515%_ _%g5550155519%_)))))
                    (_%g5549955632%_
                     (list (if _%nil-check?55464%_
                               (cons 'check-nil! (cons _%object55463%_ '()))
                               _%object55463%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx55324%_
                            _%type55462%_
                            _%part55491%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55462%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55324%_
                       _%type55462%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5546555473%_)
                                              (let ((_%hd5547055644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5546555473%_)))
                                                    (_%tl5547155647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5546555473%_))))
                                                (let* ((_%part55650%_
                                                        _%hd5547055644%_)
                                                       (_%rest55653%_
                                                        _%tl5547155647%_))
                                                  (_%K5546955640%_
                                                   _%rest55653%_
                                                   _%part55650%_)))
                                              (_%else5546755485%_)))))
                                    _%$e55450%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L55417%_ '())))))))
                     (if (pair? _%g5542955436%_)
                         (let ((_%hd5543355662%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5542955436%_)))
                               (_%tl5543455665%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5542955436%_))))
                           (let* ((_%var55668%_ _%hd5543355662%_)
                                  (_%parts55671%_ _%tl5543455665%_))
                             (_%K5543255658%_ _%parts55671%_ _%var55668%_)))
                         (_%E5543155442%_)))))
                (_%__kont8747687477%_
                 (lambda (_%L55376%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L55376%_ '())))))
            (let ((_%__match8749287493%_
                   (lambda (_%e5533155397%_
                            _%hd5533255401%_
                            _%tl5533355404%_
                            _%e5533455407%_
                            _%hd5533555411%_
                            _%tl5533655414%_)
                     (let ((_%L55417%_ _%hd5533555411%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L55417%_)
                           (_%__kont8747487475%_ _%L55417%_)
                           (_%__kont8747687477%_ _%hd5533555411%_))))))
              (if (gx#stx-pair? _%__stx8747187472%_)
                  (let ((_%e5533155397%_ (gx#syntax-e _%__stx8747187472%_)))
                    (let ((_%tl5533355404%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5533155397%_)))
                          (_%hd5533255401%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5533155397%_))))
                      (if (gx#stx-pair? _%tl5533355404%_)
                          (let ((_%e5533455407%_
                                 (gx#syntax-e _%tl5533355404%_)))
                            (let ((_%tl5533655414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5533455407%_)))
                                  (_%hd5533555411%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5533455407%_))))
                              (if (gx#stx-null? _%tl5533655414%_)
                                  (_%__match8749287493%_
                                   _%e5533155397%_
                                   _%hd5533255401%_
                                   _%tl5533355404%_
                                   _%e5533455407%_
                                   _%hd5533555411%_
                                   _%tl5533655414%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5532855349%_)))))
                          (let () (declare (not safe)) (_%g5532855349%_)))))
                  (let () (declare (not safe)) (_%g5532855349%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx55678%_)
        (let* ((_%__stx8750987510%_ _%stx55678%_)
               (_%g5568255711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8750987510%_))))
          (let ((_%__kont8751287513%_
                 (lambda (_%L55803%_ _%L55805%_)
                   (let* ((_%g5581955826%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx55678%_
                            _%L55805%_))
                          (_%E5582155832%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5581955826%_
                                    '([var . parts]))
                             (void)))
                          (_%K5582256062%_
                           (lambda (_%parts55836%_ _%var55838%_)
                             (let ((_%$e55840%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var55838%_))))
                               (if _%$e55840%_
                                   ((lambda (_%te55844%_)
                                      (let _%loop55847%_ ((_%parts55850%_
                                                           _%parts55836%_)
                                                          (_%type55852%_
                                                           (##direct-structure-ref
                                                            _%te55844%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object55853%_
                                                           _%var55838%_)
                                                          (_%checked-mutator?55854%_
                                                           (##direct-structure-ref
                                                            _%te55844%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?55855%_
                                                           '#f))
                                        (let* ((_%parts5585655863%_
                                                _%parts55850%_)
                                               (_%E5585855869%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5585655863%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5585956044%_
                                                (lambda (_%rest55873%_
                                                         _%part55875%_)
                                                  (if (and (not _%nil-check?55855%_)
                                                           (let ((__tmp92343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part55875%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp92343)))
              (let ((_%str55879%_ (symbol->string _%part55875%_)))
                (_%loop55847%_
                 (cons (let ((__tmp92344
                              (substring
                               _%str55879%_
                               '1
                               (string-length _%str55879%_))))
                         (declare (not safe))
                         (##string->symbol __tmp92344))
                       _%rest55873%_)
                 _%type55852%_
                 _%object55853%_
                 _%checked-mutator?55854%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type55852%_))
                  (if (null? _%rest55873%_)
                      (let* ((_%g5588655901%_
                              (lambda (_%g5588755897%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5588755897%_)))
                             (_%g5588555958%_
                              (lambda (_%g5588755905%_)
                                (if (gx#stx-pair? _%g5588755905%_)
                                    (let ((_%e5589055908%_
                                           (gx#syntax-e _%g5588755905%_)))
                                      (let ((_%hd5589155912%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5589055908%_)))
                                            (_%tl5589255915%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5589055908%_))))
                                        (if (gx#stx-pair? _%tl5589255915%_)
                                            (let ((_%e5589355918%_
                                                   (gx#syntax-e
                                                    _%tl5589255915%_)))
                                              (let ((_%hd5589455922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5589355918%_)))
                                                    (_%tl5589555925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5589355918%_))))
                                                (if (gx#stx-null?
                                                     _%tl5589555925%_)
                                                    ((lambda (_%L55928%_
                                                              _%L55930%_)
                                                       (if _%nil-check?55855%_
                                                           (cons _%L55928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L55930%_ '()))
                               (cons _%L55803%_ '())))
                   (cons _%L55928%_ (cons _%L55930%_ (cons _%L55803%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5589455922%_
                                                     _%hd5589155912%_)
                                                    (_%g5588655901%_
                                                     _%g5588755905%_))))
                                            (_%g5588655901%_
                                             _%g5588755905%_))))
                                    (_%g5588655901%_ _%g5588755905%_)))))
                        (_%g5588555958%_
                         (list _%object55853%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx55678%_
                                _%type55852%_
                                _%part55875%_
                                (if _%checked-mutator?55854%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type55852%_
                                     _%part55875%_)
                                    '#f)))))
                      (let ((_%$e55962%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type55852%_
                              _%part55875%_)))
                        (if _%$e55962%_
                            ((lambda (_%type55966%_)
                               (let* ((_%type55969%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx55678%_
                                          _%type55966%_)))
                                      (_%g5597255987%_
                                       (lambda (_%g5597355983%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5597355983%_)))
                                      (_%g5597156034%_
                                       (lambda (_%g5597355991%_)
                                         (if (gx#stx-pair? _%g5597355991%_)
                                             (let ((_%e5597655994%_
                                                    (gx#syntax-e
                                                     _%g5597355991%_)))
                                               (let ((_%hd5597755998%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5597655994%_)))
                                                     (_%tl5597856001%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5597655994%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5597856001%_)
                                                     (let ((_%e5597956004%_
                                                            (gx#syntax-e
                                                             _%tl5597856001%_)))
                                                       (let ((_%hd5598056008%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5597956004%_)))
                     (_%tl5598156011%_
                      (let () (declare (not safe)) (##cdr _%e5597956004%_))))
                 (if (gx#stx-null? _%tl5598156011%_)
                     ((lambda (_%L56014%_ _%L56016%_)
                        (_%loop55847%_
                         _%rest55873%_
                         _%type55969%_
                         (cons _%L56014%_ (cons _%L56016%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type55969%_
                          _%part55875%_)
                         '#f))
                      _%hd5598056008%_
                      _%hd5597755998%_)
                     (_%g5597255987%_ _%g5597355991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5597255987%_
                                                      _%g5597355991%_))))
                                             (_%g5597255987%_
                                              _%g5597355991%_)))))
                                 (_%g5597156034%_
                                  (list (if _%nil-check?55855%_
                                            (cons 'check-nil!
                                                  (cons _%object55853%_ '()))
                                            _%object55853%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx55678%_
                                         _%type55969%_
                                         _%part55875%_)))))
                             _%$e55962%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx55678%_
                             _%L55805%_
                             _%part55875%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type55852%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx55678%_
                       _%type55852%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5585655863%_)
                                              (let ((_%hd5586056048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5585655863%_)))
                                                    (_%tl5586156051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5585655863%_))))
                                                (let* ((_%part56054%_
                                                        _%hd5586056048%_)
                                                       (_%rest56057%_
                                                        _%tl5586156051%_))
                                                  (_%K5585956044%_
                                                   _%rest56057%_
                                                   _%part56054%_)))
                                              (_%E5585855869%_)))))
                                    _%$e55840%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx55678%_)))))))
                     (if (pair? _%g5581955826%_)
                         (let ((_%hd5582356066%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5581955826%_)))
                               (_%tl5582456069%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5581955826%_))))
                           (let* ((_%var56072%_ _%hd5582356066%_)
                                  (_%parts56075%_ _%tl5582456069%_))
                             (_%K5582256062%_ _%parts56075%_ _%var56072%_)))
                         (_%E5582155832%_)))))
                (_%__kont8751487515%_
                 (lambda (_%L55748%_ _%L55750%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx55678%_)))))
            (let ((_%__match8753687537%_
                   (lambda (_%e5568655773%_
                            _%hd5568755777%_
                            _%tl5568855780%_
                            _%e5568955783%_
                            _%hd5569055787%_
                            _%tl5569155790%_
                            _%e5569255793%_
                            _%hd5569355797%_
                            _%tl5569455800%_)
                     (let ((_%L55803%_ _%hd5569355797%_)
                           (_%L55805%_ _%hd5569055787%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L55805%_)
                           (_%__kont8751287513%_ _%L55803%_ _%L55805%_)
                           (_%__kont8751487515%_
                            _%hd5569355797%_
                            _%hd5569055787%_))))))
              (if (gx#stx-pair? _%__stx8750987510%_)
                  (let ((_%e5568655773%_ (gx#syntax-e _%__stx8750987510%_)))
                    (let ((_%tl5568855780%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5568655773%_)))
                          (_%hd5568755777%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5568655773%_))))
                      (if (gx#stx-pair? _%tl5568855780%_)
                          (let ((_%e5568955783%_
                                 (gx#syntax-e _%tl5568855780%_)))
                            (let ((_%tl5569155790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5568955783%_)))
                                  (_%hd5569055787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5568955783%_))))
                              (if (gx#stx-pair? _%tl5569155790%_)
                                  (let ((_%e5569255793%_
                                         (gx#syntax-e _%tl5569155790%_)))
                                    (let ((_%tl5569455800%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5569255793%_)))
                                          (_%hd5569355797%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5569255793%_))))
                                      (if (gx#stx-null? _%tl5569455800%_)
                                          (_%__match8753687537%_
                                           _%e5568655773%_
                                           _%hd5568755777%_
                                           _%tl5568855780%_
                                           _%e5568955783%_
                                           _%hd5569055787%_
                                           _%tl5569155790%_
                                           _%e5569255793%_
                                           _%hd5569355797%_
                                           _%tl5569455800%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5568255711%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5568255711%_)))))
                          (let () (declare (not safe)) (_%g5568255711%_)))))
                  (let () (declare (not safe)) (_%g5568255711%_))))))))))
