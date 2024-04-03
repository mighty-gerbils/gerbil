(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80184_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80185_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80186_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80192_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80193_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80194_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80197_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80198_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80199_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80200_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80203_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46625%_)
        (let* ((_%__stx7500075001%_ _%stx46625%_)
               (_%g4663446843%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7500075001%_))))
          (let ((_%__kont7500375004%_
                 (lambda (_%L47749%_
                          _%L47751%_
                          _%L47752%_
                          _%L47753%_
                          _%L47754%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47754%_ (cons _%L47753%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47754%_
                                                       (cons _%L47752%_
                                                             (cons _%L47751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4779747800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4779847803%_)
                  (cons _%g4779747800%_ _%g4779847803%_))
                '()
                _%L47749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7500775008%_
                 (lambda (_%L47593%_
                          _%L47595%_
                          _%L47596%_
                          _%L47597%_
                          _%L47598%_
                          _%L47599%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47599%_ (cons _%L47598%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47599%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47596%_ (cons _%L47595%_ '())))
                           (foldr (lambda (_%g4764347646%_ _%g4764447649%_)
                                    (cons _%g4764347646%_ _%g4764447649%_))
                                  '()
                                  _%L47593%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7501175012%_
                 (lambda (_%L47410%_ _%L47412%_ _%L47413%_ _%L47414%_)
                   (let ((_%meta47451%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46625%_
                             _%L47412%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47451%_))
                         (let ()
                           (cons (gx#datum->syntax '#f 'with-interface)
                                 (cons (cons _%L47414%_
                                             (cons _%L47413%_
                                                   (cons _%L47412%_ '())))
                                       (foldr (lambda (_%g4745547458%_
                                                       _%g4745647461%_)
                                                (cons _%g4745547458%_
                                                      _%g4745647461%_))
                                              '()
                                              _%L47410%_))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47451%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%L47414%_
                                                 (cons _%L47413%_
                                                       (cons _%L47412%_ '())))
                                           (foldr (lambda (_%g4746547468%_
                                                           _%g4746647471%_)
                                                    (cons _%g4746547468%_
                                                          _%g4746647471%_))
                                                  '()
                                                  _%L47410%_))))
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unexpected type; must be a class type or interface"
                                _%stx46625%_
                                _%L47412%_
                                _%meta47451%_)))))))
                (_%__kont7501575016%_
                 (lambda (_%L47288%_ _%L47290%_ _%L47291%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47291%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47290%_ '())))
                               (foldr (lambda (_%g4731447317%_ _%g4731547320%_)
                                        (cons _%g4731447317%_ _%g4731547320%_))
                                      '()
                                      _%L47288%_)))))
                (_%__kont7501975020%_
                 (lambda (_%L47146%_
                          _%L47148%_
                          _%L47149%_
                          _%L47150%_
                          _%L47151%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47151%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47150%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47151%_
                                                       (cons _%L47149%_
                                                             (cons _%L47148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4719247195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4719347198%_)
                  (cons _%g4719247195%_ _%g4719347198%_))
                '()
                _%L47146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7502375024%_
                 (lambda (_%L47004%_ _%L47006%_ _%L47007%_ _%L47008%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47008%_ _%L47007%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L47006%_
                                                 (foldr (lambda (_%g4703047033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4703147036%_)
                  (cons _%g4703047033%_ _%g4703147036%_))
                '()
                _%L47004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7502775028%_
                 (lambda (_%L46900%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4691846921%_ _%g4691946924%_)
                                        (cons _%g4691846921%_ _%g4691946924%_))
                                      '()
                                      _%L46900%_))))))
            (let* ((_%__match7533375334%_
                    (lambda (_%e4682546850%_
                             _%hd4682446854%_
                             _%tl4682346857%_
                             _%e4682846860%_
                             _%hd4682746864%_
                             _%tl4682646867%_
                             _%__splice7502975030%_
                             _%target4682946870%_
                             _%tl4683146873%_)
                      (letrec ((_%loop4683246876%_
                                (lambda (_%hd4683046880%_ _%body4683646883%_)
                                  (if (gx#stx-pair? _%hd4683046880%_)
                                      (let ((_%e4683346886%_
                                             (gx#syntax-e _%hd4683046880%_)))
                                        (let ((_%lp-tl4683546893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4683346886%_)))
                                              (_%lp-hd4683446890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4683346886%_))))
                                          (_%loop4683246876%_
                                           _%lp-tl4683546893%_
                                           (cons _%lp-hd4683446890%_
                                                 _%body4683646883%_))))
                                      (let ((_%body4683746896%_
                                             (reverse _%body4683646883%_)))
                                        (_%__kont7502775028%_
                                         _%body4683746896%_))))))
                        (_%loop4683246876%_ _%target4682946870%_ '()))))
                   (_%__match7531175312%_
                    (lambda (_%e4680346934%_
                             _%hd4680246938%_
                             _%tl4680146941%_
                             _%e4680646944%_
                             _%hd4680546948%_
                             _%tl4680446951%_
                             _%e4680946954%_
                             _%hd4680846958%_
                             _%tl4680746961%_
                             _%e4681246964%_
                             _%hd4681146968%_
                             _%tl4681046971%_
                             _%__splice7502575026%_
                             _%target4681346974%_
                             _%tl4681546977%_)
                      (letrec ((_%loop4681646980%_
                                (lambda (_%hd4681446984%_ _%body4682046987%_)
                                  (if (gx#stx-pair? _%hd4681446984%_)
                                      (let ((_%e4681746990%_
                                             (gx#syntax-e _%hd4681446984%_)))
                                        (let ((_%lp-tl4681946997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681746990%_)))
                                              (_%lp-hd4681846994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681746990%_))))
                                          (_%loop4681646980%_
                                           _%lp-tl4681946997%_
                                           (cons _%lp-hd4681846994%_
                                                 _%body4682046987%_))))
                                      (let ((_%body4682147000%_
                                             (reverse _%body4682046987%_)))
                                        (let ((_%L47004%_ _%body4682147000%_)
                                              (_%L47006%_ _%tl4680746961%_)
                                              (_%L47007%_ _%tl4681046971%_)
                                              (_%L47008%_ _%hd4681146968%_))
                                          (if (gx#identifier? _%L47008%_)
                                              (_%__kont7502375024%_
                                               _%L47004%_
                                               _%L47006%_
                                               _%L47007%_
                                               _%L47008%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_)))))))))
                        (_%loop4681646980%_ _%target4681346974%_ '()))))
                   (_%__match7529775298%_
                    (lambda (_%e4680346934%_
                             _%hd4680246938%_
                             _%tl4680146941%_
                             _%e4680646944%_
                             _%hd4680546948%_
                             _%tl4680446951%_
                             _%e4680946954%_
                             _%hd4680846958%_
                             _%tl4680746961%_)
                      (if (gx#stx-pair? _%hd4680846958%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4680846958%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (if (gx#stx-pair/null? _%tl4680446951%_)
                                  (let ((_%__splice7502575026%_
                                         (gx#syntax-split-splice
                                          _%tl4680446951%_
                                          '0)))
                                    (let ((_%tl4681546977%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '1)))
                                          (_%target4681346974%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4681546977%_)
                                          (_%__match7531175312%_
                                           _%e4680346934%_
                                           _%hd4680246938%_
                                           _%tl4680146941%_
                                           _%e4680646944%_
                                           _%hd4680546948%_
                                           _%tl4680446951%_
                                           _%e4680946954%_
                                           _%hd4680846958%_
                                           _%tl4680746961%_
                                           _%e4681246964%_
                                           _%hd4681146968%_
                                           _%tl4681046971%_
                                           _%__splice7502575026%_
                                           _%target4681346974%_
                                           _%tl4681546977%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                   (_%__match7527975280%_
                    (lambda (_%e4676947046%_
                             _%hd4676847050%_
                             _%tl4676747053%_
                             _%e4677247056%_
                             _%hd4677147060%_
                             _%tl4677047063%_
                             _%e4677547066%_
                             _%hd4677447070%_
                             _%tl4677347073%_
                             _%e4677847076%_
                             _%hd4677747080%_
                             _%tl4677647083%_
                             _%e4678147086%_
                             _%hd4678047090%_
                             _%tl4677947093%_
                             _%e4678447096%_
                             _%hd4678347100%_
                             _%tl4678247103%_
                             _%e4678747106%_
                             _%hd4678647110%_
                             _%tl4678547113%_
                             _%__splice7502175022%_
                             _%target4678847116%_
                             _%tl4679047119%_)
                      (letrec ((_%loop4679147122%_
                                (lambda (_%hd4678947126%_ _%body4679547129%_)
                                  (if (gx#stx-pair? _%hd4678947126%_)
                                      (let ((_%e4679247132%_
                                             (gx#syntax-e _%hd4678947126%_)))
                                        (let ((_%lp-tl4679447139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4679247132%_)))
                                              (_%lp-hd4679347136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4679247132%_))))
                                          (_%loop4679147122%_
                                           _%lp-tl4679447139%_
                                           (cons _%lp-hd4679347136%_
                                                 _%body4679547129%_))))
                                      (let ((_%body4679647142%_
                                             (reverse _%body4679547129%_)))
                                        (let ((_%L47146%_ _%body4679647142%_)
                                              (_%L47148%_ _%hd4678647110%_)
                                              (_%L47149%_ _%hd4678347100%_)
                                              (_%L47150%_ _%hd4678047090%_)
                                              (_%L47151%_ _%hd4677447070%_))
                                          (if (and (gx#identifier? _%L47151%_)
                                                   (gx#identifier? _%L47148%_)
                                                   (gx#identifier? _%L47149%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47149%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47149%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47149%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47149%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7501975020%_
                                               _%L47146%_
                                               _%L47148%_
                                               _%L47149%_
                                               _%L47150%_
                                               _%L47151%_)
                                              (_%__match7529775298%_
                                               _%e4676947046%_
                                               _%hd4676847050%_
                                               _%tl4676747053%_
                                               _%e4677247056%_
                                               _%hd4677147060%_
                                               _%tl4677047063%_
                                               _%e4677547066%_
                                               _%hd4677447070%_
                                               _%tl4677347073%_))))))))
                        (_%loop4679147122%_ _%target4678847116%_ '()))))
                   (_%__match7522375224%_
                    (lambda (_%e4674047208%_
                             _%hd4673947212%_
                             _%tl4673847215%_
                             _%e4674347218%_
                             _%hd4674247222%_
                             _%tl4674147225%_
                             _%e4674647228%_
                             _%hd4674547232%_
                             _%tl4674447235%_
                             _%e4674947238%_
                             _%hd4674847242%_
                             _%tl4674747245%_
                             _%e4675247248%_
                             _%hd4675147252%_
                             _%tl4675047255%_
                             _%__splice7501775018%_
                             _%target4675347258%_
                             _%tl4675547261%_)
                      (letrec ((_%loop4675647264%_
                                (lambda (_%hd4675447268%_ _%body4676047271%_)
                                  (if (gx#stx-pair? _%hd4675447268%_)
                                      (let ((_%e4675747274%_
                                             (gx#syntax-e _%hd4675447268%_)))
                                        (let ((_%lp-tl4675947281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4675747274%_)))
                                              (_%lp-hd4675847278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4675747274%_))))
                                          (_%loop4675647264%_
                                           _%lp-tl4675947281%_
                                           (cons _%lp-hd4675847278%_
                                                 _%body4676047271%_))))
                                      (let ((_%body4676147284%_
                                             (reverse _%body4676047271%_)))
                                        (let ((_%L47288%_ _%body4676147284%_)
                                              (_%L47290%_ _%hd4675147252%_)
                                              (_%L47291%_ _%hd4674547232%_))
                                          (if (gx#identifier? _%L47291%_)
                                              (_%__kont7501575016%_
                                               _%L47288%_
                                               _%L47290%_
                                               _%L47291%_)
                                              (_%__match7529775298%_
                                               _%e4674047208%_
                                               _%hd4673947212%_
                                               _%tl4673847215%_
                                               _%e4674347218%_
                                               _%hd4674247222%_
                                               _%tl4674147225%_
                                               _%e4674647228%_
                                               _%hd4674547232%_
                                               _%tl4674447235%_))))))))
                        (_%loop4675647264%_ _%target4675347258%_ '()))))
                   (_%__match7520375204%_
                    (lambda (_%e4674047208%_
                             _%hd4673947212%_
                             _%tl4673847215%_
                             _%e4674347218%_
                             _%hd4674247222%_
                             _%tl4674147225%_
                             _%e4674647228%_
                             _%hd4674547232%_
                             _%tl4674447235%_
                             _%e4674947238%_
                             _%hd4674847242%_
                             _%tl4674747245%_)
                      (if (gx#identifier? _%hd4674847242%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80184_|
                               _%hd4674847242%_)
                              (if (gx#stx-pair? _%tl4674747245%_)
                                  (let ((_%e4675247248%_
                                         (gx#syntax-e _%tl4674747245%_)))
                                    (let ((_%tl4675047255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4675247248%_)))
                                          (_%hd4675147252%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4675247248%_))))
                                      (if (gx#stx-null? _%tl4675047255%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4674147225%_)
                                              (let ((_%__splice7501775018%_
                                                     (gx#syntax-split-splice
                                                      _%tl4674147225%_
                                                      '0)))
                                                (let ((_%tl4675547261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7501775018%_
                                                          '1)))
                                                      (_%target4675347258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7501775018%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675547261%_)
                                                      (_%__match7522375224%_
                                                       _%e4674047208%_
                                                       _%hd4673947212%_
                                                       _%tl4673847215%_
                                                       _%e4674347218%_
                                                       _%hd4674247222%_
                                                       _%tl4674147225%_
                                                       _%e4674647228%_
                                                       _%hd4674547232%_
                                                       _%tl4674447235%_
                                                       _%e4674947238%_
                                                       _%hd4674847242%_
                                                       _%tl4674747245%_
                                                       _%e4675247248%_
                                                       _%hd4675147252%_
                                                       _%tl4675047255%_
                                                       _%__splice7501775018%_
                                                       _%target4675347258%_
                                                       _%tl4675547261%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4674547232%_)
                                                          (let ((_%e4681246964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4674547232%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4674547232%_)
                                                  (let ((_%e4681246964%_
                                                         (gx#syntax-e
                                                          _%hd4674547232%_)))
                                                    (let ((_%tl4681046971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4681246964%_)))
                                                          (_%hd4681146968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4681246964%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446843%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))
                                          (if (gx#stx-pair? _%tl4675047255%_)
                                              (let ((_%e4678447096%_
                                                     (gx#syntax-e
                                                      _%tl4675047255%_)))
                                                (let ((_%tl4678247103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4678447096%_)))
                                                      (_%hd4678347100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4678447096%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4678247103%_)
                                                      (let ((_%e4678747106%_
                                                             (gx#syntax-e
                                                              _%tl4678247103%_)))
                                                        (let ((_%tl4678547113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4678747106%_)))
                      (_%hd4678647110%_
                       (let () (declare (not safe)) (##car _%e4678747106%_))))
                  (if (gx#stx-null? _%tl4678547113%_)
                      (if (gx#stx-pair/null? _%tl4674147225%_)
                          (let ((_%__splice7502175022%_
                                 (gx#syntax-split-splice _%tl4674147225%_ '0)))
                            (let ((_%tl4679047119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502175022%_ '1)))
                                  (_%target4678847116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502175022%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679047119%_)
                                  (_%__match7527975280%_
                                   _%e4674047208%_
                                   _%hd4673947212%_
                                   _%tl4673847215%_
                                   _%e4674347218%_
                                   _%hd4674247222%_
                                   _%tl4674147225%_
                                   _%e4674647228%_
                                   _%hd4674547232%_
                                   _%tl4674447235%_
                                   _%e4674947238%_
                                   _%hd4674847242%_
                                   _%tl4674747245%_
                                   _%e4675247248%_
                                   _%hd4675147252%_
                                   _%tl4675047255%_
                                   _%e4678447096%_
                                   _%hd4678347100%_
                                   _%tl4678247103%_
                                   _%e4678747106%_
                                   _%hd4678647110%_
                                   _%tl4678547113%_
                                   _%__splice7502175022%_
                                   _%target4678847116%_
                                   _%tl4679047119%_)
                                  (if (gx#stx-pair? _%hd4674547232%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4674547232%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))
                          (if (gx#stx-pair? _%hd4674547232%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4674547232%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                      (if (gx#stx-pair? _%hd4674547232%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4674547232%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (if (gx#stx-pair/null? _%tl4674147225%_)
                                  (let ((_%__splice7502575026%_
                                         (gx#syntax-split-splice
                                          _%tl4674147225%_
                                          '0)))
                                    (let ((_%tl4681546977%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '1)))
                                          (_%target4681346974%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4681546977%_)
                                          (_%__match7531175312%_
                                           _%e4674047208%_
                                           _%hd4673947212%_
                                           _%tl4673847215%_
                                           _%e4674347218%_
                                           _%hd4674247222%_
                                           _%tl4674147225%_
                                           _%e4674647228%_
                                           _%hd4674547232%_
                                           _%tl4674447235%_
                                           _%e4681246964%_
                                           _%hd4681146968%_
                                           _%tl4681046971%_
                                           _%__splice7502575026%_
                                           _%target4681346974%_
                                           _%tl4681546977%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_))))))
              (if (gx#stx-pair? _%hd4674547232%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4674547232%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4674147225%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4674147225%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4674047208%_
                                   _%hd4673947212%_
                                   _%tl4673847215%_
                                   _%e4674347218%_
                                   _%hd4674247222%_
                                   _%tl4674147225%_
                                   _%e4674647228%_
                                   _%hd4674547232%_
                                   _%tl4674447235%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4674547232%_)
                                                  (let ((_%e4681246964%_
                                                         (gx#syntax-e
                                                          _%hd4674547232%_)))
                                                    (let ((_%tl4681046971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4681246964%_)))
                                                          (_%hd4681146968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4681246964%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4674147225%_)
                                                          (let ((_%__splice7502575026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4674147225%_ '0)))
                    (let ((_%tl4681546977%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '1)))
                          (_%target4681346974%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '0))))
                      (if (gx#stx-null? _%tl4681546977%_)
                          (_%__match7531175312%_
                           _%e4674047208%_
                           _%hd4673947212%_
                           _%tl4673847215%_
                           _%e4674347218%_
                           _%hd4674247222%_
                           _%tl4674147225%_
                           _%e4674647228%_
                           _%hd4674547232%_
                           _%tl4674447235%_
                           _%e4681246964%_
                           _%hd4681146968%_
                           _%tl4681046971%_
                           _%__splice7502575026%_
                           _%target4681346974%_
                           _%tl4681546977%_)
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))))
                                  (if (gx#stx-pair? _%hd4674547232%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4674547232%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4674147225%_)
                                              (let ((_%__splice7502575026%_
                                                     (gx#syntax-split-splice
                                                      _%tl4674147225%_
                                                      '0)))
                                                (let ((_%tl4681546977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '1)))
                                                      (_%target4681346974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4681546977%_)
                                                      (_%__match7531175312%_
                                                       _%e4674047208%_
                                                       _%hd4673947212%_
                                                       _%tl4673847215%_
                                                       _%e4674347218%_
                                                       _%hd4674247222%_
                                                       _%tl4674147225%_
                                                       _%e4674647228%_
                                                       _%hd4674547232%_
                                                       _%tl4674447235%_
                                                       _%e4681246964%_
                                                       _%hd4681146968%_
                                                       _%tl4681046971%_
                                                       _%__splice7502575026%_
                                                       _%target4681346974%_
                                                       _%tl4681546977%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446843%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                              (if (gx#stx-pair? _%hd4674547232%_)
                                  (let ((_%e4681246964%_
                                         (gx#syntax-e _%hd4674547232%_)))
                                    (let ((_%tl4681046971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4681246964%_)))
                                          (_%hd4681146968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4681246964%_))))
                                      (if (gx#stx-pair/null? _%tl4674147225%_)
                                          (let ((_%__splice7502575026%_
                                                 (gx#syntax-split-splice
                                                  _%tl4674147225%_
                                                  '0)))
                                            (let ((_%tl4681546977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502575026%_
                                                      '1)))
                                                  (_%target4681346974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502575026%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4681546977%_)
                                                  (_%__match7531175312%_
                                                   _%e4674047208%_
                                                   _%hd4673947212%_
                                                   _%tl4673847215%_
                                                   _%e4674347218%_
                                                   _%hd4674247222%_
                                                   _%tl4674147225%_
                                                   _%e4674647228%_
                                                   _%hd4674547232%_
                                                   _%tl4674447235%_
                                                   _%e4681246964%_
                                                   _%hd4681146968%_
                                                   _%tl4681046971%_
                                                   _%__splice7502575026%_
                                                   _%target4681346974%_
                                                   _%tl4681546977%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                          (if (gx#stx-pair? _%hd4674547232%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4674547232%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (if (gx#stx-pair/null? _%tl4674147225%_)
                                      (let ((_%__splice7502575026%_
                                             (gx#syntax-split-splice
                                              _%tl4674147225%_
                                              '0)))
                                        (let ((_%tl4681546977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7502575026%_
                                                  '1)))
                                              (_%target4681346974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7502575026%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4681546977%_)
                                              (_%__match7531175312%_
                                               _%e4674047208%_
                                               _%hd4673947212%_
                                               _%tl4673847215%_
                                               _%e4674347218%_
                                               _%hd4674247222%_
                                               _%tl4674147225%_
                                               _%e4674647228%_
                                               _%hd4674547232%_
                                               _%tl4674447235%_
                                               _%e4681246964%_
                                               _%hd4681146968%_
                                               _%tl4681046971%_
                                               _%__splice7502575026%_
                                               _%target4681346974%_
                                               _%tl4681546977%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_))))))
                   (_%__match7517975180%_
                    (lambda (_%e4671347330%_
                             _%hd4671247334%_
                             _%tl4671147337%_
                             _%e4671647340%_
                             _%hd4671547344%_
                             _%tl4671447347%_
                             _%e4671947350%_
                             _%hd4671847354%_
                             _%tl4671747357%_
                             _%e4672247360%_
                             _%hd4672147364%_
                             _%tl4672047367%_
                             _%e4672547370%_
                             _%hd4672447374%_
                             _%tl4672347377%_
                             _%__splice7501375014%_
                             _%target4672647380%_
                             _%tl4672847383%_)
                      (letrec ((_%loop4672947386%_
                                (lambda (_%hd4672747390%_ _%body4673347393%_)
                                  (if (gx#stx-pair? _%hd4672747390%_)
                                      (let ((_%e4673047396%_
                                             (gx#syntax-e _%hd4672747390%_)))
                                        (let ((_%lp-tl4673247403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4673047396%_)))
                                              (_%lp-hd4673147400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4673047396%_))))
                                          (_%loop4672947386%_
                                           _%lp-tl4673247403%_
                                           (cons _%lp-hd4673147400%_
                                                 _%body4673347393%_))))
                                      (let ((_%body4673447406%_
                                             (reverse _%body4673347393%_)))
                                        (let ((_%L47410%_ _%body4673447406%_)
                                              (_%L47412%_ _%hd4672447374%_)
                                              (_%L47413%_ _%hd4672147364%_)
                                              (_%L47414%_ _%hd4671847354%_))
                                          (if (and (gx#identifier? _%L47414%_)
                                                   (gx#identifier? _%L47412%_)
                                                   (gx#identifier? _%L47413%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47413%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47413%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47413%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47413%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7501175012%_
                                               _%L47410%_
                                               _%L47412%_
                                               _%L47413%_
                                               _%L47414%_)
                                              (_%__match7520375204%_
                                               _%e4671347330%_
                                               _%hd4671247334%_
                                               _%tl4671147337%_
                                               _%e4671647340%_
                                               _%hd4671547344%_
                                               _%tl4671447347%_
                                               _%e4671947350%_
                                               _%hd4671847354%_
                                               _%tl4671747357%_
                                               _%e4672247360%_
                                               _%hd4672147364%_
                                               _%tl4672047367%_))))))))
                        (_%loop4672947386%_ _%target4672647380%_ '()))))
                   (_%__match7513975140%_
                    (lambda (_%e4667647483%_
                             _%hd4667547487%_
                             _%tl4667447490%_
                             _%e4667947493%_
                             _%hd4667847497%_
                             _%tl4667747500%_
                             _%e4668247503%_
                             _%hd4668147507%_
                             _%tl4668047510%_
                             _%e4668547513%_
                             _%hd4668447517%_
                             _%tl4668347520%_
                             _%e4668847523%_
                             _%hd4668747527%_
                             _%tl4668647530%_
                             _%e4669147533%_
                             _%hd4669047537%_
                             _%tl4668947540%_
                             _%e4669447543%_
                             _%hd4669347547%_
                             _%tl4669247550%_
                             _%e4669747553%_
                             _%hd4669647557%_
                             _%tl4669547560%_
                             _%__splice7500975010%_
                             _%target4669847563%_
                             _%tl4670047566%_)
                      (letrec ((_%loop4670147569%_
                                (lambda (_%hd4669947573%_ _%body4670547576%_)
                                  (if (gx#stx-pair? _%hd4669947573%_)
                                      (let ((_%e4670247579%_
                                             (gx#syntax-e _%hd4669947573%_)))
                                        (let ((_%lp-tl4670447586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4670247579%_)))
                                              (_%lp-hd4670347583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4670247579%_))))
                                          (_%loop4670147569%_
                                           _%lp-tl4670447586%_
                                           (cons _%lp-hd4670347583%_
                                                 _%body4670547576%_))))
                                      (let ((_%body4670647589%_
                                             (reverse _%body4670547576%_)))
                                        (let ((_%L47593%_ _%body4670647589%_)
                                              (_%L47595%_ _%hd4669647557%_)
                                              (_%L47596%_ _%hd4669347547%_)
                                              (_%L47597%_ _%hd4669047537%_)
                                              (_%L47598%_ _%hd4668447517%_)
                                              (_%L47599%_ _%hd4668147507%_))
                                          (if (and (gx#identifier? _%L47599%_)
                                                   (gx#identifier? _%L47595%_)
                                                   (gx#identifier? _%L47596%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47596%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47596%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47596%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47596%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7500775008%_
                                               _%L47593%_
                                               _%L47595%_
                                               _%L47596%_
                                               _%L47597%_
                                               _%L47598%_
                                               _%L47599%_)
                                              (_%__match7520375204%_
                                               _%e4667647483%_
                                               _%hd4667547487%_
                                               _%tl4667447490%_
                                               _%e4667947493%_
                                               _%hd4667847497%_
                                               _%tl4667747500%_
                                               _%e4668247503%_
                                               _%hd4668147507%_
                                               _%tl4668047510%_
                                               _%e4668547513%_
                                               _%hd4668447517%_
                                               _%tl4668347520%_))))))))
                        (_%loop4670147569%_ _%target4669847563%_ '()))))
                   (_%__match7510775108%_
                    (lambda (_%e4667647483%_
                             _%hd4667547487%_
                             _%tl4667447490%_
                             _%e4667947493%_
                             _%hd4667847497%_
                             _%tl4667747500%_
                             _%e4668247503%_
                             _%hd4668147507%_
                             _%tl4668047510%_
                             _%e4668547513%_
                             _%hd4668447517%_
                             _%tl4668347520%_
                             _%e4668847523%_
                             _%hd4668747527%_
                             _%tl4668647530%_)
                      (if (gx#identifier? _%hd4668747527%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80185_|
                               _%hd4668747527%_)
                              (if (gx#stx-pair? _%tl4668647530%_)
                                  (let ((_%e4669147533%_
                                         (gx#syntax-e _%tl4668647530%_)))
                                    (let ((_%tl4668947540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4669147533%_)))
                                          (_%hd4669047537%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4669147533%_))))
                                      (if (gx#stx-pair? _%tl4668947540%_)
                                          (let ((_%e4669447543%_
                                                 (gx#syntax-e
                                                  _%tl4668947540%_)))
                                            (let ((_%tl4669247550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4669447543%_)))
                                                  (_%hd4669347547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4669447543%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4669247550%_)
                                                  (let ((_%e4669747553%_
                                                         (gx#syntax-e
                                                          _%tl4669247550%_)))
                                                    (let ((_%tl4669547560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4669747553%_)))
                                                          (_%hd4669647557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4669747553%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4669547560%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4667747500%_)
                                                              (let ((_%__splice7500975010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4667747500%_ '0)))
                        (let ((_%tl4670047566%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500975010%_ '1)))
                              (_%target4669847563%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500975010%_ '0))))
                          (if (gx#stx-null? _%tl4670047566%_)
                              (_%__match7513975140%_
                               _%e4667647483%_
                               _%hd4667547487%_
                               _%tl4667447490%_
                               _%e4667947493%_
                               _%hd4667847497%_
                               _%tl4667747500%_
                               _%e4668247503%_
                               _%hd4668147507%_
                               _%tl4668047510%_
                               _%e4668547513%_
                               _%hd4668447517%_
                               _%tl4668347520%_
                               _%e4668847523%_
                               _%hd4668747527%_
                               _%tl4668647530%_
                               _%e4669147533%_
                               _%hd4669047537%_
                               _%tl4668947540%_
                               _%e4669447543%_
                               _%hd4669347547%_
                               _%tl4669247550%_
                               _%e4669747553%_
                               _%hd4669647557%_
                               _%tl4669547560%_
                               _%__splice7500975010%_
                               _%target4669847563%_
                               _%tl4670047566%_)
                              (if (gx#stx-pair? _%hd4668147507%_)
                                  (let ((_%e4681246964%_
                                         (gx#syntax-e _%hd4668147507%_)))
                                    (let ((_%tl4681046971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4681246964%_)))
                                          (_%hd4681146968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4681246964%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))))
                      (if (gx#stx-pair? _%hd4668147507%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4668147507%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                  (if (gx#stx-pair? _%hd4668147507%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4668147507%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (if (gx#stx-pair/null? _%tl4667747500%_)
                              (let ((_%__splice7502575026%_
                                     (gx#syntax-split-splice
                                      _%tl4667747500%_
                                      '0)))
                                (let ((_%tl4681546977%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '1)))
                                      (_%target4681346974%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4681546977%_)
                                      (_%__match7531175312%_
                                       _%e4667647483%_
                                       _%hd4667547487%_
                                       _%tl4667447490%_
                                       _%e4667947493%_
                                       _%hd4667847497%_
                                       _%tl4667747500%_
                                       _%e4668247503%_
                                       _%hd4668147507%_
                                       _%tl4668047510%_
                                       _%e4681246964%_
                                       _%hd4681146968%_
                                       _%tl4681046971%_
                                       _%__splice7502575026%_
                                       _%target4681346974%_
                                       _%tl4681546977%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4668447517%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80184_|
                                                           _%hd4668447517%_)
                                                          (if (gx#stx-null?
                                                               _%tl4669247550%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4667747500%_)
                          (let ((_%__splice7502175022%_
                                 (gx#syntax-split-splice _%tl4667747500%_ '0)))
                            (let ((_%tl4679047119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502175022%_ '1)))
                                  (_%target4678847116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502175022%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679047119%_)
                                  (_%__match7527975280%_
                                   _%e4667647483%_
                                   _%hd4667547487%_
                                   _%tl4667447490%_
                                   _%e4667947493%_
                                   _%hd4667847497%_
                                   _%tl4667747500%_
                                   _%e4668247503%_
                                   _%hd4668147507%_
                                   _%tl4668047510%_
                                   _%e4668547513%_
                                   _%hd4668447517%_
                                   _%tl4668347520%_
                                   _%e4668847523%_
                                   _%hd4668747527%_
                                   _%tl4668647530%_
                                   _%e4669147533%_
                                   _%hd4669047537%_
                                   _%tl4668947540%_
                                   _%e4669447543%_
                                   _%hd4669347547%_
                                   _%tl4669247550%_
                                   _%__splice7502175022%_
                                   _%target4678847116%_
                                   _%tl4679047119%_)
                                  (if (gx#stx-pair? _%hd4668147507%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4668147507%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))
                          (if (gx#stx-pair? _%hd4668147507%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4668147507%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                      (if (gx#stx-pair? _%hd4668147507%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4668147507%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (if (gx#stx-pair/null? _%tl4667747500%_)
                                  (let ((_%__splice7502575026%_
                                         (gx#syntax-split-splice
                                          _%tl4667747500%_
                                          '0)))
                                    (let ((_%tl4681546977%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '1)))
                                          (_%target4681346974%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4681546977%_)
                                          (_%__match7531175312%_
                                           _%e4667647483%_
                                           _%hd4667547487%_
                                           _%tl4667447490%_
                                           _%e4667947493%_
                                           _%hd4667847497%_
                                           _%tl4667747500%_
                                           _%e4668247503%_
                                           _%hd4668147507%_
                                           _%tl4668047510%_
                                           _%e4681246964%_
                                           _%hd4681146968%_
                                           _%tl4681046971%_
                                           _%__splice7502575026%_
                                           _%target4681346974%_
                                           _%tl4681546977%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                  (if (gx#stx-pair? _%hd4668147507%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4668147507%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (if (gx#stx-pair/null? _%tl4667747500%_)
                              (let ((_%__splice7502575026%_
                                     (gx#syntax-split-splice
                                      _%tl4667747500%_
                                      '0)))
                                (let ((_%tl4681546977%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '1)))
                                      (_%target4681346974%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4681546977%_)
                                      (_%__match7531175312%_
                                       _%e4667647483%_
                                       _%hd4667547487%_
                                       _%tl4667447490%_
                                       _%e4667947493%_
                                       _%hd4667847497%_
                                       _%tl4667747500%_
                                       _%e4668247503%_
                                       _%hd4668147507%_
                                       _%tl4668047510%_
                                       _%e4681246964%_
                                       _%hd4681146968%_
                                       _%tl4681046971%_
                                       _%__splice7502575026%_
                                       _%target4681346974%_
                                       _%tl4681546977%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
              (if (gx#stx-pair? _%hd4668147507%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4668147507%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4667747500%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4667747500%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4667647483%_
                                   _%hd4667547487%_
                                   _%tl4667447490%_
                                   _%e4667947493%_
                                   _%hd4667847497%_
                                   _%tl4667747500%_
                                   _%e4668247503%_
                                   _%hd4668147507%_
                                   _%tl4668047510%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4668147507%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4668147507%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4667747500%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4667747500%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4667647483%_
                       _%hd4667547487%_
                       _%tl4667447490%_
                       _%e4667947493%_
                       _%hd4667847497%_
                       _%tl4667747500%_
                       _%e4668247503%_
                       _%hd4668147507%_
                       _%tl4668047510%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))))
                                  (if (gx#stx-null? _%tl4668647530%_)
                                      (if (gx#stx-pair/null? _%tl4667747500%_)
                                          (let ((_%__splice7501375014%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667747500%_
                                                  '0)))
                                            (let ((_%tl4672847383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7501375014%_
                                                      '1)))
                                                  (_%target4672647380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7501375014%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4672847383%_)
                                                  (_%__match7517975180%_
                                                   _%e4667647483%_
                                                   _%hd4667547487%_
                                                   _%tl4667447490%_
                                                   _%e4667947493%_
                                                   _%hd4667847497%_
                                                   _%tl4667747500%_
                                                   _%e4668247503%_
                                                   _%hd4668147507%_
                                                   _%tl4668047510%_
                                                   _%e4668547513%_
                                                   _%hd4668447517%_
                                                   _%tl4668347520%_
                                                   _%e4668847523%_
                                                   _%hd4668747527%_
                                                   _%tl4668647530%_
                                                   _%__splice7501375014%_
                                                   _%target4672647380%_
                                                   _%tl4672847383%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4668147507%_)
                                                      (let ((_%e4681246964%_
                                                             (gx#syntax-e
                                                              _%hd4668147507%_)))
                                                        (let ((_%tl4681046971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4681246964%_)))
                      (_%hd4681146968%_
                       (let () (declare (not safe)) (##car _%e4681246964%_))))
                  (let () (declare (not safe)) (_%g4663446843%_))))
              (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4668147507%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4668147507%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                      (if (gx#stx-pair? _%hd4668147507%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4668147507%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4667747500%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4667747500%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4667647483%_
                                                           _%hd4667547487%_
                                                           _%tl4667447490%_
                                                           _%e4667947493%_
                                                           _%hd4667847497%_
                                                           _%tl4667747500%_
                                                           _%e4668247503%_
                                                           _%hd4668147507%_
                                                           _%tl4668047510%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                              (if (gx#stx-null? _%tl4668647530%_)
                                  (if (gx#stx-pair/null? _%tl4667747500%_)
                                      (let ((_%__splice7501375014%_
                                             (gx#syntax-split-splice
                                              _%tl4667747500%_
                                              '0)))
                                        (let ((_%tl4672847383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7501375014%_
                                                  '1)))
                                              (_%target4672647380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7501375014%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4672847383%_)
                                              (_%__match7517975180%_
                                               _%e4667647483%_
                                               _%hd4667547487%_
                                               _%tl4667447490%_
                                               _%e4667947493%_
                                               _%hd4667847497%_
                                               _%tl4667747500%_
                                               _%e4668247503%_
                                               _%hd4668147507%_
                                               _%tl4668047510%_
                                               _%e4668547513%_
                                               _%hd4668447517%_
                                               _%tl4668347520%_
                                               _%e4668847523%_
                                               _%hd4668747527%_
                                               _%tl4668647530%_
                                               _%__splice7501375014%_
                                               _%target4672647380%_
                                               _%tl4672847383%_)
                                              (if (gx#stx-pair?
                                                   _%hd4668147507%_)
                                                  (let ((_%e4681246964%_
                                                         (gx#syntax-e
                                                          _%hd4668147507%_)))
                                                    (let ((_%tl4681046971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4681246964%_)))
                                                          (_%hd4681146968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4681246964%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446843%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))))
                                      (if (gx#stx-pair? _%hd4668147507%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4668147507%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                  (if (gx#identifier? _%hd4668447517%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80184_|
                                           _%hd4668447517%_)
                                          (if (gx#stx-pair? _%tl4668647530%_)
                                              (let ((_%e4678447096%_
                                                     (gx#syntax-e
                                                      _%tl4668647530%_)))
                                                (let ((_%tl4678247103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4678447096%_)))
                                                      (_%hd4678347100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4678447096%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4678247103%_)
                                                      (let ((_%e4678747106%_
                                                             (gx#syntax-e
                                                              _%tl4678247103%_)))
                                                        (let ((_%tl4678547113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4678747106%_)))
                      (_%hd4678647110%_
                       (let () (declare (not safe)) (##car _%e4678747106%_))))
                  (if (gx#stx-null? _%tl4678547113%_)
                      (if (gx#stx-pair/null? _%tl4667747500%_)
                          (let ((_%__splice7502175022%_
                                 (gx#syntax-split-splice _%tl4667747500%_ '0)))
                            (let ((_%tl4679047119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502175022%_ '1)))
                                  (_%target4678847116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502175022%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679047119%_)
                                  (_%__match7527975280%_
                                   _%e4667647483%_
                                   _%hd4667547487%_
                                   _%tl4667447490%_
                                   _%e4667947493%_
                                   _%hd4667847497%_
                                   _%tl4667747500%_
                                   _%e4668247503%_
                                   _%hd4668147507%_
                                   _%tl4668047510%_
                                   _%e4668547513%_
                                   _%hd4668447517%_
                                   _%tl4668347520%_
                                   _%e4668847523%_
                                   _%hd4668747527%_
                                   _%tl4668647530%_
                                   _%e4678447096%_
                                   _%hd4678347100%_
                                   _%tl4678247103%_
                                   _%e4678747106%_
                                   _%hd4678647110%_
                                   _%tl4678547113%_
                                   _%__splice7502175022%_
                                   _%target4678847116%_
                                   _%tl4679047119%_)
                                  (if (gx#stx-pair? _%hd4668147507%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4668147507%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))
                          (if (gx#stx-pair? _%hd4668147507%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4668147507%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                      (if (gx#stx-pair? _%hd4668147507%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4668147507%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (if (gx#stx-pair/null? _%tl4667747500%_)
                                  (let ((_%__splice7502575026%_
                                         (gx#syntax-split-splice
                                          _%tl4667747500%_
                                          '0)))
                                    (let ((_%tl4681546977%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '1)))
                                          (_%target4681346974%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4681546977%_)
                                          (_%__match7531175312%_
                                           _%e4667647483%_
                                           _%hd4667547487%_
                                           _%tl4667447490%_
                                           _%e4667947493%_
                                           _%hd4667847497%_
                                           _%tl4667747500%_
                                           _%e4668247503%_
                                           _%hd4668147507%_
                                           _%tl4668047510%_
                                           _%e4681246964%_
                                           _%hd4681146968%_
                                           _%tl4681046971%_
                                           _%__splice7502575026%_
                                           _%target4681346974%_
                                           _%tl4681546977%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_))))))
              (if (gx#stx-pair? _%hd4668147507%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4668147507%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4667747500%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4667747500%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4667647483%_
                                   _%hd4667547487%_
                                   _%tl4667447490%_
                                   _%e4667947493%_
                                   _%hd4667847497%_
                                   _%tl4667747500%_
                                   _%e4668247503%_
                                   _%hd4668147507%_
                                   _%tl4668047510%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4668147507%_)
                                                  (let ((_%e4681246964%_
                                                         (gx#syntax-e
                                                          _%hd4668147507%_)))
                                                    (let ((_%tl4681046971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4681246964%_)))
                                                          (_%hd4681146968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4681246964%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4667747500%_)
                                                          (let ((_%__splice7502575026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4667747500%_ '0)))
                    (let ((_%tl4681546977%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '1)))
                          (_%target4681346974%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '0))))
                      (if (gx#stx-null? _%tl4681546977%_)
                          (_%__match7531175312%_
                           _%e4667647483%_
                           _%hd4667547487%_
                           _%tl4667447490%_
                           _%e4667947493%_
                           _%hd4667847497%_
                           _%tl4667747500%_
                           _%e4668247503%_
                           _%hd4668147507%_
                           _%tl4668047510%_
                           _%e4681246964%_
                           _%hd4681146968%_
                           _%tl4681046971%_
                           _%__splice7502575026%_
                           _%target4681346974%_
                           _%tl4681546977%_)
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))
                                          (if (gx#stx-pair? _%hd4668147507%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4668147507%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4667747500%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4667747500%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4667647483%_
                       _%hd4667547487%_
                       _%tl4667447490%_
                       _%e4667947493%_
                       _%hd4667847497%_
                       _%tl4667747500%_
                       _%e4668247503%_
                       _%hd4668147507%_
                       _%tl4668047510%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                      (if (gx#stx-pair? _%hd4668147507%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4668147507%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4667747500%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4667747500%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4667647483%_
                                                           _%hd4667547487%_
                                                           _%tl4667447490%_
                                                           _%e4667947493%_
                                                           _%hd4667847497%_
                                                           _%tl4667747500%_
                                                           _%e4668247503%_
                                                           _%hd4668147507%_
                                                           _%tl4668047510%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))))
                          (if (gx#stx-null? _%tl4668647530%_)
                              (if (gx#stx-pair/null? _%tl4667747500%_)
                                  (let ((_%__splice7501375014%_
                                         (gx#syntax-split-splice
                                          _%tl4667747500%_
                                          '0)))
                                    (let ((_%tl4672847383%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7501375014%_
                                              '1)))
                                          (_%target4672647380%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7501375014%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4672847383%_)
                                          (_%__match7517975180%_
                                           _%e4667647483%_
                                           _%hd4667547487%_
                                           _%tl4667447490%_
                                           _%e4667947493%_
                                           _%hd4667847497%_
                                           _%tl4667747500%_
                                           _%e4668247503%_
                                           _%hd4668147507%_
                                           _%tl4668047510%_
                                           _%e4668547513%_
                                           _%hd4668447517%_
                                           _%tl4668347520%_
                                           _%e4668847523%_
                                           _%hd4668747527%_
                                           _%tl4668647530%_
                                           _%__splice7501375014%_
                                           _%target4672647380%_
                                           _%tl4672847383%_)
                                          (if (gx#stx-pair? _%hd4668147507%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4668147507%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))))
                                  (if (gx#stx-pair? _%hd4668147507%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4668147507%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                              (if (gx#identifier? _%hd4668447517%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80184_|
                                       _%hd4668447517%_)
                                      (if (gx#stx-pair? _%tl4668647530%_)
                                          (let ((_%e4678447096%_
                                                 (gx#syntax-e
                                                  _%tl4668647530%_)))
                                            (let ((_%tl4678247103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4678447096%_)))
                                                  (_%hd4678347100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4678447096%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4678247103%_)
                                                  (let ((_%e4678747106%_
                                                         (gx#syntax-e
                                                          _%tl4678247103%_)))
                                                    (let ((_%tl4678547113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4678747106%_)))
                                                          (_%hd4678647110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4678747106%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4678547113%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4667747500%_)
                                                              (let ((_%__splice7502175022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4667747500%_ '0)))
                        (let ((_%tl4679047119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502175022%_ '1)))
                              (_%target4678847116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502175022%_ '0))))
                          (if (gx#stx-null? _%tl4679047119%_)
                              (_%__match7527975280%_
                               _%e4667647483%_
                               _%hd4667547487%_
                               _%tl4667447490%_
                               _%e4667947493%_
                               _%hd4667847497%_
                               _%tl4667747500%_
                               _%e4668247503%_
                               _%hd4668147507%_
                               _%tl4668047510%_
                               _%e4668547513%_
                               _%hd4668447517%_
                               _%tl4668347520%_
                               _%e4668847523%_
                               _%hd4668747527%_
                               _%tl4668647530%_
                               _%e4678447096%_
                               _%hd4678347100%_
                               _%tl4678247103%_
                               _%e4678747106%_
                               _%hd4678647110%_
                               _%tl4678547113%_
                               _%__splice7502175022%_
                               _%target4678847116%_
                               _%tl4679047119%_)
                              (if (gx#stx-pair? _%hd4668147507%_)
                                  (let ((_%e4681246964%_
                                         (gx#syntax-e _%hd4668147507%_)))
                                    (let ((_%tl4681046971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4681246964%_)))
                                          (_%hd4681146968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4681246964%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))))
                      (if (gx#stx-pair? _%hd4668147507%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4668147507%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                  (if (gx#stx-pair? _%hd4668147507%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4668147507%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (if (gx#stx-pair/null? _%tl4667747500%_)
                              (let ((_%__splice7502575026%_
                                     (gx#syntax-split-splice
                                      _%tl4667747500%_
                                      '0)))
                                (let ((_%tl4681546977%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '1)))
                                      (_%target4681346974%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4681546977%_)
                                      (_%__match7531175312%_
                                       _%e4667647483%_
                                       _%hd4667547487%_
                                       _%tl4667447490%_
                                       _%e4667947493%_
                                       _%hd4667847497%_
                                       _%tl4667747500%_
                                       _%e4668247503%_
                                       _%hd4668147507%_
                                       _%tl4668047510%_
                                       _%e4681246964%_
                                       _%hd4681146968%_
                                       _%tl4681046971%_
                                       _%__splice7502575026%_
                                       _%target4681346974%_
                                       _%tl4681546977%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4668147507%_)
                                                      (let ((_%e4681246964%_
                                                             (gx#syntax-e
                                                              _%hd4668147507%_)))
                                                        (let ((_%tl4681046971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4681246964%_)))
                      (_%hd4681146968%_
                       (let () (declare (not safe)) (##car _%e4681246964%_))))
                  (if (gx#stx-pair/null? _%tl4667747500%_)
                      (let ((_%__splice7502575026%_
                             (gx#syntax-split-splice _%tl4667747500%_ '0)))
                        (let ((_%tl4681546977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '1)))
                              (_%target4681346974%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '0))))
                          (if (gx#stx-null? _%tl4681546977%_)
                              (_%__match7531175312%_
                               _%e4667647483%_
                               _%hd4667547487%_
                               _%tl4667447490%_
                               _%e4667947493%_
                               _%hd4667847497%_
                               _%tl4667747500%_
                               _%e4668247503%_
                               _%hd4668147507%_
                               _%tl4668047510%_
                               _%e4681246964%_
                               _%hd4681146968%_
                               _%tl4681046971%_
                               _%__splice7502575026%_
                               _%target4681346974%_
                               _%tl4681546977%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4668147507%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4668147507%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4667747500%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4667747500%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4667647483%_
                       _%hd4667547487%_
                       _%tl4667447490%_
                       _%e4667947493%_
                       _%hd4667847497%_
                       _%tl4667747500%_
                       _%e4668247503%_
                       _%hd4668147507%_
                       _%tl4668047510%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                      (if (gx#stx-pair? _%hd4668147507%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4668147507%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4667747500%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4667747500%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4667647483%_
                                                           _%hd4667547487%_
                                                           _%tl4667447490%_
                                                           _%e4667947493%_
                                                           _%hd4667847497%_
                                                           _%tl4667747500%_
                                                           _%e4668247503%_
                                                           _%hd4668147507%_
                                                           _%tl4668047510%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                  (if (gx#stx-pair? _%hd4668147507%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4668147507%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4667747500%_)
                                              (let ((_%__splice7502575026%_
                                                     (gx#syntax-split-splice
                                                      _%tl4667747500%_
                                                      '0)))
                                                (let ((_%tl4681546977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '1)))
                                                      (_%target4681346974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4681546977%_)
                                                      (_%__match7531175312%_
                                                       _%e4667647483%_
                                                       _%hd4667547487%_
                                                       _%tl4667447490%_
                                                       _%e4667947493%_
                                                       _%hd4667847497%_
                                                       _%tl4667747500%_
                                                       _%e4668247503%_
                                                       _%hd4668147507%_
                                                       _%tl4668047510%_
                                                       _%e4681246964%_
                                                       _%hd4681146968%_
                                                       _%tl4681046971%_
                                                       _%__splice7502575026%_
                                                       _%target4681346974%_
                                                       _%tl4681546977%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446843%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))))
                   (_%__match7507775078%_
                    (lambda (_%e4664347659%_
                             _%hd4664247663%_
                             _%tl4664147666%_
                             _%e4664647669%_
                             _%hd4664547673%_
                             _%tl4664447676%_
                             _%e4664947679%_
                             _%hd4664847683%_
                             _%tl4664747686%_
                             _%e4665247689%_
                             _%hd4665147693%_
                             _%tl4665047696%_
                             _%e4665547699%_
                             _%hd4665447703%_
                             _%tl4665347706%_
                             _%e4665847709%_
                             _%hd4665747713%_
                             _%tl4665647716%_
                             _%__splice7500575006%_
                             _%target4665947719%_
                             _%tl4666147722%_)
                      (letrec ((_%loop4666247725%_
                                (lambda (_%hd4666047729%_ _%body4666647732%_)
                                  (if (gx#stx-pair? _%hd4666047729%_)
                                      (let ((_%e4666347735%_
                                             (gx#syntax-e _%hd4666047729%_)))
                                        (let ((_%lp-tl4666547742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4666347735%_)))
                                              (_%lp-hd4666447739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4666347735%_))))
                                          (_%loop4666247725%_
                                           _%lp-tl4666547742%_
                                           (cons _%lp-hd4666447739%_
                                                 _%body4666647732%_))))
                                      (let ((_%body4666747745%_
                                             (reverse _%body4666647732%_)))
                                        (let ((_%L47749%_ _%body4666747745%_)
                                              (_%L47751%_ _%hd4665747713%_)
                                              (_%L47752%_ _%hd4665447703%_)
                                              (_%L47753%_ _%hd4665147693%_)
                                              (_%L47754%_ _%hd4664847683%_))
                                          (if (and (gx#identifier? _%L47754%_)
                                                   (gx#identifier? _%L47752%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47752%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47752%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47752%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47752%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47752%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7500375004%_
                                               _%L47749%_
                                               _%L47751%_
                                               _%L47752%_
                                               _%L47753%_
                                               _%L47754%_)
                                              (_%__match7510775108%_
                                               _%e4664347659%_
                                               _%hd4664247663%_
                                               _%tl4664147666%_
                                               _%e4664647669%_
                                               _%hd4664547673%_
                                               _%tl4664447676%_
                                               _%e4664947679%_
                                               _%hd4664847683%_
                                               _%tl4664747686%_
                                               _%e4665247689%_
                                               _%hd4665147693%_
                                               _%tl4665047696%_
                                               _%e4665547699%_
                                               _%hd4665447703%_
                                               _%tl4665347706%_))))))))
                        (_%loop4666247725%_ _%target4665947719%_ '())))))
              (if (gx#stx-pair? _%__stx7500075001%_)
                  (let ((_%e4664347659%_ (gx#syntax-e _%__stx7500075001%_)))
                    (let ((_%tl4664147666%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4664347659%_)))
                          (_%hd4664247663%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4664347659%_))))
                      (if (gx#stx-pair? _%tl4664147666%_)
                          (let ((_%e4664647669%_
                                 (gx#syntax-e _%tl4664147666%_)))
                            (let ((_%tl4664447676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4664647669%_)))
                                  (_%hd4664547673%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4664647669%_))))
                              (if (gx#stx-pair? _%hd4664547673%_)
                                  (let ((_%e4664947679%_
                                         (gx#syntax-e _%hd4664547673%_)))
                                    (let ((_%tl4664747686%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4664947679%_)))
                                          (_%hd4664847683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4664947679%_))))
                                      (if (gx#stx-pair? _%tl4664747686%_)
                                          (let ((_%e4665247689%_
                                                 (gx#syntax-e
                                                  _%tl4664747686%_)))
                                            (let ((_%tl4665047696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4665247689%_)))
                                                  (_%hd4665147693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4665247689%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4665047696%_)
                                                  (let ((_%e4665547699%_
                                                         (gx#syntax-e
                                                          _%tl4665047696%_)))
                                                    (let ((_%tl4665347706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4665547699%_)))
                                                          (_%hd4665447703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4665547699%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4665347706%_)
                                                          (let ((_%e4665847709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4665347706%_)))
                    (let ((_%tl4665647716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4665847709%_)))
                          (_%hd4665747713%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4665847709%_))))
                      (if (gx#stx-null? _%tl4665647716%_)
                          (if (gx#stx-pair/null? _%tl4664447676%_)
                              (let ((_%__splice7500575006%_
                                     (gx#syntax-split-splice
                                      _%tl4664447676%_
                                      '0)))
                                (let ((_%tl4666147722%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500575006%_
                                          '1)))
                                      (_%target4665947719%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500575006%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4666147722%_)
                                      (_%__match7507775078%_
                                       _%e4664347659%_
                                       _%hd4664247663%_
                                       _%tl4664147666%_
                                       _%e4664647669%_
                                       _%hd4664547673%_
                                       _%tl4664447676%_
                                       _%e4664947679%_
                                       _%hd4664847683%_
                                       _%tl4664747686%_
                                       _%e4665247689%_
                                       _%hd4665147693%_
                                       _%tl4665047696%_
                                       _%e4665547699%_
                                       _%hd4665447703%_
                                       _%tl4665347706%_
                                       _%e4665847709%_
                                       _%hd4665747713%_
                                       _%tl4665647716%_
                                       _%__splice7500575006%_
                                       _%target4665947719%_
                                       _%tl4666147722%_)
                                      (if (gx#stx-pair? _%hd4664847683%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4664847683%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))))
                              (if (gx#stx-pair? _%hd4664847683%_)
                                  (let ((_%e4681246964%_
                                         (gx#syntax-e _%hd4664847683%_)))
                                    (let ((_%tl4681046971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4681246964%_)))
                                          (_%hd4681146968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4681246964%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                          (if (gx#identifier? _%hd4665447703%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80185_|
                                   _%hd4665447703%_)
                                  (if (gx#stx-pair? _%tl4665647716%_)
                                      (let ((_%e4669447543%_
                                             (gx#syntax-e _%tl4665647716%_)))
                                        (let ((_%tl4669247550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4669447543%_)))
                                              (_%hd4669347547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4669447543%_))))
                                          (if (gx#stx-pair? _%tl4669247550%_)
                                              (let ((_%e4669747553%_
                                                     (gx#syntax-e
                                                      _%tl4669247550%_)))
                                                (let ((_%tl4669547560%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4669747553%_)))
                                                      (_%hd4669647557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4669747553%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4669547560%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4664447676%_)
                                                          (let ((_%__splice7500975010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4664447676%_ '0)))
                    (let ((_%tl4670047566%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500975010%_ '1)))
                          (_%target4669847563%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500975010%_ '0))))
                      (if (gx#stx-null? _%tl4670047566%_)
                          (_%__match7513975140%_
                           _%e4664347659%_
                           _%hd4664247663%_
                           _%tl4664147666%_
                           _%e4664647669%_
                           _%hd4664547673%_
                           _%tl4664447676%_
                           _%e4664947679%_
                           _%hd4664847683%_
                           _%tl4664747686%_
                           _%e4665247689%_
                           _%hd4665147693%_
                           _%tl4665047696%_
                           _%e4665547699%_
                           _%hd4665447703%_
                           _%tl4665347706%_
                           _%e4665847709%_
                           _%hd4665747713%_
                           _%tl4665647716%_
                           _%e4669447543%_
                           _%hd4669347547%_
                           _%tl4669247550%_
                           _%e4669747553%_
                           _%hd4669647557%_
                           _%tl4669547560%_
                           _%__splice7500975010%_
                           _%target4669847563%_
                           _%tl4670047566%_)
                          (if (gx#stx-pair? _%hd4664847683%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4664847683%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_))))))
                  (if (gx#stx-pair? _%hd4664847683%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
              (if (gx#stx-pair? _%hd4664847683%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4664447676%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4664447676%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4664347659%_
                                   _%hd4664247663%_
                                   _%tl4664147666%_
                                   _%e4664647669%_
                                   _%hd4664547673%_
                                   _%tl4664447676%_
                                   _%e4664947679%_
                                   _%hd4664847683%_
                                   _%tl4664747686%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4665147693%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80184_|
                                                       _%hd4665147693%_)
                                                      (if (gx#stx-null?
                                                           _%tl4669247550%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4664447676%_)
                                                              (let ((_%__splice7502175022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4664447676%_ '0)))
                        (let ((_%tl4679047119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502175022%_ '1)))
                              (_%target4678847116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502175022%_ '0))))
                          (if (gx#stx-null? _%tl4679047119%_)
                              (_%__match7527975280%_
                               _%e4664347659%_
                               _%hd4664247663%_
                               _%tl4664147666%_
                               _%e4664647669%_
                               _%hd4664547673%_
                               _%tl4664447676%_
                               _%e4664947679%_
                               _%hd4664847683%_
                               _%tl4664747686%_
                               _%e4665247689%_
                               _%hd4665147693%_
                               _%tl4665047696%_
                               _%e4665547699%_
                               _%hd4665447703%_
                               _%tl4665347706%_
                               _%e4665847709%_
                               _%hd4665747713%_
                               _%tl4665647716%_
                               _%e4669447543%_
                               _%hd4669347547%_
                               _%tl4669247550%_
                               _%__splice7502175022%_
                               _%target4678847116%_
                               _%tl4679047119%_)
                              (if (gx#stx-pair? _%hd4664847683%_)
                                  (let ((_%e4681246964%_
                                         (gx#syntax-e _%hd4664847683%_)))
                                    (let ((_%tl4681046971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4681246964%_)))
                                          (_%hd4681146968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4681246964%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))))
                      (if (gx#stx-pair? _%hd4664847683%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4664847683%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                  (if (gx#stx-pair? _%hd4664847683%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (if (gx#stx-pair/null? _%tl4664447676%_)
                              (let ((_%__splice7502575026%_
                                     (gx#syntax-split-splice
                                      _%tl4664447676%_
                                      '0)))
                                (let ((_%tl4681546977%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '1)))
                                      (_%target4681346974%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502575026%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4681546977%_)
                                      (_%__match7531175312%_
                                       _%e4664347659%_
                                       _%hd4664247663%_
                                       _%tl4664147666%_
                                       _%e4664647669%_
                                       _%hd4664547673%_
                                       _%tl4664447676%_
                                       _%e4664947679%_
                                       _%hd4664847683%_
                                       _%tl4664747686%_
                                       _%e4681246964%_
                                       _%hd4681146968%_
                                       _%tl4681046971%_
                                       _%__splice7502575026%_
                                       _%target4681346974%_
                                       _%tl4681546977%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
              (if (gx#stx-pair? _%hd4664847683%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4664447676%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4664447676%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4664347659%_
                                   _%hd4664247663%_
                                   _%tl4664147666%_
                                   _%e4664647669%_
                                   _%hd4664547673%_
                                   _%tl4664447676%_
                                   _%e4664947679%_
                                   _%hd4664847683%_
                                   _%tl4664747686%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4664847683%_)
                                                      (let ((_%e4681246964%_
                                                             (gx#syntax-e
                                                              _%hd4664847683%_)))
                                                        (let ((_%tl4681046971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4681246964%_)))
                      (_%hd4681146968%_
                       (let () (declare (not safe)) (##car _%e4681246964%_))))
                  (if (gx#stx-pair/null? _%tl4664447676%_)
                      (let ((_%__splice7502575026%_
                             (gx#syntax-split-splice _%tl4664447676%_ '0)))
                        (let ((_%tl4681546977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '1)))
                              (_%target4681346974%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '0))))
                          (if (gx#stx-null? _%tl4681546977%_)
                              (_%__match7531175312%_
                               _%e4664347659%_
                               _%hd4664247663%_
                               _%tl4664147666%_
                               _%e4664647669%_
                               _%hd4664547673%_
                               _%tl4664447676%_
                               _%e4664947679%_
                               _%hd4664847683%_
                               _%tl4664747686%_
                               _%e4681246964%_
                               _%hd4681146968%_
                               _%tl4681046971%_
                               _%__splice7502575026%_
                               _%target4681346974%_
                               _%tl4681546977%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4664847683%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4664847683%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664447676%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664447676%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4664347659%_
                                                           _%hd4664247663%_
                                                           _%tl4664147666%_
                                                           _%e4664647669%_
                                                           _%hd4664547673%_
                                                           _%tl4664447676%_
                                                           _%e4664947679%_
                                                           _%hd4664847683%_
                                                           _%tl4664747686%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                  (if (gx#identifier? _%hd4665147693%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80184_|
                                           _%hd4665147693%_)
                                          (if (gx#stx-pair? _%tl4665647716%_)
                                              (let ((_%e4678747106%_
                                                     (gx#syntax-e
                                                      _%tl4665647716%_)))
                                                (let ((_%tl4678547113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4678747106%_)))
                                                      (_%hd4678647110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4678747106%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4678547113%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4664447676%_)
                                                          (let ((_%__splice7502175022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4664447676%_ '0)))
                    (let ((_%tl4679047119%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502175022%_ '1)))
                          (_%target4678847116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502175022%_ '0))))
                      (if (gx#stx-null? _%tl4679047119%_)
                          (_%__match7527975280%_
                           _%e4664347659%_
                           _%hd4664247663%_
                           _%tl4664147666%_
                           _%e4664647669%_
                           _%hd4664547673%_
                           _%tl4664447676%_
                           _%e4664947679%_
                           _%hd4664847683%_
                           _%tl4664747686%_
                           _%e4665247689%_
                           _%hd4665147693%_
                           _%tl4665047696%_
                           _%e4665547699%_
                           _%hd4665447703%_
                           _%tl4665347706%_
                           _%e4665847709%_
                           _%hd4665747713%_
                           _%tl4665647716%_
                           _%e4678747106%_
                           _%hd4678647110%_
                           _%tl4678547113%_
                           _%__splice7502175022%_
                           _%target4678847116%_
                           _%tl4679047119%_)
                          (if (gx#stx-pair? _%hd4664847683%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4664847683%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_))))))
                  (if (gx#stx-pair? _%hd4664847683%_)
                      (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                        (let ((_%tl4681046971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4681246964%_)))
                              (_%hd4681146968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4681246964%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
              (if (gx#stx-pair? _%hd4664847683%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (if (gx#stx-pair/null? _%tl4664447676%_)
                          (let ((_%__splice7502575026%_
                                 (gx#syntax-split-splice _%tl4664447676%_ '0)))
                            (let ((_%tl4681546977%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502575026%_ '1)))
                                  (_%target4681346974%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502575026%_
                                      '0))))
                              (if (gx#stx-null? _%tl4681546977%_)
                                  (_%__match7531175312%_
                                   _%e4664347659%_
                                   _%hd4664247663%_
                                   _%tl4664147666%_
                                   _%e4664647669%_
                                   _%hd4664547673%_
                                   _%tl4664447676%_
                                   _%e4664947679%_
                                   _%hd4664847683%_
                                   _%tl4664747686%_
                                   _%e4681246964%_
                                   _%hd4681146968%_
                                   _%tl4681046971%_
                                   _%__splice7502575026%_
                                   _%target4681346974%_
                                   _%tl4681546977%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4664847683%_)
                                                  (let ((_%e4681246964%_
                                                         (gx#syntax-e
                                                          _%hd4664847683%_)))
                                                    (let ((_%tl4681046971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4681246964%_)))
                                                          (_%hd4681146968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4681246964%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4664447676%_)
                                                          (let ((_%__splice7502575026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4664447676%_ '0)))
                    (let ((_%tl4681546977%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '1)))
                          (_%target4681346974%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7502575026%_ '0))))
                      (if (gx#stx-null? _%tl4681546977%_)
                          (_%__match7531175312%_
                           _%e4664347659%_
                           _%hd4664247663%_
                           _%tl4664147666%_
                           _%e4664647669%_
                           _%hd4664547673%_
                           _%tl4664447676%_
                           _%e4664947679%_
                           _%hd4664847683%_
                           _%tl4664747686%_
                           _%e4681246964%_
                           _%hd4681146968%_
                           _%tl4681046971%_
                           _%__splice7502575026%_
                           _%target4681346974%_
                           _%tl4681546977%_)
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_))))
                                          (if (gx#stx-pair? _%hd4664847683%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4664847683%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447676%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447676%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4664347659%_
                       _%hd4664247663%_
                       _%tl4664147666%_
                       _%e4664647669%_
                       _%hd4664547673%_
                       _%tl4664447676%_
                       _%e4664947679%_
                       _%hd4664847683%_
                       _%tl4664747686%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                      (if (gx#stx-pair? _%hd4664847683%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4664847683%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664447676%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664447676%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4664347659%_
                                                           _%hd4664247663%_
                                                           _%tl4664147666%_
                                                           _%e4664647669%_
                                                           _%hd4664547673%_
                                                           _%tl4664447676%_
                                                           _%e4664947679%_
                                                           _%hd4664847683%_
                                                           _%tl4664747686%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                              (if (gx#identifier? _%hd4665147693%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80184_|
                                       _%hd4665147693%_)
                                      (if (gx#stx-pair? _%tl4665647716%_)
                                          (let ((_%e4678747106%_
                                                 (gx#syntax-e
                                                  _%tl4665647716%_)))
                                            (let ((_%tl4678547113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4678747106%_)))
                                                  (_%hd4678647110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4678747106%_))))
                                              (if (gx#stx-null?
                                                   _%tl4678547113%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447676%_)
                                                      (let ((_%__splice7502175022%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447676%_
                                                              '0)))
                                                        (let ((_%tl4679047119%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502175022%_ '1)))
                      (_%target4678847116%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502175022%_ '0))))
                  (if (gx#stx-null? _%tl4679047119%_)
                      (_%__match7527975280%_
                       _%e4664347659%_
                       _%hd4664247663%_
                       _%tl4664147666%_
                       _%e4664647669%_
                       _%hd4664547673%_
                       _%tl4664447676%_
                       _%e4664947679%_
                       _%hd4664847683%_
                       _%tl4664747686%_
                       _%e4665247689%_
                       _%hd4665147693%_
                       _%tl4665047696%_
                       _%e4665547699%_
                       _%hd4665447703%_
                       _%tl4665347706%_
                       _%e4665847709%_
                       _%hd4665747713%_
                       _%tl4665647716%_
                       _%e4678747106%_
                       _%hd4678647110%_
                       _%tl4678547113%_
                       _%__splice7502175022%_
                       _%target4678847116%_
                       _%tl4679047119%_)
                      (if (gx#stx-pair? _%hd4664847683%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4664847683%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                          (let () (declare (not safe)) (_%g4663446843%_))))))
              (if (gx#stx-pair? _%hd4664847683%_)
                  (let ((_%e4681246964%_ (gx#syntax-e _%hd4664847683%_)))
                    (let ((_%tl4681046971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4681246964%_)))
                          (_%hd4681146968%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4681246964%_))))
                      (let () (declare (not safe)) (_%g4663446843%_))))
                  (let () (declare (not safe)) (_%g4663446843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4664847683%_)
                                                      (let ((_%e4681246964%_
                                                             (gx#syntax-e
                                                              _%hd4664847683%_)))
                                                        (let ((_%tl4681046971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4681246964%_)))
                      (_%hd4681146968%_
                       (let () (declare (not safe)) (##car _%e4681246964%_))))
                  (if (gx#stx-pair/null? _%tl4664447676%_)
                      (let ((_%__splice7502575026%_
                             (gx#syntax-split-splice _%tl4664447676%_ '0)))
                        (let ((_%tl4681546977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '1)))
                              (_%target4681346974%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '0))))
                          (if (gx#stx-null? _%tl4681546977%_)
                              (_%__match7531175312%_
                               _%e4664347659%_
                               _%hd4664247663%_
                               _%tl4664147666%_
                               _%e4664647669%_
                               _%hd4664547673%_
                               _%tl4664447676%_
                               _%e4664947679%_
                               _%hd4664847683%_
                               _%tl4664747686%_
                               _%e4681246964%_
                               _%hd4681146968%_
                               _%tl4681046971%_
                               _%__splice7502575026%_
                               _%target4681346974%_
                               _%tl4681546977%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4664847683%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4664847683%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447676%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447676%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4664347659%_
                       _%hd4664247663%_
                       _%tl4664147666%_
                       _%e4664647669%_
                       _%hd4664547673%_
                       _%tl4664447676%_
                       _%e4664947679%_
                       _%hd4664847683%_
                       _%tl4664747686%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))
                                      (if (gx#stx-pair? _%hd4664847683%_)
                                          (let ((_%e4681246964%_
                                                 (gx#syntax-e
                                                  _%hd4664847683%_)))
                                            (let ((_%tl4681046971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4681246964%_)))
                                                  (_%hd4681146968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4681246964%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4664447676%_)
                                                  (let ((_%__splice7502575026%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664447676%_
                                                          '0)))
                                                    (let ((_%tl4681546977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '1)))
                                                          (_%target4681346974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7502575026%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4681546977%_)
                                                          (_%__match7531175312%_
                                                           _%e4664347659%_
                                                           _%hd4664247663%_
                                                           _%tl4664147666%_
                                                           _%e4664647669%_
                                                           _%hd4664547673%_
                                                           _%tl4664447676%_
                                                           _%e4664947679%_
                                                           _%hd4664847683%_
                                                           _%tl4664747686%_
                                                           _%e4681246964%_
                                                           _%hd4681146968%_
                                                           _%tl4681046971%_
                                                           _%__splice7502575026%_
                                                           _%target4681346974%_
                                                           _%tl4681546977%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446843%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                  (if (gx#stx-pair? _%hd4664847683%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4664847683%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4664447676%_)
                                              (let ((_%__splice7502575026%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664447676%_
                                                      '0)))
                                                (let ((_%tl4681546977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '1)))
                                                      (_%target4681346974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7502575026%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4681546977%_)
                                                      (_%__match7531175312%_
                                                       _%e4664347659%_
                                                       _%hd4664247663%_
                                                       _%tl4664147666%_
                                                       _%e4664647669%_
                                                       _%hd4664547673%_
                                                       _%tl4664447676%_
                                                       _%e4664947679%_
                                                       _%hd4664847683%_
                                                       _%tl4664747686%_
                                                       _%e4681246964%_
                                                       _%hd4681146968%_
                                                       _%tl4681046971%_
                                                       _%__splice7502575026%_
                                                       _%target4681346974%_
                                                       _%tl4681546977%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446843%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))))
                  (if (gx#stx-null? _%tl4665347706%_)
                      (if (gx#stx-pair/null? _%tl4664447676%_)
                          (let ((_%__splice7501375014%_
                                 (gx#syntax-split-splice _%tl4664447676%_ '0)))
                            (let ((_%tl4672847383%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7501375014%_ '1)))
                                  (_%target4672647380%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7501375014%_
                                      '0))))
                              (if (gx#stx-null? _%tl4672847383%_)
                                  (_%__match7517975180%_
                                   _%e4664347659%_
                                   _%hd4664247663%_
                                   _%tl4664147666%_
                                   _%e4664647669%_
                                   _%hd4664547673%_
                                   _%tl4664447676%_
                                   _%e4664947679%_
                                   _%hd4664847683%_
                                   _%tl4664747686%_
                                   _%e4665247689%_
                                   _%hd4665147693%_
                                   _%tl4665047696%_
                                   _%e4665547699%_
                                   _%hd4665447703%_
                                   _%tl4665347706%_
                                   _%__splice7501375014%_
                                   _%target4672647380%_
                                   _%tl4672847383%_)
                                  (if (gx#stx-pair? _%hd4664847683%_)
                                      (let ((_%e4681246964%_
                                             (gx#syntax-e _%hd4664847683%_)))
                                        (let ((_%tl4681046971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681246964%_)))
                                              (_%hd4681146968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681246964%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))
                          (if (gx#stx-pair? _%hd4664847683%_)
                              (let ((_%e4681246964%_
                                     (gx#syntax-e _%hd4664847683%_)))
                                (let ((_%tl4681046971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4681246964%_)))
                                      (_%hd4681146968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4681246964%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_))))
                              (let () (declare (not safe)) (_%g4663446843%_))))
                      (if (gx#stx-pair? _%hd4664847683%_)
                          (let ((_%e4681246964%_
                                 (gx#syntax-e _%hd4664847683%_)))
                            (let ((_%tl4681046971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4681246964%_)))
                                  (_%hd4681146968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4681246964%_))))
                              (if (gx#stx-pair/null? _%tl4664447676%_)
                                  (let ((_%__splice7502575026%_
                                         (gx#syntax-split-splice
                                          _%tl4664447676%_
                                          '0)))
                                    (let ((_%tl4681546977%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '1)))
                                          (_%target4681346974%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502575026%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4681546977%_)
                                          (_%__match7531175312%_
                                           _%e4664347659%_
                                           _%hd4664247663%_
                                           _%tl4664147666%_
                                           _%e4664647669%_
                                           _%hd4664547673%_
                                           _%tl4664447676%_
                                           _%e4664947679%_
                                           _%hd4664847683%_
                                           _%tl4664747686%_
                                           _%e4681246964%_
                                           _%hd4681146968%_
                                           _%tl4681046971%_
                                           _%__splice7502575026%_
                                           _%target4681346974%_
                                           _%tl4681546977%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446843%_)))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4664847683%_)
                                                      (let ((_%e4681246964%_
                                                             (gx#syntax-e
                                                              _%hd4664847683%_)))
                                                        (let ((_%tl4681046971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4681246964%_)))
                      (_%hd4681146968%_
                       (let () (declare (not safe)) (##car _%e4681246964%_))))
                  (if (gx#stx-pair/null? _%tl4664447676%_)
                      (let ((_%__splice7502575026%_
                             (gx#syntax-split-splice _%tl4664447676%_ '0)))
                        (let ((_%tl4681546977%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '1)))
                              (_%target4681346974%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7502575026%_ '0))))
                          (if (gx#stx-null? _%tl4681546977%_)
                              (_%__match7531175312%_
                               _%e4664347659%_
                               _%hd4664247663%_
                               _%tl4664147666%_
                               _%e4664647669%_
                               _%hd4664547673%_
                               _%tl4664447676%_
                               _%e4664947679%_
                               _%hd4664847683%_
                               _%tl4664747686%_
                               _%e4681246964%_
                               _%hd4681146968%_
                               _%tl4681046971%_
                               _%__splice7502575026%_
                               _%target4681346974%_
                               _%tl4681546977%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446843%_)))))
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4664847683%_)
                                              (let ((_%e4681246964%_
                                                     (gx#syntax-e
                                                      _%hd4664847683%_)))
                                                (let ((_%tl4681046971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4681246964%_)))
                                                      (_%hd4681146968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4681246964%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447676%_)
                                                      (let ((_%__splice7502575026%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447676%_
                                                              '0)))
                                                        (let ((_%tl4681546977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '1)))
                      (_%target4681346974%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7502575026%_ '0))))
                  (if (gx#stx-null? _%tl4681546977%_)
                      (_%__match7531175312%_
                       _%e4664347659%_
                       _%hd4664247663%_
                       _%tl4664147666%_
                       _%e4664647669%_
                       _%hd4664547673%_
                       _%tl4664447676%_
                       _%e4664947679%_
                       _%hd4664847683%_
                       _%tl4664747686%_
                       _%e4681246964%_
                       _%hd4681146968%_
                       _%tl4681046971%_
                       _%__splice7502575026%_
                       _%target4681346974%_
                       _%tl4681546977%_)
                      (let () (declare (not safe)) (_%g4663446843%_)))))
              (let () (declare (not safe)) (_%g4663446843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446843%_))))))
                                  (if (gx#stx-null? _%hd4664547673%_)
                                      (if (gx#stx-pair/null? _%tl4664447676%_)
                                          (let ((_%__splice7502975030%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664447676%_
                                                  '0)))
                                            (let ((_%tl4683146873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502975030%_
                                                      '1)))
                                                  (_%target4682946870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502975030%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4683146873%_)
                                                  (_%__match7533375334%_
                                                   _%e4664347659%_
                                                   _%hd4664247663%_
                                                   _%tl4664147666%_
                                                   _%e4664647669%_
                                                   _%hd4664547673%_
                                                   _%tl4664447676%_
                                                   _%__splice7502975030%_
                                                   _%target4682946870%_
                                                   _%tl4683146873%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446843%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446843%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446843%_))))))
                          (let () (declare (not safe)) (_%g4663446843%_)))))
                  (let () (declare (not safe)) (_%g4663446843%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47817%_)
        (let* ((_%g4782147855%_
                (lambda (_%g4782247851%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4782247851%_)))
               (_%g4782047978%_
                (lambda (_%g4782247859%_)
                  (if (gx#stx-pair? _%g4782247859%_)
                      (let ((_%e4782847862%_ (gx#syntax-e _%g4782247859%_)))
                        (let ((_%hd4782747866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4782847862%_)))
                              (_%tl4782647869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4782847862%_))))
                          (if (gx#stx-pair? _%tl4782647869%_)
                              (let ((_%e4783147872%_
                                     (gx#syntax-e _%tl4782647869%_)))
                                (let ((_%hd4783047876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4783147872%_)))
                                      (_%tl4782947879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4783147872%_))))
                                  (if (gx#stx-pair? _%hd4783047876%_)
                                      (let ((_%e4783447882%_
                                             (gx#syntax-e _%hd4783047876%_)))
                                        (let ((_%hd4783347886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4783447882%_)))
                                              (_%tl4783247889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4783447882%_))))
                                          (if (gx#stx-pair? _%tl4783247889%_)
                                              (let ((_%e4783747892%_
                                                     (gx#syntax-e
                                                      _%tl4783247889%_)))
                                                (let ((_%hd4783647896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4783747892%_)))
                                                      (_%tl4783547899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4783747892%_))))
                                                  (if (gx#identifier?
                                                       _%hd4783647896%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80186_|
                                                           _%hd4783647896%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4783547899%_)
                                                              (let ((_%e4784047902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4783547899%_)))
                        (let ((_%hd4783947906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4784047902%_)))
                              (_%tl4783847909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4784047902%_))))
                          (if (gx#stx-null? _%tl4783847909%_)
                              (if (gx#stx-pair/null? _%tl4782947879%_)
                                  (let ((_g80187_
                                         (gx#syntax-split-splice
                                          _%tl4782947879%_
                                          '0)))
                                    (begin
                                      (let ((_g80188_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80187_)
                                                   (##vector-length _g80187_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80188_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80188_)))
                                      (let ((_%target4784147912%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80187_ 0)))
                                            (_%tl4784347915%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80187_ 1))))
                                        (if (gx#stx-null? _%tl4784347915%_)
                                            (letrec ((_%loop4784447918%_
                                                      (lambda (_%hd4784247922%_
                                                               _%body4784847925%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4784247922%_)
                                                            (let ((_%e4784547928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4784247922%_)))
                      (let ((_%lp-hd4784647932%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4784547928%_)))
                            (_%lp-tl4784747935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4784547928%_))))
                        (_%loop4784447918%_
                         _%lp-tl4784747935%_
                         (cons _%lp-hd4784647932%_ _%body4784847925%_))))
                    (let ((_%body4784947938%_ (reverse _%body4784847925%_)))
                      ((lambda (_%L47942%_ _%L47944%_ _%L47945%_)
                         (if (gx#identifier? _%L47945%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47944%_
                                               (cons _%L47945%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4796947972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4797047975%_)
                            (cons _%g4796947972%_ _%g4797047975%_))
                          '()
                          _%L47942%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47944%_ (cons _%L47945%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4782147855%_ _%g4782247859%_)))
                       _%body4784947938%_
                       _%hd4783947906%_
                       _%hd4783347886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4784447918%_
                                               _%target4784147912%_
                                               '()))
                                            (_%g4782147855%_
                                             _%g4782247859%_)))))
                                  (_%g4782147855%_ _%g4782247859%_))
                              (_%g4782147855%_ _%g4782247859%_))))
                      (_%g4782147855%_ _%g4782247859%_))
                  (_%g4782147855%_ _%g4782247859%_))
              (_%g4782147855%_ _%g4782247859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4782147855%_
                                               _%g4782247859%_))))
                                      (_%g4782147855%_ _%g4782247859%_))))
                              (_%g4782147855%_ _%g4782247859%_))))
                      (_%g4782147855%_ _%g4782247859%_)))))
          (_%g4782047978%_ _%$stx47817%_))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id48029%_)
        (if (gx#identifier? _%id48029%_)
            (let* ((_%str48032%_ (symbol->string (gx#stx-e _%id48029%_)))
                   (_%index4803448036%_ (string-index _%str48032%_ '#\.)))
              (if _%index4803448036%_
                  (let ((_%index48040%_ _%index4803448036%_))
                    (if (let () (declare (not safe)) (##fx> _%index48040%_ '0))
                        (let ((__tmp80189
                               (ormap string-empty?
                                      (string-split _%str48032%_ '#\.))))
                          (declare (not safe))
                          (not __tmp80189))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx48022%_ _%id48024%_)
        (let ((_%parts48026%_
               (string-split (symbol->string (gx#stx-e _%id48024%_)) '#\.)))
          (if (find string-empty? _%parts48026%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx48022%_
               _%id48024%_)
              (cons (gx#stx-identifier _%id48024%_ (car _%parts48026%_))
                    (map string->symbol (cdr _%parts48026%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx48003%_ _%klass-or-id48005%_ _%slot48006%_)
        (let* ((_%klass48008%_
                (if (gx#identifier? _%klass-or-id48005%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx48003%_
                       _%klass-or-id48005%_))
                    _%klass-or-id48005%_))
               (_%accessors48011%_
                (let ((__obj80014 _%klass48008%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80014
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80014 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj80014
                       'unchecked-accessors))))
               (_%$e48016%_ (assgetq _%slot48006%_ _%accessors48011%_)))
          (if _%$e48016%_
              _%$e48016%_
              (let ()
                (gx#raise-syntax-error
                 '#f
                 '"no accessor for slot"
                 _%stx48003%_
                 _%klass48008%_
                 _%slot48006%_))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47983%_
               _%klass-or-id47985%_
               _%slot47986%_
               _%checked?47987%_)
        (let* ((_%klass47989%_
                (if (gx#identifier? _%klass-or-id47985%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47983%_
                       _%klass-or-id47985%_))
                    _%klass-or-id47985%_))
               (_%mutators47992%_
                (if _%checked?47987%_
                    (let ((__obj80015 _%klass47989%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80015
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80015 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80015
                           'mutators)))
                    (let ((__obj80016 _%klass47989%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80016
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80016 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80016
                           'unchecked-mutators)))))
               (_%$e47997%_ (assgetq _%slot47986%_ _%mutators47992%_)))
          (if _%$e47997%_
              _%$e47997%_
              (let ()
                (gx#raise-syntax-error
                 '#f
                 '"no mutator for slot"
                 _%stx47983%_
                 _%klass47989%_
                 _%slot47986%_))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48043%_)
        (letrec ((_%expand-body48046%_
                  (lambda (_%klass48615%_
                           _%var48617%_
                           _%Type48618%_
                           _%body48619%_
                           _%checked?48620%_)
                    (let* ((_%g4862248666%_
                            (lambda (_%g4862348662%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4862348662%_)))
                           (_%g4862148823%_
                            (lambda (_%g4862348670%_)
                              (if (gx#stx-pair? _%g4862348670%_)
                                  (let ((_%e4863348673%_
                                         (gx#syntax-e _%g4862348670%_)))
                                    (let ((_%hd4863248677%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4863348673%_)))
                                          (_%tl4863148680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4863348673%_))))
                                      (if (gx#stx-pair? _%tl4863148680%_)
                                          (let ((_%e4863648683%_
                                                 (gx#syntax-e
                                                  _%tl4863148680%_)))
                                            (let ((_%hd4863548687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4863648683%_)))
                                                  (_%tl4863448690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4863648683%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4863448690%_)
                                                  (let ((_%e4863948693%_
                                                         (gx#syntax-e
                                                          _%tl4863448690%_)))
                                                    (let ((_%hd4863848697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4863948693%_)))
                                                          (_%tl4863748700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4863948693%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4863748700%_)
                                                          (let ((_%e4864248703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4863748700%_)))
                    (let ((_%hd4864148707%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4864248703%_)))
                          (_%tl4864048710%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4864248703%_))))
                      (if (gx#stx-pair? _%tl4864048710%_)
                          (let ((_%e4864548713%_
                                 (gx#syntax-e _%tl4864048710%_)))
                            (let ((_%hd4864448717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4864548713%_)))
                                  (_%tl4864348720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4864548713%_))))
                              (if (gx#stx-pair? _%tl4864348720%_)
                                  (let ((_%e4864848723%_
                                         (gx#syntax-e _%tl4864348720%_)))
                                    (let ((_%hd4864748727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4864848723%_)))
                                          (_%tl4864648730%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4864848723%_))))
                                      (if (gx#stx-pair? _%tl4864648730%_)
                                          (let ((_%e4865148733%_
                                                 (gx#syntax-e
                                                  _%tl4864648730%_)))
                                            (let ((_%hd4865048737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4865148733%_)))
                                                  (_%tl4864948740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4865148733%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4865048737%_)
                                                  (let ((_g80190_
                                                         (gx#syntax-split-splice
                                                          _%hd4865048737%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80191_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80190_)
                           (##vector-length _g80190_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80191_ 2)))
                    (error "Context expects 2 values" _g80191_)))
              (let ((_%target4865248743%_
                     (let () (declare (not safe)) (##vector-ref _g80190_ 0)))
                    (_%tl4865448746%_
                     (let () (declare (not safe)) (##vector-ref _g80190_ 1))))
                (if (gx#stx-null? _%tl4865448746%_)
                    (letrec ((_%loop4865548749%_
                              (lambda (_%hd4865348753%_ _%body4865948756%_)
                                (if (gx#stx-pair? _%hd4865348753%_)
                                    (let ((_%e4865648759%_
                                           (gx#syntax-e _%hd4865348753%_)))
                                      (let ((_%lp-hd4865748763%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4865648759%_)))
                                            (_%lp-tl4865848766%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4865648759%_))))
                                        (_%loop4865548749%_
                                         _%lp-tl4865848766%_
                                         (cons _%lp-hd4865748763%_
                                               _%body4865948756%_))))
                                    (let ((_%body4866048769%_
                                           (reverse _%body4865948756%_)))
                                      (if (gx#stx-null? _%tl4864948740%_)
                                          ((lambda (_%L48773%_
                                                    _%L48775%_
                                                    _%L48776%_
                                                    _%L48777%_
                                                    _%L48778%_
                                                    _%L48779%_
                                                    _%L48780%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L48778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L48779%_ '()))
                                           (cons _%L48778%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L48780%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L48778%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L48777%_ '()))
                                 (cons _%L48776%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L48775%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4881448817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4881548820%_)
                        (cons _%g4881448817%_ _%g4881548820%_))
                      '()
                      _%L48773%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4866048769%_
                                           _%hd4864748727%_
                                           _%hd4864448717%_
                                           _%hd4864148707%_
                                           _%hd4863848697%_
                                           _%hd4863548687%_
                                           _%hd4863248677%_)
                                          (_%g4862248666%_
                                           _%g4862348670%_)))))))
                      (_%loop4865548749%_ _%target4865248743%_ '()))
                    (_%g4862248666%_ _%g4862348670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4862248666%_
                                                   _%g4862348670%_))))
                                          (_%g4862248666%_ _%g4862348670%_))))
                                  (_%g4862248666%_ _%g4862348670%_))))
                          (_%g4862248666%_ _%g4862348670%_))))
                  (_%g4862248666%_ _%g4862348670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4862248666%_
                                                   _%g4862348670%_))))
                                          (_%g4862248666%_ _%g4862348670%_))))
                                  (_%g4862248666%_ _%g4862348670%_)))))
                      (_%g4862148823%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj80017 _%klass48615%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80017
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80017
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj80017
                                    'type-descriptor)))
                             _%var48617%_
                             _%klass48615%_
                             _%checked?48620%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body48619%_)))))
                 (_%expand48048%_
                  (lambda (_%var48512%_
                           _%Type48514%_
                           _%body48515%_
                           _%checked?48516%_
                           _%maybe?48517%_)
                    (let* ((_%klass48519%_
                            (gx#syntax-local-value _%Type48514%_ false))
                           (_%expr-body48522%_
                            (_%expand-body48046%_
                             _%klass48519%_
                             _%var48512%_
                             _%Type48514%_
                             _%body48515%_
                             _%checked?48516%_)))
                      (if _%checked?48516%_
                          (let* ((_%g4852748546%_
                                  (lambda (_%g4852848542%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4852848542%_)))
                                 (_%g4852648608%_
                                  (lambda (_%g4852848550%_)
                                    (if (gx#stx-pair? _%g4852848550%_)
                                        (let ((_%e4853448553%_
                                               (gx#syntax-e _%g4852848550%_)))
                                          (let ((_%hd4853348557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4853448553%_)))
                                                (_%tl4853248560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4853448553%_))))
                                            (if (gx#stx-pair? _%tl4853248560%_)
                                                (let ((_%e4853748563%_
                                                       (gx#syntax-e
                                                        _%tl4853248560%_)))
                                                  (let ((_%hd4853648567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4853748563%_)))
                                                        (_%tl4853548570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4853748563%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4853548570%_)
                                                        (let ((_%e4854048573%_
                                                               (gx#syntax-e
                                                                _%tl4853548570%_)))
                                                          (let ((_%hd4853948577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4854048573%_)))
                        (_%tl4853848580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4854048573%_))))
                    (if (gx#stx-null? _%tl4853848580%_)
                        ((lambda (_%L48583%_ _%L48585%_ _%L48586%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L48585%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L48586%_ '())))
                                         (cons _%L48583%_ '())))))
                         _%hd4853948577%_
                         _%hd4853648567%_
                         _%hd4853348557%_)
                        (_%g4852748546%_ _%g4852848550%_))))
                (_%g4852748546%_ _%g4852848550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4852748546%_
                                                 _%g4852848550%_))))
                                        (_%g4852748546%_ _%g4852848550%_)))))
                            (_%g4852648608%_
                             (list (let ((_%instance?48612%_
                                          (let ((__obj80018 _%klass48519%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80018
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80018
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80018
                                                 'predicate)))))
                                     (if _%maybe?48517%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48612%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48612%_))
                                   _%var48512%_
                                   _%expr-body48522%_)))
                          _%expr-body48522%_)))))
          (let* ((_%__stx7533675337%_ _%stx48043%_)
                 (_%g4805248140%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7533675337%_))))
            (let ((_%__kont7533975340%_
                   (lambda (_%L48473%_ _%L48475%_ _%L48476%_)
                     (_%expand48048%_
                      _%L48476%_
                      _%L48475%_
                      (foldr (lambda (_%g4849948502%_ _%g4850048505%_)
                               (cons _%g4849948502%_ _%g4850048505%_))
                             '()
                             _%L48473%_)
                      '#t
                      '#f)))
                  (_%__kont7534375344%_
                   (lambda (_%L48351%_ _%L48353%_ _%L48354%_)
                     (_%expand48048%_
                      _%L48354%_
                      _%L48353%_
                      (foldr (lambda (_%g4837748380%_ _%g4837848383%_)
                               (cons _%g4837748380%_ _%g4837848383%_))
                             '()
                             _%L48351%_)
                      '#t
                      '#t)))
                  (_%__kont7534775348%_
                   (lambda (_%L48227%_ _%L48229%_ _%L48230%_)
                     (_%expand48048%_
                      _%L48230%_
                      _%L48229%_
                      (foldr (lambda (_%g4825548258%_ _%g4825648261%_)
                               (cons _%g4825548258%_ _%g4825648261%_))
                             '()
                             _%L48227%_)
                      '#f
                      '#f))))
              (let* ((_%__match7548375484%_
                      (lambda (_%e4811348147%_
                               _%hd4811248151%_
                               _%tl4811148154%_
                               _%e4811648157%_
                               _%hd4811548161%_
                               _%tl4811448164%_
                               _%e4811948167%_
                               _%hd4811848171%_
                               _%tl4811748174%_
                               _%e4812248177%_
                               _%hd4812148181%_
                               _%tl4812048184%_
                               _%e4812548187%_
                               _%hd4812448191%_
                               _%tl4812348194%_
                               _%__splice7534975350%_
                               _%target4812648197%_
                               _%tl4812848200%_)
                        (letrec ((_%loop4812948203%_
                                  (lambda (_%hd4812748207%_ _%body4813348210%_)
                                    (if (gx#stx-pair? _%hd4812748207%_)
                                        (let ((_%e4813048213%_
                                               (gx#syntax-e _%hd4812748207%_)))
                                          (let ((_%lp-tl4813248220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4813048213%_)))
                                                (_%lp-hd4813148217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4813048213%_))))
                                            (_%loop4812948203%_
                                             _%lp-tl4813248220%_
                                             (cons _%lp-hd4813148217%_
                                                   _%body4813348210%_))))
                                        (let ((_%body4813448223%_
                                               (reverse _%body4813348210%_)))
                                          (let ((_%L48227%_ _%body4813448223%_)
                                                (_%L48229%_ _%hd4812448191%_)
                                                (_%L48230%_ _%hd4811848171%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48229%_))
                                                (_%__kont7534775348%_
                                                 _%L48227%_
                                                 _%L48229%_
                                                 _%L48230%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805248140%_)))))))))
                          (_%loop4812948203%_ _%target4812648197%_ '()))))
                     (_%__match7543975440%_
                      (lambda (_%e4808648271%_
                               _%hd4808548275%_
                               _%tl4808448278%_
                               _%e4808948281%_
                               _%hd4808848285%_
                               _%tl4808748288%_
                               _%e4809248291%_
                               _%hd4809148295%_
                               _%tl4809048298%_
                               _%e4809548301%_
                               _%hd4809448305%_
                               _%tl4809348308%_
                               _%e4809848311%_
                               _%hd4809748315%_
                               _%tl4809648318%_
                               _%__splice7534575346%_
                               _%target4809948321%_
                               _%tl4810148324%_)
                        (letrec ((_%loop4810248327%_
                                  (lambda (_%hd4810048331%_ _%body4810648334%_)
                                    (if (gx#stx-pair? _%hd4810048331%_)
                                        (let ((_%e4810348337%_
                                               (gx#syntax-e _%hd4810048331%_)))
                                          (let ((_%lp-tl4810548344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4810348337%_)))
                                                (_%lp-hd4810448341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4810348337%_))))
                                            (_%loop4810248327%_
                                             _%lp-tl4810548344%_
                                             (cons _%lp-hd4810448341%_
                                                   _%body4810648334%_))))
                                        (let ((_%body4810748347%_
                                               (reverse _%body4810648334%_)))
                                          (let ((_%L48351%_ _%body4810748347%_)
                                                (_%L48353%_ _%hd4809748315%_)
                                                (_%L48354%_ _%hd4809148295%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48353%_))
                                                (_%__kont7534375344%_
                                                 _%L48351%_
                                                 _%L48353%_
                                                 _%L48354%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805248140%_)))))))))
                          (_%loop4810248327%_ _%target4809948321%_ '()))))
                     (_%__match7539575396%_
                      (lambda (_%e4805948393%_
                               _%hd4805848397%_
                               _%tl4805748400%_
                               _%e4806248403%_
                               _%hd4806148407%_
                               _%tl4806048410%_
                               _%e4806548413%_
                               _%hd4806448417%_
                               _%tl4806348420%_
                               _%e4806848423%_
                               _%hd4806748427%_
                               _%tl4806648430%_
                               _%e4807148433%_
                               _%hd4807048437%_
                               _%tl4806948440%_
                               _%__splice7534175342%_
                               _%target4807248443%_
                               _%tl4807448446%_)
                        (letrec ((_%loop4807548449%_
                                  (lambda (_%hd4807348453%_ _%body4807948456%_)
                                    (if (gx#stx-pair? _%hd4807348453%_)
                                        (let ((_%e4807648459%_
                                               (gx#syntax-e _%hd4807348453%_)))
                                          (let ((_%lp-tl4807848466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4807648459%_)))
                                                (_%lp-hd4807748463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4807648459%_))))
                                            (_%loop4807548449%_
                                             _%lp-tl4807848466%_
                                             (cons _%lp-hd4807748463%_
                                                   _%body4807948456%_))))
                                        (let ((_%body4808048469%_
                                               (reverse _%body4807948456%_)))
                                          (let ((_%L48473%_ _%body4808048469%_)
                                                (_%L48475%_ _%hd4807048437%_)
                                                (_%L48476%_ _%hd4806448417%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48475%_))
                                                (_%__kont7533975340%_
                                                 _%L48473%_
                                                 _%L48475%_
                                                 _%L48476%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805248140%_)))))))))
                          (_%loop4807548449%_ _%target4807248443%_ '())))))
                (if (gx#stx-pair? _%__stx7533675337%_)
                    (let ((_%e4805948393%_ (gx#syntax-e _%__stx7533675337%_)))
                      (let ((_%tl4805748400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4805948393%_)))
                            (_%hd4805848397%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4805948393%_))))
                        (if (gx#stx-pair? _%tl4805748400%_)
                            (let ((_%e4806248403%_
                                   (gx#syntax-e _%tl4805748400%_)))
                              (let ((_%tl4806048410%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4806248403%_)))
                                    (_%hd4806148407%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4806248403%_))))
                                (if (gx#stx-pair? _%hd4806148407%_)
                                    (let ((_%e4806548413%_
                                           (gx#syntax-e _%hd4806148407%_)))
                                      (let ((_%tl4806348420%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4806548413%_)))
                                            (_%hd4806448417%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4806548413%_))))
                                        (if (gx#stx-pair? _%tl4806348420%_)
                                            (let ((_%e4806848423%_
                                                   (gx#syntax-e
                                                    _%tl4806348420%_)))
                                              (let ((_%tl4806648430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4806848423%_)))
                                                    (_%hd4806748427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4806848423%_))))
                                                (if (gx#identifier?
                                                     _%hd4806748427%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80192_|
                                                         _%hd4806748427%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4806648430%_)
                                                            (let ((_%e4807148433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4806648430%_)))
                      (let ((_%tl4806948440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4807148433%_)))
                            (_%hd4807048437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4807148433%_))))
                        (if (gx#stx-null? _%tl4806948440%_)
                            (if (gx#stx-pair/null? _%tl4806048410%_)
                                (let ((_%__splice7534175342%_
                                       (gx#syntax-split-splice
                                        _%tl4806048410%_
                                        '0)))
                                  (let ((_%tl4807448446%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7534175342%_
                                            '1)))
                                        (_%target4807248443%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7534175342%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4807448446%_)
                                        (_%__match7539575396%_
                                         _%e4805948393%_
                                         _%hd4805848397%_
                                         _%tl4805748400%_
                                         _%e4806248403%_
                                         _%hd4806148407%_
                                         _%tl4806048410%_
                                         _%e4806548413%_
                                         _%hd4806448417%_
                                         _%tl4806348420%_
                                         _%e4806848423%_
                                         _%hd4806748427%_
                                         _%tl4806648430%_
                                         _%e4807148433%_
                                         _%hd4807048437%_
                                         _%tl4806948440%_
                                         _%__splice7534175342%_
                                         _%target4807248443%_
                                         _%tl4807448446%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4805248140%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4805248140%_)))
                            (let () (declare (not safe)) (_%g4805248140%_)))))
                    (let () (declare (not safe)) (_%g4805248140%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80193_|
                     _%hd4806748427%_)
                    (if (gx#stx-pair? _%tl4806648430%_)
                        (let ((_%e4809848311%_ (gx#syntax-e _%tl4806648430%_)))
                          (let ((_%tl4809648318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4809848311%_)))
                                (_%hd4809748315%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4809848311%_))))
                            (if (gx#stx-null? _%tl4809648318%_)
                                (if (gx#stx-pair/null? _%tl4806048410%_)
                                    (let ((_%__splice7534575346%_
                                           (gx#syntax-split-splice
                                            _%tl4806048410%_
                                            '0)))
                                      (let ((_%tl4810148324%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7534575346%_
                                                '1)))
                                            (_%target4809948321%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7534575346%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4810148324%_)
                                            (_%__match7543975440%_
                                             _%e4805948393%_
                                             _%hd4805848397%_
                                             _%tl4805748400%_
                                             _%e4806248403%_
                                             _%hd4806148407%_
                                             _%tl4806048410%_
                                             _%e4806548413%_
                                             _%hd4806448417%_
                                             _%tl4806348420%_
                                             _%e4806848423%_
                                             _%hd4806748427%_
                                             _%tl4806648430%_
                                             _%e4809848311%_
                                             _%hd4809748315%_
                                             _%tl4809648318%_
                                             _%__splice7534575346%_
                                             _%target4809948321%_
                                             _%tl4810148324%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4805248140%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4805248140%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4805248140%_)))))
                        (let () (declare (not safe)) (_%g4805248140%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80194_|
                         _%hd4806748427%_)
                        (if (gx#stx-pair? _%tl4806648430%_)
                            (let ((_%e4812548187%_
                                   (gx#syntax-e _%tl4806648430%_)))
                              (let ((_%tl4812348194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4812548187%_)))
                                    (_%hd4812448191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4812548187%_))))
                                (if (gx#stx-null? _%tl4812348194%_)
                                    (if (gx#stx-pair/null? _%tl4806048410%_)
                                        (let ((_%__splice7534975350%_
                                               (gx#syntax-split-splice
                                                _%tl4806048410%_
                                                '0)))
                                          (let ((_%tl4812848200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7534975350%_
                                                    '1)))
                                                (_%target4812648197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7534975350%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4812848200%_)
                                                (_%__match7548375484%_
                                                 _%e4805948393%_
                                                 _%hd4805848397%_
                                                 _%tl4805748400%_
                                                 _%e4806248403%_
                                                 _%hd4806148407%_
                                                 _%tl4806048410%_
                                                 _%e4806548413%_
                                                 _%hd4806448417%_
                                                 _%tl4806348420%_
                                                 _%e4806848423%_
                                                 _%hd4806748427%_
                                                 _%tl4806648430%_
                                                 _%e4812548187%_
                                                 _%hd4812448191%_
                                                 _%tl4812348194%_
                                                 _%__splice7534975350%_
                                                 _%target4812648197%_
                                                 _%tl4812848200%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4805248140%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4805248140%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4805248140%_)))))
                            (let () (declare (not safe)) (_%g4805248140%_)))
                        (let () (declare (not safe)) (_%g4805248140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4805248140%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4805248140%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4805248140%_)))))
                            (let () (declare (not safe)) (_%g4805248140%_)))))
                    (let () (declare (not safe)) (_%g4805248140%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48831%_)
        (letrec ((_%expand-body48834%_
                  (lambda (_%var49651%_
                           _%Interface49653%_
                           _%body49654%_
                           _%checked?49655%_)
                    (let* ((_%type49657%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx48831%_
                               _%Interface49653%_)))
                           (_%g4966049704%_
                            (lambda (_%g4966149700%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4966149700%_)))
                           (_%g4965949862%_
                            (lambda (_%g4966149708%_)
                              (if (gx#stx-pair? _%g4966149708%_)
                                  (let ((_%e4967149711%_
                                         (gx#syntax-e _%g4966149708%_)))
                                    (let ((_%hd4967049715%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4967149711%_)))
                                          (_%tl4966949718%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4967149711%_))))
                                      (if (gx#stx-pair? _%tl4966949718%_)
                                          (let ((_%e4967449721%_
                                                 (gx#syntax-e
                                                  _%tl4966949718%_)))
                                            (let ((_%hd4967349725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4967449721%_)))
                                                  (_%tl4967249728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4967449721%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4967249728%_)
                                                  (let ((_%e4967749731%_
                                                         (gx#syntax-e
                                                          _%tl4967249728%_)))
                                                    (let ((_%hd4967649735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4967749731%_)))
                                                          (_%tl4967549738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4967749731%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4967549738%_)
                                                          (let ((_%e4968049741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4967549738%_)))
                    (let ((_%hd4967949745%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4968049741%_)))
                          (_%tl4967849748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4968049741%_))))
                      (if (gx#stx-pair? _%tl4967849748%_)
                          (let ((_%e4968349751%_
                                 (gx#syntax-e _%tl4967849748%_)))
                            (let ((_%hd4968249755%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4968349751%_)))
                                  (_%tl4968149758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4968349751%_))))
                              (if (gx#stx-pair? _%tl4968149758%_)
                                  (let ((_%e4968649761%_
                                         (gx#syntax-e _%tl4968149758%_)))
                                    (let ((_%hd4968549765%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4968649761%_)))
                                          (_%tl4968449768%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4968649761%_))))
                                      (if (gx#stx-pair? _%tl4968449768%_)
                                          (let ((_%e4968949771%_
                                                 (gx#syntax-e
                                                  _%tl4968449768%_)))
                                            (let ((_%hd4968849775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4968949771%_)))
                                                  (_%tl4968749778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4968949771%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4968849775%_)
                                                  (let ((_g80195_
                                                         (gx#syntax-split-splice
                                                          _%hd4968849775%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80196_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80195_)
                           (##vector-length _g80195_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80196_ 2)))
                    (error "Context expects 2 values" _g80196_)))
              (let ((_%target4969049781%_
                     (let () (declare (not safe)) (##vector-ref _g80195_ 0)))
                    (_%tl4969249784%_
                     (let () (declare (not safe)) (##vector-ref _g80195_ 1))))
                (if (gx#stx-null? _%tl4969249784%_)
                    (letrec ((_%loop4969349787%_
                              (lambda (_%hd4969149791%_ _%body4969749794%_)
                                (if (gx#stx-pair? _%hd4969149791%_)
                                    (let ((_%e4969449797%_
                                           (gx#syntax-e _%hd4969149791%_)))
                                      (let ((_%lp-hd4969549801%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4969449797%_)))
                                            (_%lp-tl4969649804%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4969449797%_))))
                                        (_%loop4969349787%_
                                         _%lp-tl4969649804%_
                                         (cons _%lp-hd4969549801%_
                                               _%body4969749794%_))))
                                    (let ((_%body4969849807%_
                                           (reverse _%body4969749794%_)))
                                      (if (gx#stx-null? _%tl4968749778%_)
                                          ((lambda (_%L49811%_
                                                    _%L49813%_
                                                    _%L49814%_
                                                    _%L49815%_
                                                    _%L49816%_
                                                    _%L49817%_
                                                    _%L49818%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49816%_ '()))
                                           (cons _%L49815%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49818%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49815%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49817%_ '()))
                                 (cons _%L49814%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49813%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4985349856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4985449859%_)
                        (cons _%g4985349856%_ _%g4985449859%_))
                      '()
                      _%L49811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4969849807%_
                                           _%hd4968549765%_
                                           _%hd4968249755%_
                                           _%hd4967949745%_
                                           _%hd4967649735%_
                                           _%hd4967349725%_
                                           _%hd4967049715%_)
                                          (_%g4966049704%_
                                           _%g4966149708%_)))))))
                      (_%loop4969349787%_ _%target4969049781%_ '()))
                    (_%g4966049704%_ _%g4966149708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4966049704%_
                                                   _%g4966149708%_))))
                                          (_%g4966049704%_ _%g4966149708%_))))
                                  (_%g4966049704%_ _%g4966149708%_))))
                          (_%g4966049704%_ _%g4966149708%_))))
                  (_%g4966049704%_ _%g4966149708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4966049704%_
                                                   _%g4966149708%_))))
                                          (_%g4966049704%_ _%g4966149708%_))))
                                  (_%g4966049704%_ _%g4966149708%_)))))
                      (_%g4965949862%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49657%_
                             (let ((__obj80019 _%type49657%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80019
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80019
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80019
                                    'instance-type)))
                             _%var49651%_
                             _%checked?49655%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49654%_)))))
                 (_%expand48836%_
                  (lambda (_%var49450%_
                           _%Interface49452%_
                           _%body49453%_
                           _%checked?49454%_
                           _%checked-methods?49455%_
                           _%maybe?49456%_)
                    (let* ((_%g4945849466%_
                            (lambda (_%g4945949462%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4945949462%_)))
                           (_%g4945749643%_
                            (lambda (_%g4945949470%_)
                              ((lambda (_%L49473%_)
                                 (let ()
                                   (if _%checked?49454%_
                                       (if _%maybe?49456%_
                                           (let* ((_%g4948549500%_
                                                   (lambda (_%g4948649496%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4948649496%_)))
                                                  (_%g4948449546%_
                                                   (lambda (_%g4948649504%_)
                                                     (if (gx#stx-pair?
                                                          _%g4948649504%_)
                                                         (let ((_%e4949149507%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4948649504%_)))
                   (let ((_%hd4949049511%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4949149507%_)))
                         (_%tl4948949514%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4949149507%_))))
                     (if (gx#stx-pair? _%tl4948949514%_)
                         (let ((_%e4949449517%_
                                (gx#syntax-e _%tl4948949514%_)))
                           (let ((_%hd4949349521%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4949449517%_)))
                                 (_%tl4949249524%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4949449517%_))))
                             (if (gx#stx-null? _%tl4949249524%_)
                                 ((lambda (_%L49527%_ _%L49529%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49529%_
                                                        (cons (cons _%L49527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49529%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L49529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49473%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L49529%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd4949349521%_
                                  _%hd4949049511%_)
                                 (_%g4948549500%_ _%g4948649504%_))))
                         (_%g4948549500%_ _%g4948649504%_))))
                 (_%g4948549500%_ _%g4948649504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4948449546%_
                                              (list _%var49450%_
                                                    _%Interface49452%_)))
                                           (let* ((_%g4955049565%_
                                                   (lambda (_%g4955149561%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4955149561%_)))
                                                  (_%g4954949609%_
                                                   (lambda (_%g4955149569%_)
                                                     (if (gx#stx-pair?
                                                          _%g4955149569%_)
                                                         (let ((_%e4955649572%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4955149569%_)))
                   (let ((_%hd4955549576%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4955649572%_)))
                         (_%tl4955449579%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4955649572%_))))
                     (if (gx#stx-pair? _%tl4955449579%_)
                         (let ((_%e4955949582%_
                                (gx#syntax-e _%tl4955449579%_)))
                           (let ((_%hd4955849586%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4955949582%_)))
                                 (_%tl4955749589%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4955949582%_))))
                             (if (gx#stx-null? _%tl4955749589%_)
                                 ((lambda (_%L49592%_ _%L49594%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49594%_
                                                        (cons (cons _%L49592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49594%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L49473%_ '())))))
                                  _%hd4955849586%_
                                  _%hd4955549576%_)
                                 (_%g4955049565%_ _%g4955149569%_))))
                         (_%g4955049565%_ _%g4955149569%_))))
                 (_%g4955049565%_ _%g4955149569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4954949609%_
                                              (list _%var49450%_
                                                    _%Interface49452%_))))
                                       (if _%maybe?49456%_
                                           (let* ((_%g4961349621%_
                                                   (lambda (_%g4961449617%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4961449617%_)))
                                                  (_%g4961249639%_
                                                   (lambda (_%g4961449625%_)
                                                     ((lambda (_%L49628%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L49628%_
                              (cons _%L49473%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L49628%_ '()))
                                          '()))))))
              _%g4961449625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4961249639%_ _%var49450%_))
                                           _%L49473%_))))
                               _%g4945949470%_))))
                      (_%g4945749643%_
                       (_%expand-body48834%_
                        _%var49450%_
                        _%Interface49452%_
                        _%body49453%_
                        (let ((_%$e49647%_ _%checked?49454%_))
                          (if _%$e49647%_
                              _%$e49647%_
                              _%checked-methods?49455%_))))))))
          (let* ((_%__stx7548675487%_ _%stx48831%_)
                 (_%g4884148956%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7548675487%_))))
            (let ((_%__kont7548975490%_
                   (lambda (_%L49411%_ _%L49413%_ _%L49414%_)
                     (_%expand48836%_
                      _%L49414%_
                      _%L49413%_
                      (foldr (lambda (_%g4943749440%_ _%g4943849443%_)
                               (cons _%g4943749440%_ _%g4943849443%_))
                             '()
                             _%L49411%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7549375494%_
                   (lambda (_%L49289%_ _%L49291%_ _%L49292%_)
                     (_%expand48836%_
                      _%L49292%_
                      _%L49291%_
                      (foldr (lambda (_%g4931549318%_ _%g4931649321%_)
                               (cons _%g4931549318%_ _%g4931649321%_))
                             '()
                             _%L49289%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7549775498%_
                   (lambda (_%L49167%_ _%L49169%_ _%L49170%_)
                     (_%expand48836%_
                      _%L49170%_
                      _%L49169%_
                      (foldr (lambda (_%g4919349196%_ _%g4919449199%_)
                               (cons _%g4919349196%_ _%g4919449199%_))
                             '()
                             _%L49167%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7550175502%_
                   (lambda (_%L49043%_ _%L49045%_ _%L49046%_)
                     (_%expand48836%_
                      _%L49046%_
                      _%L49045%_
                      (foldr (lambda (_%g4907149074%_ _%g4907249077%_)
                               (cons _%g4907149074%_ _%g4907249077%_))
                             '()
                             _%L49043%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7568175682%_
                      (lambda (_%e4892948963%_
                               _%hd4892848967%_
                               _%tl4892748970%_
                               _%e4893248973%_
                               _%hd4893148977%_
                               _%tl4893048980%_
                               _%e4893548983%_
                               _%hd4893448987%_
                               _%tl4893348990%_
                               _%e4893848993%_
                               _%hd4893748997%_
                               _%tl4893649000%_
                               _%e4894149003%_
                               _%hd4894049007%_
                               _%tl4893949010%_
                               _%__splice7550375504%_
                               _%target4894249013%_
                               _%tl4894449016%_)
                        (letrec ((_%loop4894549019%_
                                  (lambda (_%hd4894349023%_ _%body4894949026%_)
                                    (if (gx#stx-pair? _%hd4894349023%_)
                                        (let ((_%e4894649029%_
                                               (gx#syntax-e _%hd4894349023%_)))
                                          (let ((_%lp-tl4894849036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4894649029%_)))
                                                (_%lp-hd4894749033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4894649029%_))))
                                            (_%loop4894549019%_
                                             _%lp-tl4894849036%_
                                             (cons _%lp-hd4894749033%_
                                                   _%body4894949026%_))))
                                        (let ((_%body4895049039%_
                                               (reverse _%body4894949026%_)))
                                          (let ((_%L49043%_ _%body4895049039%_)
                                                (_%L49045%_ _%hd4894049007%_)
                                                (_%L49046%_ _%hd4893448987%_))
                                            (if (and (gx#identifier?
                                                      _%L49046%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49045%_)))
                                                (_%__kont7550175502%_
                                                 _%L49043%_
                                                 _%L49045%_
                                                 _%L49046%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4884148956%_)))))))))
                          (_%loop4894549019%_ _%target4894249013%_ '()))))
                     (_%__match7563775638%_
                      (lambda (_%e4890249087%_
                               _%hd4890149091%_
                               _%tl4890049094%_
                               _%e4890549097%_
                               _%hd4890449101%_
                               _%tl4890349104%_
                               _%e4890849107%_
                               _%hd4890749111%_
                               _%tl4890649114%_
                               _%e4891149117%_
                               _%hd4891049121%_
                               _%tl4890949124%_
                               _%e4891449127%_
                               _%hd4891349131%_
                               _%tl4891249134%_
                               _%__splice7549975500%_
                               _%target4891549137%_
                               _%tl4891749140%_)
                        (letrec ((_%loop4891849143%_
                                  (lambda (_%hd4891649147%_ _%body4892249150%_)
                                    (if (gx#stx-pair? _%hd4891649147%_)
                                        (let ((_%e4891949153%_
                                               (gx#syntax-e _%hd4891649147%_)))
                                          (let ((_%lp-tl4892149160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4891949153%_)))
                                                (_%lp-hd4892049157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4891949153%_))))
                                            (_%loop4891849143%_
                                             _%lp-tl4892149160%_
                                             (cons _%lp-hd4892049157%_
                                                   _%body4892249150%_))))
                                        (let ((_%body4892349163%_
                                               (reverse _%body4892249150%_)))
                                          (let ((_%L49167%_ _%body4892349163%_)
                                                (_%L49169%_ _%hd4891349131%_)
                                                (_%L49170%_ _%hd4890749111%_))
                                            (if (and (gx#identifier?
                                                      _%L49170%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49169%_)))
                                                (_%__kont7549775498%_
                                                 _%L49167%_
                                                 _%L49169%_
                                                 _%L49170%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4884148956%_)))))))))
                          (_%loop4891849143%_ _%target4891549137%_ '()))))
                     (_%__match7559375594%_
                      (lambda (_%e4887549209%_
                               _%hd4887449213%_
                               _%tl4887349216%_
                               _%e4887849219%_
                               _%hd4887749223%_
                               _%tl4887649226%_
                               _%e4888149229%_
                               _%hd4888049233%_
                               _%tl4887949236%_
                               _%e4888449239%_
                               _%hd4888349243%_
                               _%tl4888249246%_
                               _%e4888749249%_
                               _%hd4888649253%_
                               _%tl4888549256%_
                               _%__splice7549575496%_
                               _%target4888849259%_
                               _%tl4889049262%_)
                        (letrec ((_%loop4889149265%_
                                  (lambda (_%hd4888949269%_ _%body4889549272%_)
                                    (if (gx#stx-pair? _%hd4888949269%_)
                                        (let ((_%e4889249275%_
                                               (gx#syntax-e _%hd4888949269%_)))
                                          (let ((_%lp-tl4889449282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4889249275%_)))
                                                (_%lp-hd4889349279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4889249275%_))))
                                            (_%loop4889149265%_
                                             _%lp-tl4889449282%_
                                             (cons _%lp-hd4889349279%_
                                                   _%body4889549272%_))))
                                        (let ((_%body4889649285%_
                                               (reverse _%body4889549272%_)))
                                          (let ((_%L49289%_ _%body4889649285%_)
                                                (_%L49291%_ _%hd4888649253%_)
                                                (_%L49292%_ _%hd4888049233%_))
                                            (if (and (gx#identifier?
                                                      _%L49292%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49291%_)))
                                                (_%__kont7549375494%_
                                                 _%L49289%_
                                                 _%L49291%_
                                                 _%L49292%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4884148956%_)))))))))
                          (_%loop4889149265%_ _%target4888849259%_ '()))))
                     (_%__match7554975550%_
                      (lambda (_%e4884849331%_
                               _%hd4884749335%_
                               _%tl4884649338%_
                               _%e4885149341%_
                               _%hd4885049345%_
                               _%tl4884949348%_
                               _%e4885449351%_
                               _%hd4885349355%_
                               _%tl4885249358%_
                               _%e4885749361%_
                               _%hd4885649365%_
                               _%tl4885549368%_
                               _%e4886049371%_
                               _%hd4885949375%_
                               _%tl4885849378%_
                               _%__splice7549175492%_
                               _%target4886149381%_
                               _%tl4886349384%_)
                        (letrec ((_%loop4886449387%_
                                  (lambda (_%hd4886249391%_ _%body4886849394%_)
                                    (if (gx#stx-pair? _%hd4886249391%_)
                                        (let ((_%e4886549397%_
                                               (gx#syntax-e _%hd4886249391%_)))
                                          (let ((_%lp-tl4886749404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4886549397%_)))
                                                (_%lp-hd4886649401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4886549397%_))))
                                            (_%loop4886449387%_
                                             _%lp-tl4886749404%_
                                             (cons _%lp-hd4886649401%_
                                                   _%body4886849394%_))))
                                        (let ((_%body4886949407%_
                                               (reverse _%body4886849394%_)))
                                          (let ((_%L49411%_ _%body4886949407%_)
                                                (_%L49413%_ _%hd4885949375%_)
                                                (_%L49414%_ _%hd4885349355%_))
                                            (if (and (gx#identifier?
                                                      _%L49414%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49413%_)))
                                                (_%__kont7548975490%_
                                                 _%L49411%_
                                                 _%L49413%_
                                                 _%L49414%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4884148956%_)))))))))
                          (_%loop4886449387%_ _%target4886149381%_ '())))))
                (if (gx#stx-pair? _%__stx7548675487%_)
                    (let ((_%e4884849331%_ (gx#syntax-e _%__stx7548675487%_)))
                      (let ((_%tl4884649338%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4884849331%_)))
                            (_%hd4884749335%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4884849331%_))))
                        (if (gx#stx-pair? _%tl4884649338%_)
                            (let ((_%e4885149341%_
                                   (gx#syntax-e _%tl4884649338%_)))
                              (let ((_%tl4884949348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4885149341%_)))
                                    (_%hd4885049345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4885149341%_))))
                                (if (gx#stx-pair? _%hd4885049345%_)
                                    (let ((_%e4885449351%_
                                           (gx#syntax-e _%hd4885049345%_)))
                                      (let ((_%tl4885249358%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4885449351%_)))
                                            (_%hd4885349355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4885449351%_))))
                                        (if (gx#stx-pair? _%tl4885249358%_)
                                            (let ((_%e4885749361%_
                                                   (gx#syntax-e
                                                    _%tl4885249358%_)))
                                              (let ((_%tl4885549368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4885749361%_)))
                                                    (_%hd4885649365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4885749361%_))))
                                                (if (gx#identifier?
                                                     _%hd4885649365%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80197_|
                                                         _%hd4885649365%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4885549368%_)
                                                            (let ((_%e4886049371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4885549368%_)))
                      (let ((_%tl4885849378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4886049371%_)))
                            (_%hd4885949375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4886049371%_))))
                        (if (gx#stx-null? _%tl4885849378%_)
                            (if (gx#stx-pair/null? _%tl4884949348%_)
                                (let ((_%__splice7549175492%_
                                       (gx#syntax-split-splice
                                        _%tl4884949348%_
                                        '0)))
                                  (let ((_%tl4886349384%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7549175492%_
                                            '1)))
                                        (_%target4886149381%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7549175492%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4886349384%_)
                                        (_%__match7554975550%_
                                         _%e4884849331%_
                                         _%hd4884749335%_
                                         _%tl4884649338%_
                                         _%e4885149341%_
                                         _%hd4885049345%_
                                         _%tl4884949348%_
                                         _%e4885449351%_
                                         _%hd4885349355%_
                                         _%tl4885249358%_
                                         _%e4885749361%_
                                         _%hd4885649365%_
                                         _%tl4885549368%_
                                         _%e4886049371%_
                                         _%hd4885949375%_
                                         _%tl4885849378%_
                                         _%__splice7549175492%_
                                         _%target4886149381%_
                                         _%tl4886349384%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4884148956%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4884148956%_)))
                            (let () (declare (not safe)) (_%g4884148956%_)))))
                    (let () (declare (not safe)) (_%g4884148956%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80198_|
                     _%hd4885649365%_)
                    (if (gx#stx-pair? _%tl4885549368%_)
                        (let ((_%e4888749249%_ (gx#syntax-e _%tl4885549368%_)))
                          (let ((_%tl4888549256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4888749249%_)))
                                (_%hd4888649253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4888749249%_))))
                            (if (gx#stx-null? _%tl4888549256%_)
                                (if (gx#stx-pair/null? _%tl4884949348%_)
                                    (let ((_%__splice7549575496%_
                                           (gx#syntax-split-splice
                                            _%tl4884949348%_
                                            '0)))
                                      (let ((_%tl4889049262%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7549575496%_
                                                '1)))
                                            (_%target4888849259%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7549575496%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4889049262%_)
                                            (_%__match7559375594%_
                                             _%e4884849331%_
                                             _%hd4884749335%_
                                             _%tl4884649338%_
                                             _%e4885149341%_
                                             _%hd4885049345%_
                                             _%tl4884949348%_
                                             _%e4885449351%_
                                             _%hd4885349355%_
                                             _%tl4885249358%_
                                             _%e4885749361%_
                                             _%hd4885649365%_
                                             _%tl4885549368%_
                                             _%e4888749249%_
                                             _%hd4888649253%_
                                             _%tl4888549256%_
                                             _%__splice7549575496%_
                                             _%target4888849259%_
                                             _%tl4889049262%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4884148956%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4884148956%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4884148956%_)))))
                        (let () (declare (not safe)) (_%g4884148956%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80199_|
                         _%hd4885649365%_)
                        (if (gx#stx-pair? _%tl4885549368%_)
                            (let ((_%e4891449127%_
                                   (gx#syntax-e _%tl4885549368%_)))
                              (let ((_%tl4891249134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4891449127%_)))
                                    (_%hd4891349131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4891449127%_))))
                                (if (gx#stx-null? _%tl4891249134%_)
                                    (if (gx#stx-pair/null? _%tl4884949348%_)
                                        (let ((_%__splice7549975500%_
                                               (gx#syntax-split-splice
                                                _%tl4884949348%_
                                                '0)))
                                          (let ((_%tl4891749140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7549975500%_
                                                    '1)))
                                                (_%target4891549137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7549975500%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4891749140%_)
                                                (_%__match7563775638%_
                                                 _%e4884849331%_
                                                 _%hd4884749335%_
                                                 _%tl4884649338%_
                                                 _%e4885149341%_
                                                 _%hd4885049345%_
                                                 _%tl4884949348%_
                                                 _%e4885449351%_
                                                 _%hd4885349355%_
                                                 _%tl4885249358%_
                                                 _%e4885749361%_
                                                 _%hd4885649365%_
                                                 _%tl4885549368%_
                                                 _%e4891449127%_
                                                 _%hd4891349131%_
                                                 _%tl4891249134%_
                                                 _%__splice7549975500%_
                                                 _%target4891549137%_
                                                 _%tl4891749140%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4884148956%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4884148956%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4884148956%_)))))
                            (let () (declare (not safe)) (_%g4884148956%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80200_|
                             _%hd4885649365%_)
                            (if (gx#stx-pair? _%tl4885549368%_)
                                (let ((_%e4894149003%_
                                       (gx#syntax-e _%tl4885549368%_)))
                                  (let ((_%tl4893949010%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4894149003%_)))
                                        (_%hd4894049007%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4894149003%_))))
                                    (if (gx#stx-null? _%tl4893949010%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4884949348%_)
                                            (let ((_%__splice7550375504%_
                                                   (gx#syntax-split-splice
                                                    _%tl4884949348%_
                                                    '0)))
                                              (let ((_%tl4894449016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7550375504%_
                                                        '1)))
                                                    (_%target4894249013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7550375504%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4894449016%_)
                                                    (_%__match7568175682%_
                                                     _%e4884849331%_
                                                     _%hd4884749335%_
                                                     _%tl4884649338%_
                                                     _%e4885149341%_
                                                     _%hd4885049345%_
                                                     _%tl4884949348%_
                                                     _%e4885449351%_
                                                     _%hd4885349355%_
                                                     _%tl4885249358%_
                                                     _%e4885749361%_
                                                     _%hd4885649365%_
                                                     _%tl4885549368%_
                                                     _%e4894149003%_
                                                     _%hd4894049007%_
                                                     _%tl4893949010%_
                                                     _%__splice7550375504%_
                                                     _%target4894249013%_
                                                     _%tl4894449016%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4884148956%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4884148956%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4884148956%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4884148956%_)))
                            (let () (declare (not safe)) (_%g4884148956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4884148956%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4884148956%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4884148956%_)))))
                            (let () (declare (not safe)) (_%g4884148956%_)))))
                    (let () (declare (not safe)) (_%g4884148956%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49871%_)
        (let* ((_%__stx7568475685%_ _%stx49871%_)
               (_%g4987649936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7568475685%_))))
          (let ((_%__kont7568775688%_
                 (lambda (_%L50497%_ _%L50499%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50499%_ '()))
                               (foldr (lambda (_%g5051550518%_ _%g5051650521%_)
                                        (cons _%g5051550518%_ _%g5051650521%_))
                                      '()
                                      _%L50497%_)))))
                (_%__kont7569175692%_
                 (lambda (_%L50084%_ _%L50086%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50086%_))
                       (let* ((_%g5010650113%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx49871%_
                                  _%L50086%_)))
                              (_%E5010850119%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5010650113%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5010950416%_
                               (lambda (_%parts50123%_ _%var50125%_)
                                 (let ((_%$e50127%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50125%_))))
                                   (if _%$e50127%_
                                       ((lambda (_%te50131%_)
                                          (let _%loop50134%_ ((_%parts50137%_
                                                               _%parts50123%_)
                                                              (_%type50139%_
                                                               (##direct-structure-ref
                                                                _%te50131%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50140%_
                                                               _%var50125%_)
                                                              (_%nil-check?50141%_
                                                               '#f))
                                            (let* ((_%parts5014250150%_
                                                    _%parts50137%_)
                                                   (_%else5014450211%_
                                                    (lambda ()
                                                      (let* ((_%g5016250170%_
                                                              (lambda (_%g5016350166%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5016350166%_)))
                     (_%g5016150207%_
                      (lambda (_%g5016350174%_)
                        ((lambda (_%L50177%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50177%_
                                         (foldr (lambda (_%g5019850201%_
                                                         _%g5019950204%_)
                                                  (cons _%g5019850201%_
                                                        _%g5019950204%_))
                                                '()
                                                _%L50084%_)))))
                         _%g5016350174%_))))
                (_%g5016150207%_ _%object50140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5014650390%_
                                                    (lambda (_%rest50215%_
                                                             _%part50217%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50141%_))
                       (let ((__tmp80201 (symbol->string _%part50217%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80201)))
                  (let ((_%str50221%_ (symbol->string _%part50217%_)))
                    (_%loop50134%_
                     (cons (let ((__tmp80202
                                  (substring
                                   _%str50221%_
                                   '1
                                   (string-length _%str50221%_))))
                             (declare (not safe))
                             (##string->symbol __tmp80202))
                           _%rest50215%_)
                     _%type50139%_
                     _%object50140%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50139%_))
                      (let ()
                        (let* ((_%g5022650241%_
                                (lambda (_%g5022750237%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5022750237%_)))
                               (_%g5022550310%_
                                (lambda (_%g5022750245%_)
                                  (if (gx#stx-pair? _%g5022750245%_)
                                      (let ((_%e5023250248%_
                                             (gx#syntax-e _%g5022750245%_)))
                                        (let ((_%hd5023150252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5023250248%_)))
                                              (_%tl5023050255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5023250248%_))))
                                          (if (gx#stx-pair? _%tl5023050255%_)
                                              (let ((_%e5023550258%_
                                                     (gx#syntax-e
                                                      _%tl5023050255%_)))
                                                (let ((_%hd5023450262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5023550258%_)))
                                                      (_%tl5023350265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5023550258%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5023350265%_)
                                                      ((lambda (_%L50268%_
                                                                _%L50270%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50215%_))
                       (let ()
                         (cons (gx#datum->syntax '#f '%%app)
                               (cons (cons _%L50268%_ (cons _%L50270%_ '()))
                                     (foldr (lambda (_%g5028950292%_
                                                     _%g5029050295%_)
                                              (cons _%g5028950292%_
                                                    _%g5029050295%_))
                                            '()
                                            _%L50084%_))))
                       (let ((_%$e50298%_
                              (let ()
                                (declare (not safe))
                                (gerbil/core/mop~MOP-2#!class-slot-type
                                 _%type50139%_
                                 _%part50217%_))))
                         (if _%$e50298%_
                             ((lambda (_%type50302%_)
                                (let ((_%type50305%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx49871%_
                                          _%type50302%_))))
                                  (_%loop50134%_
                                   _%rest50215%_
                                   _%type50305%_
                                   (cons _%L50268%_ (cons _%L50270%_ '()))
                                   '#f)))
                              _%$e50298%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx49871%_
                                _%L50086%_
                                _%part50217%_)))))))
               _%hd5023450262%_
               _%hd5023150252%_)
              (_%g5022650241%_ _%g5022750245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5022650241%_
                                               _%g5022750245%_))))
                                      (_%g5022650241%_ _%g5022750245%_)))))
                          (_%g5022550310%_
                           (list (if _%nil-check?50141%_
                                     (cons 'check-nil!
                                           (cons _%object50140%_ '()))
                                     _%object50140%_)
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx49871%_
                                    _%type50139%_
                                    _%part50217%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50139%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50215%_))
                                (let* ((_%g5031650331%_
                                        (lambda (_%g5031750327%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5031750327%_)))
                                       (_%g5031550384%_
                                        (lambda (_%g5031750335%_)
                                          (if (gx#stx-pair? _%g5031750335%_)
                                              (let ((_%e5032250338%_
                                                     (gx#syntax-e
                                                      _%g5031750335%_)))
                                                (let ((_%hd5032150342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5032250338%_)))
                                                      (_%tl5032050345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5032250338%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5032050345%_)
                                                      (let ((_%e5032550348%_
                                                             (gx#syntax-e
                                                              _%tl5032050345%_)))
                                                        (let ((_%hd5032450352%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5032550348%_)))
                      (_%tl5032350355%_
                       (let () (declare (not safe)) (##cdr _%e5032550348%_))))
                  (if (gx#stx-null? _%tl5032350355%_)
                      ((lambda (_%L50358%_ _%L50360%_)
                         (let ()
                           (cons _%L50358%_
                                 (cons _%L50360%_
                                       (foldr (lambda (_%g5037550378%_
                                                       _%g5037650381%_)
                                                (cons _%g5037550378%_
                                                      _%g5037650381%_))
                                              '()
                                              _%L50084%_)))))
                       _%hd5032450352%_
                       _%hd5032150342%_)
                      (_%g5031650331%_ _%g5031750335%_))))
              (_%g5031650331%_ _%g5031750335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5031650331%_
                                               _%g5031750335%_)))))
                                  (_%g5031550384%_
                                   (list (if _%nil-check?50141%_
                                             (cons 'check-nil!
                                                   (cons _%object50140%_ '()))
                                             _%object50140%_)
                                         (gx#stx-identifier
                                          _%L50086%_
                                          (if (##direct-structure-ref
                                               _%te50131%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              '""
                                              '"&")
                                          (let ((__obj80020 _%type50139%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80020
                                                   'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80020
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 __obj80020
                                                 'name)))
                                          '"-"
                                          _%part50217%_))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx49871%_
                                 _%L50086%_
                                 _%part50217%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx49871%_
                             _%type50139%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5014250150%_))
                                                  (let ((_%hd5014750394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5014250150%_)))
                                                        (_%tl5014850397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5014250150%_))))
                                                    (let* ((_%part50400%_
                                                            _%hd5014750394%_)
                                                           (_%rest50403%_
                                                            _%tl5014850397%_))
                                                      (_%K5014650390%_
                                                       _%rest50403%_
                                                       _%part50400%_)))
                                                  (_%else5014450211%_)))))
                                        _%$e50127%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50086%_
                                                     (foldr (lambda (_%g5040750410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5040850413%_)
                      (cons _%g5040750410%_ _%g5040850413%_))
                    '()
                    _%L50084%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5010650113%_))
                             (let ((_%hd5011050420%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5010650113%_)))
                                   (_%tl5011150423%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5010650113%_))))
                               (let* ((_%var50426%_ _%hd5011050420%_)
                                      (_%parts50429%_ _%tl5011150423%_))
                                 (_%K5010950416%_
                                  _%parts50429%_
                                  _%var50426%_)))
                             (_%E5010850119%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50086%_
                                   (foldr (lambda (_%g5043150434%_
                                                   _%g5043250437%_)
                                            (cons _%g5043150434%_
                                                  _%g5043250437%_))
                                          '()
                                          _%L50084%_))))))
                (_%__kont7569575696%_
                 (lambda (_%L49983%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g4999850001%_ _%g4999950004%_)
                                  (cons _%g4999850001%_ _%g4999950004%_))
                                '()
                                _%L49983%_)))))
            (let* ((_%__match7577175772%_
                    (lambda (_%e4992149943%_
                             _%hd4992049947%_
                             _%tl4991949950%_
                             _%__splice7569775698%_
                             _%target4992249953%_
                             _%tl4992449956%_)
                      (letrec ((_%loop4992549959%_
                                (lambda (_%hd4992349963%_ _%arg4992949966%_)
                                  (if (gx#stx-pair? _%hd4992349963%_)
                                      (let ((_%e4992649969%_
                                             (gx#syntax-e _%hd4992349963%_)))
                                        (let ((_%lp-tl4992849976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4992649969%_)))
                                              (_%lp-hd4992749973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4992649969%_))))
                                          (_%loop4992549959%_
                                           _%lp-tl4992849976%_
                                           (cons _%lp-hd4992749973%_
                                                 _%arg4992949966%_))))
                                      (let ((_%arg4993049979%_
                                             (reverse _%arg4992949966%_)))
                                        (_%__kont7569575696%_
                                         _%arg4993049979%_))))))
                        (_%loop4992549959%_ _%target4992249953%_ '()))))
                   (_%__match7575775758%_
                    (lambda (_%e4989950014%_
                             _%hd4989850018%_
                             _%tl4989750021%_
                             _%e4990250024%_
                             _%hd4990150028%_
                             _%tl4990050031%_
                             _%e4990550034%_
                             _%hd4990450038%_
                             _%tl4990350041%_
                             _%e4990850044%_
                             _%hd4990750048%_
                             _%tl4990650051%_
                             _%__splice7569375694%_
                             _%target4990950054%_
                             _%tl4991150057%_)
                      (letrec ((_%loop4991250060%_
                                (lambda (_%hd4991050064%_ _%rand4991650067%_)
                                  (if (gx#stx-pair? _%hd4991050064%_)
                                      (let ((_%e4991350070%_
                                             (gx#syntax-e _%hd4991050064%_)))
                                        (let ((_%lp-tl4991550077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4991350070%_)))
                                              (_%lp-hd4991450074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4991350070%_))))
                                          (_%loop4991250060%_
                                           _%lp-tl4991550077%_
                                           (cons _%lp-hd4991450074%_
                                                 _%rand4991650067%_))))
                                      (let ((_%rand4991750080%_
                                             (reverse _%rand4991650067%_)))
                                        (_%__kont7569175692%_
                                         _%rand4991750080%_
                                         _%hd4990750048%_))))))
                        (_%loop4991250060%_ _%target4990950054%_ '()))))
                   (_%__match7573175732%_
                    (lambda (_%e4989950014%_
                             _%hd4989850018%_
                             _%tl4989750021%_
                             _%e4990250024%_
                             _%hd4990150028%_
                             _%tl4990050031%_)
                      (if (gx#stx-pair? _%hd4990150028%_)
                          (let ((_%e4990550034%_
                                 (gx#syntax-e _%hd4990150028%_)))
                            (let ((_%tl4990350041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4990550034%_)))
                                  (_%hd4990450038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4990550034%_))))
                              (if (gx#identifier? _%hd4990450038%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80203_|
                                       _%hd4990450038%_)
                                      (if (gx#stx-pair? _%tl4990350041%_)
                                          (let ((_%e4990850044%_
                                                 (gx#syntax-e
                                                  _%tl4990350041%_)))
                                            (let ((_%tl4990650051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4990850044%_)))
                                                  (_%hd4990750048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4990850044%_))))
                                              (if (gx#stx-null?
                                                   _%tl4990650051%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4990050031%_)
                                                      (let ((_%__splice7569375694%_
                                                             (gx#syntax-split-splice
                                                              _%tl4990050031%_
                                                              '0)))
                                                        (let ((_%tl4991150057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7569375694%_ '1)))
                      (_%target4990950054%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7569375694%_ '0))))
                  (if (gx#stx-null? _%tl4991150057%_)
                      (_%__match7575775758%_
                       _%e4989950014%_
                       _%hd4989850018%_
                       _%tl4989750021%_
                       _%e4990250024%_
                       _%hd4990150028%_
                       _%tl4990050031%_
                       _%e4990550034%_
                       _%hd4990450038%_
                       _%tl4990350041%_
                       _%e4990850044%_
                       _%hd4990750048%_
                       _%tl4990650051%_
                       _%__splice7569375694%_
                       _%target4990950054%_
                       _%tl4991150057%_)
                      (if (gx#stx-pair/null? _%tl4989750021%_)
                          (let ((_%__splice7569775698%_
                                 (gx#syntax-split-splice _%tl4989750021%_ '0)))
                            (let ((_%tl4992449956%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7569775698%_ '1)))
                                  (_%target4992249953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7569775698%_
                                      '0))))
                              (if (gx#stx-null? _%tl4992449956%_)
                                  (_%__match7577175772%_
                                   _%e4989950014%_
                                   _%hd4989850018%_
                                   _%tl4989750021%_
                                   _%__splice7569775698%_
                                   _%target4992249953%_
                                   _%tl4992449956%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4987649936%_)))))
                          (let () (declare (not safe)) (_%g4987649936%_))))))
              (if (gx#stx-pair/null? _%tl4989750021%_)
                  (let ((_%__splice7569775698%_
                         (gx#syntax-split-splice _%tl4989750021%_ '0)))
                    (let ((_%tl4992449956%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '1)))
                          (_%target4992249953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '0))))
                      (if (gx#stx-null? _%tl4992449956%_)
                          (_%__match7577175772%_
                           _%e4989950014%_
                           _%hd4989850018%_
                           _%tl4989750021%_
                           _%__splice7569775698%_
                           _%target4992249953%_
                           _%tl4992449956%_)
                          (let () (declare (not safe)) (_%g4987649936%_)))))
                  (let () (declare (not safe)) (_%g4987649936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4989750021%_)
                                                      (let ((_%__splice7569775698%_
                                                             (gx#syntax-split-splice
                                                              _%tl4989750021%_
                                                              '0)))
                                                        (let ((_%tl4992449956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7569775698%_ '1)))
                      (_%target4992249953%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7569775698%_ '0))))
                  (if (gx#stx-null? _%tl4992449956%_)
                      (_%__match7577175772%_
                       _%e4989950014%_
                       _%hd4989850018%_
                       _%tl4989750021%_
                       _%__splice7569775698%_
                       _%target4992249953%_
                       _%tl4992449956%_)
                      (let () (declare (not safe)) (_%g4987649936%_)))))
              (let () (declare (not safe)) (_%g4987649936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4989750021%_)
                                              (let ((_%__splice7569775698%_
                                                     (gx#syntax-split-splice
                                                      _%tl4989750021%_
                                                      '0)))
                                                (let ((_%tl4992449956%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7569775698%_
                                                          '1)))
                                                      (_%target4992249953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7569775698%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4992449956%_)
                                                      (_%__match7577175772%_
                                                       _%e4989950014%_
                                                       _%hd4989850018%_
                                                       _%tl4989750021%_
                                                       _%__splice7569775698%_
                                                       _%target4992249953%_
                                                       _%tl4992449956%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4987649936%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4987649936%_))))
                                      (if (gx#stx-pair/null? _%tl4989750021%_)
                                          (let ((_%__splice7569775698%_
                                                 (gx#syntax-split-splice
                                                  _%tl4989750021%_
                                                  '0)))
                                            (let ((_%tl4992449956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7569775698%_
                                                      '1)))
                                                  (_%target4992249953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7569775698%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4992449956%_)
                                                  (_%__match7577175772%_
                                                   _%e4989950014%_
                                                   _%hd4989850018%_
                                                   _%tl4989750021%_
                                                   _%__splice7569775698%_
                                                   _%target4992249953%_
                                                   _%tl4992449956%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987649936%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4987649936%_))))
                                  (if (gx#stx-pair/null? _%tl4989750021%_)
                                      (let ((_%__splice7569775698%_
                                             (gx#syntax-split-splice
                                              _%tl4989750021%_
                                              '0)))
                                        (let ((_%tl4992449956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7569775698%_
                                                  '1)))
                                              (_%target4992249953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7569775698%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4992449956%_)
                                              (_%__match7577175772%_
                                               _%e4989950014%_
                                               _%hd4989850018%_
                                               _%tl4989750021%_
                                               _%__splice7569775698%_
                                               _%target4992249953%_
                                               _%tl4992449956%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4987649936%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987649936%_))))))
                          (if (gx#stx-pair/null? _%tl4989750021%_)
                              (let ((_%__splice7569775698%_
                                     (gx#syntax-split-splice
                                      _%tl4989750021%_
                                      '0)))
                                (let ((_%tl4992449956%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '1)))
                                      (_%target4992249953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992449956%_)
                                      (_%__match7577175772%_
                                       _%e4989950014%_
                                       _%hd4989850018%_
                                       _%tl4989750021%_
                                       _%__splice7569775698%_
                                       _%target4992249953%_
                                       _%tl4992449956%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987649936%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987649936%_))))))
                   (_%__match7571975720%_
                    (lambda (_%e4988250447%_
                             _%hd4988150451%_
                             _%tl4988050454%_
                             _%e4988550457%_
                             _%hd4988450461%_
                             _%tl4988350464%_
                             _%__splice7568975690%_
                             _%target4988650467%_
                             _%tl4988850470%_)
                      (letrec ((_%loop4988950473%_
                                (lambda (_%hd4988750477%_ _%rand4989350480%_)
                                  (if (gx#stx-pair? _%hd4988750477%_)
                                      (let ((_%e4989050483%_
                                             (gx#syntax-e _%hd4988750477%_)))
                                        (let ((_%lp-tl4989250490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4989050483%_)))
                                              (_%lp-hd4989150487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4989050483%_))))
                                          (_%loop4988950473%_
                                           _%lp-tl4989250490%_
                                           (cons _%lp-hd4989150487%_
                                                 _%rand4989350480%_))))
                                      (let ((_%rand4989450493%_
                                             (reverse _%rand4989350480%_)))
                                        (let ((_%L50497%_ _%rand4989450493%_)
                                              (_%L50499%_ _%hd4988450461%_))
                                          (if (gx#identifier? _%L50499%_)
                                              (_%__kont7568775688%_
                                               _%L50497%_
                                               _%L50499%_)
                                              (_%__match7573175732%_
                                               _%e4988250447%_
                                               _%hd4988150451%_
                                               _%tl4988050454%_
                                               _%e4988550457%_
                                               _%hd4988450461%_
                                               _%tl4988350464%_))))))))
                        (_%loop4988950473%_ _%target4988650467%_ '())))))
              (if (gx#stx-pair? _%__stx7568475685%_)
                  (let ((_%e4988250447%_ (gx#syntax-e _%__stx7568475685%_)))
                    (let ((_%tl4988050454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4988250447%_)))
                          (_%hd4988150451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4988250447%_))))
                      (if (gx#stx-pair? _%tl4988050454%_)
                          (let ((_%e4988550457%_
                                 (gx#syntax-e _%tl4988050454%_)))
                            (let ((_%tl4988350464%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4988550457%_)))
                                  (_%hd4988450461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4988550457%_))))
                              (if (gx#stx-pair/null? _%tl4988350464%_)
                                  (let ((_%__splice7568975690%_
                                         (gx#syntax-split-splice
                                          _%tl4988350464%_
                                          '0)))
                                    (let ((_%tl4988850470%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7568975690%_
                                              '1)))
                                          (_%target4988650467%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7568975690%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4988850470%_)
                                          (_%__match7571975720%_
                                           _%e4988250447%_
                                           _%hd4988150451%_
                                           _%tl4988050454%_
                                           _%e4988550457%_
                                           _%hd4988450461%_
                                           _%tl4988350464%_
                                           _%__splice7568975690%_
                                           _%target4988650467%_
                                           _%tl4988850470%_)
                                          (if (gx#stx-pair? _%hd4988450461%_)
                                              (let ((_%e4990550034%_
                                                     (gx#syntax-e
                                                      _%hd4988450461%_)))
                                                (let ((_%tl4990350041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4990550034%_)))
                                                      (_%hd4990450038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4990550034%_))))
                                                  (if (gx#identifier?
                                                       _%hd4990450038%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80203_|
                                                           _%hd4990450038%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4990350041%_)
                                                              (let ((_%e4990850044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4990350041%_)))
                        (let ((_%tl4990650051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4990850044%_)))
                              (_%hd4990750048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4990850044%_))))
                          (if (gx#stx-pair/null? _%tl4988050454%_)
                              (let ((_%__splice7569775698%_
                                     (gx#syntax-split-splice
                                      _%tl4988050454%_
                                      '0)))
                                (let ((_%tl4992449956%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '1)))
                                      (_%target4992249953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992449956%_)
                                      (_%__match7577175772%_
                                       _%e4988250447%_
                                       _%hd4988150451%_
                                       _%tl4988050454%_
                                       _%__splice7569775698%_
                                       _%target4992249953%_
                                       _%tl4992449956%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987649936%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987649936%_)))))
                      (if (gx#stx-pair/null? _%tl4988050454%_)
                          (let ((_%__splice7569775698%_
                                 (gx#syntax-split-splice _%tl4988050454%_ '0)))
                            (let ((_%tl4992449956%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7569775698%_ '1)))
                                  (_%target4992249953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7569775698%_
                                      '0))))
                              (if (gx#stx-null? _%tl4992449956%_)
                                  (_%__match7577175772%_
                                   _%e4988250447%_
                                   _%hd4988150451%_
                                   _%tl4988050454%_
                                   _%__splice7569775698%_
                                   _%target4992249953%_
                                   _%tl4992449956%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4987649936%_)))))
                          (let () (declare (not safe)) (_%g4987649936%_))))
                  (if (gx#stx-pair/null? _%tl4988050454%_)
                      (let ((_%__splice7569775698%_
                             (gx#syntax-split-splice _%tl4988050454%_ '0)))
                        (let ((_%tl4992449956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7569775698%_ '1)))
                              (_%target4992249953%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7569775698%_ '0))))
                          (if (gx#stx-null? _%tl4992449956%_)
                              (_%__match7577175772%_
                               _%e4988250447%_
                               _%hd4988150451%_
                               _%tl4988050454%_
                               _%__splice7569775698%_
                               _%target4992249953%_
                               _%tl4992449956%_)
                              (let ()
                                (declare (not safe))
                                (_%g4987649936%_)))))
                      (let () (declare (not safe)) (_%g4987649936%_))))
              (if (gx#stx-pair/null? _%tl4988050454%_)
                  (let ((_%__splice7569775698%_
                         (gx#syntax-split-splice _%tl4988050454%_ '0)))
                    (let ((_%tl4992449956%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '1)))
                          (_%target4992249953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '0))))
                      (if (gx#stx-null? _%tl4992449956%_)
                          (_%__match7577175772%_
                           _%e4988250447%_
                           _%hd4988150451%_
                           _%tl4988050454%_
                           _%__splice7569775698%_
                           _%target4992249953%_
                           _%tl4992449956%_)
                          (let () (declare (not safe)) (_%g4987649936%_)))))
                  (let () (declare (not safe)) (_%g4987649936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4988050454%_)
                                                  (let ((_%__splice7569775698%_
                                                         (gx#syntax-split-splice
                                                          _%tl4988050454%_
                                                          '0)))
                                                    (let ((_%tl4992449956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7569775698%_
                                                              '1)))
                                                          (_%target4992249953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7569775698%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4992449956%_)
                                                          (_%__match7577175772%_
                                                           _%e4988250447%_
                                                           _%hd4988150451%_
                                                           _%tl4988050454%_
                                                           _%__splice7569775698%_
                                                           _%target4992249953%_
                                                           _%tl4992449956%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4987649936%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987649936%_)))))))
                                  (if (gx#stx-pair? _%hd4988450461%_)
                                      (let ((_%e4990550034%_
                                             (gx#syntax-e _%hd4988450461%_)))
                                        (let ((_%tl4990350041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4990550034%_)))
                                              (_%hd4990450038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4990550034%_))))
                                          (if (gx#identifier? _%hd4990450038%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80203_|
                                                   _%hd4990450038%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4990350041%_)
                                                      (let ((_%e4990850044%_
                                                             (gx#syntax-e
                                                              _%tl4990350041%_)))
                                                        (let ((_%tl4990650051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4990850044%_)))
                      (_%hd4990750048%_
                       (let () (declare (not safe)) (##car _%e4990850044%_))))
                  (if (gx#stx-pair/null? _%tl4988050454%_)
                      (let ((_%__splice7569775698%_
                             (gx#syntax-split-splice _%tl4988050454%_ '0)))
                        (let ((_%tl4992449956%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7569775698%_ '1)))
                              (_%target4992249953%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7569775698%_ '0))))
                          (if (gx#stx-null? _%tl4992449956%_)
                              (_%__match7577175772%_
                               _%e4988250447%_
                               _%hd4988150451%_
                               _%tl4988050454%_
                               _%__splice7569775698%_
                               _%target4992249953%_
                               _%tl4992449956%_)
                              (let ()
                                (declare (not safe))
                                (_%g4987649936%_)))))
                      (let () (declare (not safe)) (_%g4987649936%_)))))
              (if (gx#stx-pair/null? _%tl4988050454%_)
                  (let ((_%__splice7569775698%_
                         (gx#syntax-split-splice _%tl4988050454%_ '0)))
                    (let ((_%tl4992449956%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '1)))
                          (_%target4992249953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7569775698%_ '0))))
                      (if (gx#stx-null? _%tl4992449956%_)
                          (_%__match7577175772%_
                           _%e4988250447%_
                           _%hd4988150451%_
                           _%tl4988050454%_
                           _%__splice7569775698%_
                           _%target4992249953%_
                           _%tl4992449956%_)
                          (let () (declare (not safe)) (_%g4987649936%_)))))
                  (let () (declare (not safe)) (_%g4987649936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4988050454%_)
                                                      (let ((_%__splice7569775698%_
                                                             (gx#syntax-split-splice
                                                              _%tl4988050454%_
                                                              '0)))
                                                        (let ((_%tl4992449956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7569775698%_ '1)))
                      (_%target4992249953%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7569775698%_ '0))))
                  (if (gx#stx-null? _%tl4992449956%_)
                      (_%__match7577175772%_
                       _%e4988250447%_
                       _%hd4988150451%_
                       _%tl4988050454%_
                       _%__splice7569775698%_
                       _%target4992249953%_
                       _%tl4992449956%_)
                      (let () (declare (not safe)) (_%g4987649936%_)))))
              (let () (declare (not safe)) (_%g4987649936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4988050454%_)
                                                  (let ((_%__splice7569775698%_
                                                         (gx#syntax-split-splice
                                                          _%tl4988050454%_
                                                          '0)))
                                                    (let ((_%tl4992449956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7569775698%_
                                                              '1)))
                                                          (_%target4992249953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7569775698%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4992449956%_)
                                                          (_%__match7577175772%_
                                                           _%e4988250447%_
                                                           _%hd4988150451%_
                                                           _%tl4988050454%_
                                                           _%__splice7569775698%_
                                                           _%target4992249953%_
                                                           _%tl4992449956%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4987649936%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987649936%_))))))
                                      (if (gx#stx-pair/null? _%tl4988050454%_)
                                          (let ((_%__splice7569775698%_
                                                 (gx#syntax-split-splice
                                                  _%tl4988050454%_
                                                  '0)))
                                            (let ((_%tl4992449956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7569775698%_
                                                      '1)))
                                                  (_%target4992249953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7569775698%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4992449956%_)
                                                  (_%__match7577175772%_
                                                   _%e4988250447%_
                                                   _%hd4988150451%_
                                                   _%tl4988050454%_
                                                   _%__splice7569775698%_
                                                   _%target4992249953%_
                                                   _%tl4992449956%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987649936%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4987649936%_)))))))
                          (if (gx#stx-pair/null? _%tl4988050454%_)
                              (let ((_%__splice7569775698%_
                                     (gx#syntax-split-splice
                                      _%tl4988050454%_
                                      '0)))
                                (let ((_%tl4992449956%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '1)))
                                      (_%target4992249953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7569775698%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992449956%_)
                                      (_%__match7577175772%_
                                       _%e4988250447%_
                                       _%hd4988150451%_
                                       _%tl4988050454%_
                                       _%__splice7569775698%_
                                       _%target4992249953%_
                                       _%tl4992449956%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987649936%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987649936%_))))))
                  (let () (declare (not safe)) (_%g4987649936%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50531%_)
        (let* ((_%__stx7577475775%_ _%stx50531%_)
               (_%g5053550556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7577475775%_))))
          (let ((_%__kont7577775778%_
                 (lambda (_%L50624%_)
                   (let* ((_%g5063650643%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50531%_
                              _%L50624%_)))
                          (_%E5063850649%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5063650643%_
                                    '([var . parts]))
                             (void)))
                          (_%K5063950865%_
                           (lambda (_%parts50653%_ _%var50655%_)
                             (let ((_%$e50657%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var50655%_))))
                               (if _%$e50657%_
                                   ((lambda (_%te50661%_)
                                      (let _%loop50664%_ ((_%parts50667%_
                                                           _%parts50653%_)
                                                          (_%type50669%_
                                                           (##direct-structure-ref
                                                            _%te50661%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object50670%_
                                                           _%var50655%_)
                                                          (_%nil-check?50671%_
                                                           '#f))
                                        (let* ((_%parts5067250680%_
                                                _%parts50667%_)
                                               (_%else5067450692%_
                                                (lambda () _%object50670%_))
                                               (_%K5067650847%_
                                                (lambda (_%rest50696%_
                                                         _%part50698%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?50671%_))
                                                           (let ((__tmp80204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part50698%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80204)))
              (let ((_%str50702%_ (symbol->string _%part50698%_)))
                (_%loop50664%_
                 (cons (let ((__tmp80205
                              (substring
                               _%str50702%_
                               '1
                               (string-length _%str50702%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80205))
                       _%rest50696%_)
                 _%type50669%_
                 _%object50670%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type50669%_))
                  (let ()
                    (let* ((_%g5070750722%_
                            (lambda (_%g5070850718%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5070850718%_)))
                           (_%g5070650839%_
                            (lambda (_%g5070850726%_)
                              (if (gx#stx-pair? _%g5070850726%_)
                                  (let ((_%e5071350729%_
                                         (gx#syntax-e _%g5070850726%_)))
                                    (let ((_%hd5071250733%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5071350729%_)))
                                          (_%tl5071150736%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5071350729%_))))
                                      (if (gx#stx-pair? _%tl5071150736%_)
                                          (let ((_%e5071650739%_
                                                 (gx#syntax-e
                                                  _%tl5071150736%_)))
                                            (let ((_%hd5071550743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5071650739%_)))
                                                  (_%tl5071450746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5071650739%_))))
                                              (if (gx#stx-null?
                                                   _%tl5071450746%_)
                                                  ((lambda (_%L50749%_
                                                            _%L50751%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest50696%_))
                                                           (let ((_%$e50781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50669%_
                             _%part50698%_))))
                     (if _%$e50781%_
                         ((lambda (_%slot-type50785%_)
                            (let* ((_%g5078850796%_
                                    (lambda (_%g5078950792%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g5078950792%_)))
                                   (_%g5078750819%_
                                    (lambda (_%g5078950800%_)
                                      ((lambda (_%L50803%_)
                                         (let ()
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'begin-annotation)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@type)
                                                             (cons _%L50803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons _%L50749%_ (cons _%L50751%_ '())) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%g5078950800%_))))
                              (_%g5078750819%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx50531%_
                                  _%type50669%_)))))
                          _%$e50781%_)
                         (if _%nil-check?50671%_
                             (let ()
                               (cons _%L50749%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L50751%_ '()))
                                           '())))
                             (let ()
                               (cons _%L50749%_ (cons _%L50751%_ '()))))))
                   (let ((_%$e50827%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50669%_
                             _%part50698%_))))
                     (if _%$e50827%_
                         ((lambda (_%type50831%_)
                            (let ((_%type50834%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50531%_
                                      _%type50831%_))))
                              (if _%nil-check?50671%_
                                  (_%loop50664%_
                                   _%rest50696%_
                                   _%type50834%_
                                   (cons _%L50749%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L50751%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop50664%_
                                   _%rest50696%_
                                   _%type50834%_
                                   (cons _%L50749%_ (cons _%L50751%_ '()))
                                   '#f))))
                          _%$e50827%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx50531%_
                            _%L50624%_
                            _%part50698%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5071550743%_
                                                   _%hd5071250733%_)
                                                  (_%g5070750722%_
                                                   _%g5070850726%_))))
                                          (_%g5070750722%_ _%g5070850726%_))))
                                  (_%g5070750722%_ _%g5070850726%_)))))
                      (_%g5070650839%_
                       (list (if _%nil-check?50671%_
                                 (cons 'check-nil! (cons _%object50670%_ '()))
                                 _%object50670%_)
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50531%_
                                _%type50669%_
                                _%part50698%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type50669%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50531%_
                         _%type50669%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5067250680%_))
                                              (let ((_%hd5067750851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5067250680%_)))
                                                    (_%tl5067850854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5067250680%_))))
                                                (let* ((_%part50857%_
                                                        _%hd5067750851%_)
                                                       (_%rest50860%_
                                                        _%tl5067850854%_))
                                                  (_%K5067650847%_
                                                   _%rest50860%_
                                                   _%part50857%_)))
                                              (_%else5067450692%_)))))
                                    _%$e50657%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L50624%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5063650643%_))
                         (let ((_%hd5064050869%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5063650643%_)))
                               (_%tl5064150872%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5063650643%_))))
                           (let* ((_%var50875%_ _%hd5064050869%_)
                                  (_%parts50878%_ _%tl5064150872%_))
                             (_%K5063950865%_ _%parts50878%_ _%var50875%_)))
                         (_%E5063850649%_)))))
                (_%__kont7577975780%_
                 (lambda (_%L50583%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L50583%_ '())))))
            (let ((_%__match7579575796%_
                   (lambda (_%e5054050604%_
                            _%hd5053950608%_
                            _%tl5053850611%_
                            _%e5054350614%_
                            _%hd5054250618%_
                            _%tl5054150621%_)
                     (let ((_%L50624%_ _%hd5054250618%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50624%_))
                           (_%__kont7577775778%_ _%L50624%_)
                           (_%__kont7577975780%_ _%hd5054250618%_))))))
              (if (gx#stx-pair? _%__stx7577475775%_)
                  (let ((_%e5054050604%_ (gx#syntax-e _%__stx7577475775%_)))
                    (let ((_%tl5053850611%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5054050604%_)))
                          (_%hd5053950608%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5054050604%_))))
                      (if (gx#stx-pair? _%tl5053850611%_)
                          (let ((_%e5054350614%_
                                 (gx#syntax-e _%tl5053850611%_)))
                            (let ((_%tl5054150621%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5054350614%_)))
                                  (_%hd5054250618%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5054350614%_))))
                              (if (gx#stx-null? _%tl5054150621%_)
                                  (_%__match7579575796%_
                                   _%e5054050604%_
                                   _%hd5053950608%_
                                   _%tl5053850611%_
                                   _%e5054350614%_
                                   _%hd5054250618%_
                                   _%tl5054150621%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5053550556%_)))))
                          (let () (declare (not safe)) (_%g5053550556%_)))))
                  (let () (declare (not safe)) (_%g5053550556%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50885%_)
        (let* ((_%__stx7581275813%_ _%stx50885%_)
               (_%g5088950918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7581275813%_))))
          (let ((_%__kont7581575816%_
                 (lambda (_%L51010%_ _%L51012%_)
                   (let* ((_%g5102651033%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50885%_
                              _%L51012%_)))
                          (_%E5102851039%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5102651033%_
                                    '([var . parts]))
                             (void)))
                          (_%K5102951272%_
                           (lambda (_%parts51043%_ _%var51045%_)
                             (let ((_%$e51047%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51045%_))))
                               (if _%$e51047%_
                                   ((lambda (_%te51051%_)
                                      (let _%loop51054%_ ((_%parts51057%_
                                                           _%parts51043%_)
                                                          (_%type51059%_
                                                           (##direct-structure-ref
                                                            _%te51051%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51060%_
                                                           _%var51045%_)
                                                          (_%nil-check?51061%_
                                                           '#f))
                                        (let* ((_%parts5106251069%_
                                                _%parts51057%_)
                                               (_%E5106451075%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5106251069%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5106551254%_
                                                (lambda (_%rest51079%_
                                                         _%part51081%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51061%_))
                                                           (let ((__tmp80206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51081%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80206)))
              (let ((_%str51085%_ (symbol->string _%part51081%_)))
                (_%loop51054%_
                 (cons (let ((__tmp80207
                              (substring
                               _%str51085%_
                               '1
                               (string-length _%str51085%_))))
                         (declare (not safe))
                         (##string->symbol __tmp80207))
                       _%rest51079%_)
                 _%type51059%_
                 _%object51060%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51059%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51079%_))
                        (let ()
                          (let* ((_%g5109251107%_
                                  (lambda (_%g5109351103%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5109351103%_)))
                                 (_%g5109151164%_
                                  (lambda (_%g5109351111%_)
                                    (if (gx#stx-pair? _%g5109351111%_)
                                        (let ((_%e5109851114%_
                                               (gx#syntax-e _%g5109351111%_)))
                                          (let ((_%hd5109751118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5109851114%_)))
                                                (_%tl5109651121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5109851114%_))))
                                            (if (gx#stx-pair? _%tl5109651121%_)
                                                (let ((_%e5110151124%_
                                                       (gx#syntax-e
                                                        _%tl5109651121%_)))
                                                  (let ((_%hd5110051128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5110151124%_)))
                                                        (_%tl5109951131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5110151124%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5109951131%_)
                                                        ((lambda (_%L51134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51136%_)
                   (let ()
                     (if _%nil-check?51061%_
                         (cons _%L51134%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51136%_ '()))
                                     (cons _%L51010%_ '())))
                         (cons _%L51134%_
                               (cons _%L51136%_ (cons _%L51010%_ '()))))))
                 _%hd5110051128%_
                 _%hd5109751118%_)
                (_%g5109251107%_ _%g5109351111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5109251107%_
                                                 _%g5109351111%_))))
                                        (_%g5109251107%_ _%g5109351111%_)))))
                            (_%g5109151164%_
                             (list _%object51060%_
                                   (let ((__tmp80208
                                          (if (##direct-structure-ref
                                               _%te51051%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              (let ((_%$e51168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/mop~MOP-2#!class-slot-type
                                                        _%type51059%_
                                                        _%part51081%_))))
                                                (if _%$e51168%_
                                                    _%$e51168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#!class-slot-contract
                                                       _%type51059%_
                                                       _%part51081%_))))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx50885%_
                                      _%type51059%_
                                      _%part51081%_
                                      __tmp80208))))))
                        (let ((_%$e51172%_
                               (let ()
                                 (declare (not safe))
                                 (gerbil/core/mop~MOP-2#!class-slot-type
                                  _%type51059%_
                                  _%part51081%_))))
                          (if _%$e51172%_
                              ((lambda (_%type51176%_)
                                 (let* ((_%type51179%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx50885%_
                                            _%type51176%_)))
                                        (_%g5118251197%_
                                         (lambda (_%g5118351193%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5118351193%_)))
                                        (_%g5118151244%_
                                         (lambda (_%g5118351201%_)
                                           (if (gx#stx-pair? _%g5118351201%_)
                                               (let ((_%e5118851204%_
                                                      (gx#syntax-e
                                                       _%g5118351201%_)))
                                                 (let ((_%hd5118751208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5118851204%_)))
                                                       (_%tl5118651211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5118851204%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5118651211%_)
                                                       (let ((_%e5119151214%_
                                                              (gx#syntax-e
                                                               _%tl5118651211%_)))
                                                         (let ((_%hd5119051218%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5119151214%_)))
                       (_%tl5118951221%_
                        (let () (declare (not safe)) (##cdr _%e5119151214%_))))
                   (if (gx#stx-null? _%tl5118951221%_)
                       ((lambda (_%L51224%_ _%L51226%_)
                          (let ()
                            (if _%nil-check?51061%_
                                (_%loop51054%_
                                 _%rest51079%_
                                 _%type51179%_
                                 (cons _%L51224%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L51226%_ '()))
                                             '()))
                                 '#f)
                                (_%loop51054%_
                                 _%rest51079%_
                                 _%type51179%_
                                 (cons _%L51224%_ (cons _%L51226%_ '()))
                                 '#f))))
                        _%hd5119051218%_
                        _%hd5118751208%_)
                       (_%g5118251197%_ _%g5118351201%_))))
               (_%g5118251197%_ _%g5118351201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5118251197%_
                                                _%g5118351201%_)))))
                                   (_%g5118151244%_
                                    (list _%object51060%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx50885%_
                                             _%type51179%_
                                             _%part51081%_))))))
                               _%$e51172%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx50885%_
                                 _%L51012%_
                                 _%part51081%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51059%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50885%_
                         _%type51059%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5106251069%_))
                                              (let ((_%hd5106651258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5106251069%_)))
                                                    (_%tl5106751261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5106251069%_))))
                                                (let* ((_%part51264%_
                                                        _%hd5106651258%_)
                                                       (_%rest51267%_
                                                        _%tl5106751261%_))
                                                  (_%K5106551254%_
                                                   _%rest51267%_
                                                   _%part51264%_)))
                                              (_%E5106451075%_)))))
                                    _%$e51047%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx50885%_)))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5102651033%_))
                         (let ((_%hd5103051276%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5102651033%_)))
                               (_%tl5103151279%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5102651033%_))))
                           (let* ((_%var51282%_ _%hd5103051276%_)
                                  (_%parts51285%_ _%tl5103151279%_))
                             (_%K5102951272%_ _%parts51285%_ _%var51282%_)))
                         (_%E5102851039%_)))))
                (_%__kont7581775818%_
                 (lambda (_%L50955%_ _%L50957%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx50885%_)))))
            (let ((_%__match7583975840%_
                   (lambda (_%e5089550980%_
                            _%hd5089450984%_
                            _%tl5089350987%_
                            _%e5089850990%_
                            _%hd5089750994%_
                            _%tl5089650997%_
                            _%e5090151000%_
                            _%hd5090051004%_
                            _%tl5089951007%_)
                     (let ((_%L51010%_ _%hd5090051004%_)
                           (_%L51012%_ _%hd5089750994%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L51012%_))
                           (_%__kont7581575816%_ _%L51010%_ _%L51012%_)
                           (_%__kont7581775818%_
                            _%hd5090051004%_
                            _%hd5089750994%_))))))
              (if (gx#stx-pair? _%__stx7581275813%_)
                  (let ((_%e5089550980%_ (gx#syntax-e _%__stx7581275813%_)))
                    (let ((_%tl5089350987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5089550980%_)))
                          (_%hd5089450984%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5089550980%_))))
                      (if (gx#stx-pair? _%tl5089350987%_)
                          (let ((_%e5089850990%_
                                 (gx#syntax-e _%tl5089350987%_)))
                            (let ((_%tl5089650997%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5089850990%_)))
                                  (_%hd5089750994%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5089850990%_))))
                              (if (gx#stx-pair? _%tl5089650997%_)
                                  (let ((_%e5090151000%_
                                         (gx#syntax-e _%tl5089650997%_)))
                                    (let ((_%tl5089951007%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5090151000%_)))
                                          (_%hd5090051004%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5090151000%_))))
                                      (if (gx#stx-null? _%tl5089951007%_)
                                          (_%__match7583975840%_
                                           _%e5089550980%_
                                           _%hd5089450984%_
                                           _%tl5089350987%_
                                           _%e5089850990%_
                                           _%hd5089750994%_
                                           _%tl5089650997%_
                                           _%e5090151000%_
                                           _%hd5090051004%_
                                           _%tl5089951007%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5088950918%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5088950918%_)))))
                          (let () (declare (not safe)) (_%g5088950918%_)))))
                  (let () (declare (not safe)) (_%g5088950918%_))))))))))
