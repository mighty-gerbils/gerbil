(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g100247_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100248_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100249_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100252_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100253_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100256_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100257_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100258_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100259_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100263_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100264_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100265_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100266_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100270_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51604%_)
        (let* ((_%__stx9358193582%_ _%stx51604%_)
               (_%g5161351822%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9358193582%_))))
          (let ((_%__kont9358493585%_
                 (lambda (_%g5161552714%_
                          _%g5161652716%_
                          _%g5161752717%_
                          _%g5161852718%_
                          _%g5161952719%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5161952719%_
                                     (cons _%g5161852718%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5161952719%_
                                                       (cons _%g5161752717%_
                                                             (cons _%g5161652716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5276252765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5276352768%_)
                  (cons _%g5276252765%_ _%g5276352768%_))
                '()
                _%g5161552714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9358893589%_
                 (lambda (_%g5164752560%_
                          _%g5164852562%_
                          _%g5164952563%_
                          _%g5165052564%_
                          _%g5165152565%_
                          _%g5165252566%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5165252566%_
                                     (cons _%g5165152565%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5165252566%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5165052564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5165252566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5164952563%_
                                       (cons _%g5164852562%_ '())))
                           (foldr (lambda (_%g5261052613%_ _%g5261152616%_)
                                    (cons _%g5261052613%_ _%g5261152616%_))
                                  '()
                                  _%g5164752560%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9359293593%_
                 (lambda (_%g5168652379%_
                          _%g5168752381%_
                          _%g5168852382%_
                          _%g5168952383%_)
                   (let ((_%meta52420%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51604%_
                             _%g5168752381%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52420%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5168952383%_
                                           (cons _%g5168852382%_
                                                 (cons _%g5168752381%_ '())))
                                     (foldr (lambda (_%g5242452427%_
                                                     _%g5242552430%_)
                                              (cons _%g5242452427%_
                                                    _%g5242552430%_))
                                            '()
                                            _%g5168652379%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52420%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5168952383%_
                                               (cons _%g5168852382%_
                                                     (cons _%g5168752381%_
                                                           '())))
                                         (foldr (lambda (_%g5243452437%_
                                                         _%g5243552440%_)
                                                  (cons _%g5243452437%_
                                                        _%g5243552440%_))
                                                '()
                                                _%g5168652379%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51604%_
                              _%g5168752381%_
                              _%meta52420%_))))))
                (_%__kont9359693597%_
                 (lambda (_%g5171452259%_ _%g5171552261%_ _%g5171652262%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5171652262%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5171552261%_ '())))
                               (foldr (lambda (_%g5228552288%_ _%g5228652291%_)
                                        (cons _%g5228552288%_ _%g5228652291%_))
                                      '()
                                      _%g5171452259%_)))))
                (_%__kont9360093601%_
                 (lambda (_%g5174152119%_
                          _%g5174252121%_
                          _%g5174352122%_
                          _%g5174452123%_
                          _%g5174552124%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5174552124%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5174452123%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5174552124%_
                                                       (cons _%g5174352122%_
                                                             (cons _%g5174252121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5216552168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5216652171%_)
                  (cons _%g5216552168%_ _%g5216652171%_))
                '()
                _%g5174152119%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9360493605%_
                 (lambda (_%g5177651979%_
                          _%g5177751981%_
                          _%g5177851982%_
                          _%g5177951983%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5177951983%_ _%g5177851982%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5177751981%_
                                                 (foldr (lambda (_%g5200552008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5200652011%_)
                  (cons _%g5200552008%_ _%g5200652011%_))
                '()
                _%g5177651979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9360893609%_
                 (lambda (_%g5180151877%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5189551898%_ _%g5189651901%_)
                                        (cons _%g5189551898%_ _%g5189651901%_))
                                      '()
                                      _%g5180151877%_))))))
            (let* ((_%__match9391493915%_
                    (lambda (_%e5180251829%_
                             _%hd5180351833%_
                             _%tl5180451836%_
                             _%e5180551839%_
                             _%hd5180651843%_
                             _%tl5180751846%_
                             _%__splice9361093611%_
                             _%target5180851849%_
                             _%tl5181051852%_)
                      (letrec ((_%loop5181151855%_
                                (lambda (_%hd5180951859%_ _%body5181551862%_)
                                  (if (gx#stx-pair? _%hd5180951859%_)
                                      (let ((_%e5181251864%_
                                             (gx#syntax-e _%hd5180951859%_)))
                                        (let ((_%lp-tl5181451871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181251864%_)))
                                              (_%lp-hd5181351868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181251864%_))))
                                          (_%loop5181151855%_
                                           _%lp-tl5181451871%_
                                           (cons _%lp-hd5181351868%_
                                                 _%body5181551862%_))))
                                      (let ((_%body5181651874%_
                                             (reverse _%body5181551862%_)))
                                        (_%__kont9360893609%_
                                         _%body5181651874%_))))))
                        (_%loop5181151855%_ _%target5180851849%_ '()))))
                   (_%__match9389293893%_
                    (lambda (_%e5178051911%_
                             _%hd5178151915%_
                             _%tl5178251918%_
                             _%e5178351921%_
                             _%hd5178451925%_
                             _%tl5178551928%_
                             _%e5178651931%_
                             _%hd5178751935%_
                             _%tl5178851938%_
                             _%e5178951941%_
                             _%hd5179051945%_
                             _%tl5179151948%_
                             _%__splice9360693607%_
                             _%target5179251951%_
                             _%tl5179451954%_)
                      (letrec ((_%loop5179551957%_
                                (lambda (_%hd5179351961%_ _%body5179951964%_)
                                  (if (gx#stx-pair? _%hd5179351961%_)
                                      (let ((_%e5179651966%_
                                             (gx#syntax-e _%hd5179351961%_)))
                                        (let ((_%lp-tl5179851973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5179651966%_)))
                                              (_%lp-hd5179751970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5179651966%_))))
                                          (_%loop5179551957%_
                                           _%lp-tl5179851973%_
                                           (cons _%lp-hd5179751970%_
                                                 _%body5179951964%_))))
                                      (let ((_%body5180051976%_
                                             (reverse _%body5179951964%_)))
                                        (let ((_%g5177651979%_
                                               _%body5180051976%_)
                                              (_%g5177751981%_
                                               _%tl5178851938%_)
                                              (_%g5177851982%_
                                               _%tl5179151948%_)
                                              (_%g5177951983%_
                                               _%hd5179051945%_))
                                          (if (gx#identifier? _%g5177951983%_)
                                              (_%__kont9360493605%_
                                               _%g5177651979%_
                                               _%g5177751981%_
                                               _%g5177851982%_
                                               _%g5177951983%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_)))))))))
                        (_%loop5179551957%_ _%target5179251951%_ '()))))
                   (_%__match9387893879%_
                    (lambda (_%e5178051911%_
                             _%hd5178151915%_
                             _%tl5178251918%_
                             _%e5178351921%_
                             _%hd5178451925%_
                             _%tl5178551928%_
                             _%e5178651931%_
                             _%hd5178751935%_
                             _%tl5178851938%_)
                      (if (gx#stx-pair? _%hd5178751935%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5178751935%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (if (gx#stx-pair/null? _%tl5178551928%_)
                                  (let ((_%__splice9360693607%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5178551928%_
                                          '0)))
                                    (let ((_%tl5179451954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '1)))
                                          (_%target5179251951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5179451954%_)
                                          (_%__match9389293893%_
                                           _%e5178051911%_
                                           _%hd5178151915%_
                                           _%tl5178251918%_
                                           _%e5178351921%_
                                           _%hd5178451925%_
                                           _%tl5178551928%_
                                           _%e5178651931%_
                                           _%hd5178751935%_
                                           _%tl5178851938%_
                                           _%e5178951941%_
                                           _%hd5179051945%_
                                           _%tl5179151948%_
                                           _%__splice9360693607%_
                                           _%target5179251951%_
                                           _%tl5179451954%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                   (_%__match9386093861%_
                    (lambda (_%e5174652021%_
                             _%hd5174752025%_
                             _%tl5174852028%_
                             _%e5174952031%_
                             _%hd5175052035%_
                             _%tl5175152038%_
                             _%e5175252041%_
                             _%hd5175352045%_
                             _%tl5175452048%_
                             _%e5175552051%_
                             _%hd5175652055%_
                             _%tl5175752058%_
                             _%e5175852061%_
                             _%hd5175952065%_
                             _%tl5176052068%_
                             _%e5176152071%_
                             _%hd5176252075%_
                             _%tl5176352078%_
                             _%e5176452081%_
                             _%hd5176552085%_
                             _%tl5176652088%_
                             _%__splice9360293603%_
                             _%target5176752091%_
                             _%tl5176952094%_)
                      (letrec ((_%loop5177052097%_
                                (lambda (_%hd5176852101%_ _%body5177452104%_)
                                  (if (gx#stx-pair? _%hd5176852101%_)
                                      (let ((_%e5177152106%_
                                             (gx#syntax-e _%hd5176852101%_)))
                                        (let ((_%lp-tl5177352113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5177152106%_)))
                                              (_%lp-hd5177252110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5177152106%_))))
                                          (_%loop5177052097%_
                                           _%lp-tl5177352113%_
                                           (cons _%lp-hd5177252110%_
                                                 _%body5177452104%_))))
                                      (let ((_%body5177552116%_
                                             (reverse _%body5177452104%_)))
                                        (let ((_%g5174152119%_
                                               _%body5177552116%_)
                                              (_%g5174252121%_
                                               _%hd5176552085%_)
                                              (_%g5174352122%_
                                               _%hd5176252075%_)
                                              (_%g5174452123%_
                                               _%hd5175952065%_)
                                              (_%g5174552124%_
                                               _%hd5175352045%_))
                                          (if (and (gx#identifier?
                                                    _%g5174552124%_)
                                                   (gx#identifier?
                                                    _%g5174252121%_)
                                                   (gx#identifier?
                                                    _%g5174352122%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5174352122%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5174352122%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5174352122%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5174352122%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9360093601%_
                                               _%g5174152119%_
                                               _%g5174252121%_
                                               _%g5174352122%_
                                               _%g5174452123%_
                                               _%g5174552124%_)
                                              (_%__match9387893879%_
                                               _%e5174652021%_
                                               _%hd5174752025%_
                                               _%tl5174852028%_
                                               _%e5174952031%_
                                               _%hd5175052035%_
                                               _%tl5175152038%_
                                               _%e5175252041%_
                                               _%hd5175352045%_
                                               _%tl5175452048%_))))))))
                        (_%loop5177052097%_ _%target5176752091%_ '()))))
                   (_%__match9380493805%_
                    (lambda (_%e5171752181%_
                             _%hd5171852185%_
                             _%tl5171952188%_
                             _%e5172052191%_
                             _%hd5172152195%_
                             _%tl5172252198%_
                             _%e5172352201%_
                             _%hd5172452205%_
                             _%tl5172552208%_
                             _%e5172652211%_
                             _%hd5172752215%_
                             _%tl5172852218%_
                             _%e5172952221%_
                             _%hd5173052225%_
                             _%tl5173152228%_
                             _%__splice9359893599%_
                             _%target5173252231%_
                             _%tl5173452234%_)
                      (letrec ((_%loop5173552237%_
                                (lambda (_%hd5173352241%_ _%body5173952244%_)
                                  (if (gx#stx-pair? _%hd5173352241%_)
                                      (let ((_%e5173652246%_
                                             (gx#syntax-e _%hd5173352241%_)))
                                        (let ((_%lp-tl5173852253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5173652246%_)))
                                              (_%lp-hd5173752250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5173652246%_))))
                                          (_%loop5173552237%_
                                           _%lp-tl5173852253%_
                                           (cons _%lp-hd5173752250%_
                                                 _%body5173952244%_))))
                                      (let ((_%body5174052256%_
                                             (reverse _%body5173952244%_)))
                                        (let ((_%g5171452259%_
                                               _%body5174052256%_)
                                              (_%g5171552261%_
                                               _%hd5173052225%_)
                                              (_%g5171652262%_
                                               _%hd5172452205%_))
                                          (if (gx#identifier? _%g5171652262%_)
                                              (_%__kont9359693597%_
                                               _%g5171452259%_
                                               _%g5171552261%_
                                               _%g5171652262%_)
                                              (_%__match9387893879%_
                                               _%e5171752181%_
                                               _%hd5171852185%_
                                               _%tl5171952188%_
                                               _%e5172052191%_
                                               _%hd5172152195%_
                                               _%tl5172252198%_
                                               _%e5172352201%_
                                               _%hd5172452205%_
                                               _%tl5172552208%_))))))))
                        (_%loop5173552237%_ _%target5173252231%_ '()))))
                   (_%__match9378493785%_
                    (lambda (_%e5171752181%_
                             _%hd5171852185%_
                             _%tl5171952188%_
                             _%e5172052191%_
                             _%hd5172152195%_
                             _%tl5172252198%_
                             _%e5172352201%_
                             _%hd5172452205%_
                             _%tl5172552208%_
                             _%e5172652211%_
                             _%hd5172752215%_
                             _%tl5172852218%_)
                      (if (gx#identifier? _%hd5172752215%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100247_|
                               _%hd5172752215%_)
                              (if (gx#stx-pair? _%tl5172852218%_)
                                  (let ((_%e5172952221%_
                                         (gx#syntax-e _%tl5172852218%_)))
                                    (let ((_%tl5173152228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5172952221%_)))
                                          (_%hd5173052225%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5172952221%_))))
                                      (if (gx#stx-null? _%tl5173152228%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5172252198%_)
                                              (let ((_%__splice9359893599%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5172252198%_
                                                      '0)))
                                                (let ((_%tl5173452234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9359893599%_
                                                          '1)))
                                                      (_%target5173252231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9359893599%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5173452234%_)
                                                      (_%__match9380493805%_
                                                       _%e5171752181%_
                                                       _%hd5171852185%_
                                                       _%tl5171952188%_
                                                       _%e5172052191%_
                                                       _%hd5172152195%_
                                                       _%tl5172252198%_
                                                       _%e5172352201%_
                                                       _%hd5172452205%_
                                                       _%tl5172552208%_
                                                       _%e5172652211%_
                                                       _%hd5172752215%_
                                                       _%tl5172852218%_
                                                       _%e5172952221%_
                                                       _%hd5173052225%_
                                                       _%tl5173152228%_
                                                       _%__splice9359893599%_
                                                       _%target5173252231%_
                                                       _%tl5173452234%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5172452205%_)
                                                          (let ((_%e5178951941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5172452205%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5172452205%_)
                                                  (let ((_%e5178951941%_
                                                         (gx#syntax-e
                                                          _%hd5172452205%_)))
                                                    (let ((_%tl5179151948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178951941%_)))
                                                          (_%hd5179051945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178951941%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5161351822%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))
                                          (if (gx#stx-pair? _%tl5173152228%_)
                                              (let ((_%e5176152071%_
                                                     (gx#syntax-e
                                                      _%tl5173152228%_)))
                                                (let ((_%tl5176352078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5176152071%_)))
                                                      (_%hd5176252075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5176152071%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5176352078%_)
                                                      (let ((_%e5176452081%_
                                                             (gx#syntax-e
                                                              _%tl5176352078%_)))
                                                        (let ((_%tl5176652088%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5176452081%_)))
                      (_%hd5176552085%_
                       (let () (declare (not safe)) (##car _%e5176452081%_))))
                  (if (gx#stx-null? _%tl5176652088%_)
                      (if (gx#stx-pair/null? _%tl5172252198%_)
                          (let ((_%__splice9360293603%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5172252198%_
                                  '0)))
                            (let ((_%tl5176952094%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360293603%_ '1)))
                                  (_%target5176752091%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360293603%_
                                      '0))))
                              (if (gx#stx-null? _%tl5176952094%_)
                                  (_%__match9386093861%_
                                   _%e5171752181%_
                                   _%hd5171852185%_
                                   _%tl5171952188%_
                                   _%e5172052191%_
                                   _%hd5172152195%_
                                   _%tl5172252198%_
                                   _%e5172352201%_
                                   _%hd5172452205%_
                                   _%tl5172552208%_
                                   _%e5172652211%_
                                   _%hd5172752215%_
                                   _%tl5172852218%_
                                   _%e5172952221%_
                                   _%hd5173052225%_
                                   _%tl5173152228%_
                                   _%e5176152071%_
                                   _%hd5176252075%_
                                   _%tl5176352078%_
                                   _%e5176452081%_
                                   _%hd5176552085%_
                                   _%tl5176652088%_
                                   _%__splice9360293603%_
                                   _%target5176752091%_
                                   _%tl5176952094%_)
                                  (if (gx#stx-pair? _%hd5172452205%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5172452205%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))
                          (if (gx#stx-pair? _%hd5172452205%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5172452205%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                      (if (gx#stx-pair? _%hd5172452205%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5172452205%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (if (gx#stx-pair/null? _%tl5172252198%_)
                                  (let ((_%__splice9360693607%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5172252198%_
                                          '0)))
                                    (let ((_%tl5179451954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '1)))
                                          (_%target5179251951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5179451954%_)
                                          (_%__match9389293893%_
                                           _%e5171752181%_
                                           _%hd5171852185%_
                                           _%tl5171952188%_
                                           _%e5172052191%_
                                           _%hd5172152195%_
                                           _%tl5172252198%_
                                           _%e5172352201%_
                                           _%hd5172452205%_
                                           _%tl5172552208%_
                                           _%e5178951941%_
                                           _%hd5179051945%_
                                           _%tl5179151948%_
                                           _%__splice9360693607%_
                                           _%target5179251951%_
                                           _%tl5179451954%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_))))))
              (if (gx#stx-pair? _%hd5172452205%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5172452205%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5172252198%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5172252198%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5171752181%_
                                   _%hd5171852185%_
                                   _%tl5171952188%_
                                   _%e5172052191%_
                                   _%hd5172152195%_
                                   _%tl5172252198%_
                                   _%e5172352201%_
                                   _%hd5172452205%_
                                   _%tl5172552208%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5172452205%_)
                                                  (let ((_%e5178951941%_
                                                         (gx#syntax-e
                                                          _%hd5172452205%_)))
                                                    (let ((_%tl5179151948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178951941%_)))
                                                          (_%hd5179051945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178951941%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5172252198%_)
                                                          (let ((_%__splice9360693607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5172252198%_ '0)))
                    (let ((_%tl5179451954%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '1)))
                          (_%target5179251951%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '0))))
                      (if (gx#stx-null? _%tl5179451954%_)
                          (_%__match9389293893%_
                           _%e5171752181%_
                           _%hd5171852185%_
                           _%tl5171952188%_
                           _%e5172052191%_
                           _%hd5172152195%_
                           _%tl5172252198%_
                           _%e5172352201%_
                           _%hd5172452205%_
                           _%tl5172552208%_
                           _%e5178951941%_
                           _%hd5179051945%_
                           _%tl5179151948%_
                           _%__splice9360693607%_
                           _%target5179251951%_
                           _%tl5179451954%_)
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))))
                                  (if (gx#stx-pair? _%hd5172452205%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5172452205%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5172252198%_)
                                              (let ((_%__splice9360693607%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5172252198%_
                                                      '0)))
                                                (let ((_%tl5179451954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '1)))
                                                      (_%target5179251951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5179451954%_)
                                                      (_%__match9389293893%_
                                                       _%e5171752181%_
                                                       _%hd5171852185%_
                                                       _%tl5171952188%_
                                                       _%e5172052191%_
                                                       _%hd5172152195%_
                                                       _%tl5172252198%_
                                                       _%e5172352201%_
                                                       _%hd5172452205%_
                                                       _%tl5172552208%_
                                                       _%e5178951941%_
                                                       _%hd5179051945%_
                                                       _%tl5179151948%_
                                                       _%__splice9360693607%_
                                                       _%target5179251951%_
                                                       _%tl5179451954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5161351822%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                              (if (gx#stx-pair? _%hd5172452205%_)
                                  (let ((_%e5178951941%_
                                         (gx#syntax-e _%hd5172452205%_)))
                                    (let ((_%tl5179151948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5178951941%_)))
                                          (_%hd5179051945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5178951941%_))))
                                      (if (gx#stx-pair/null? _%tl5172252198%_)
                                          (let ((_%__splice9360693607%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5172252198%_
                                                  '0)))
                                            (let ((_%tl5179451954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9360693607%_
                                                      '1)))
                                                  (_%target5179251951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9360693607%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5179451954%_)
                                                  (_%__match9389293893%_
                                                   _%e5171752181%_
                                                   _%hd5171852185%_
                                                   _%tl5171952188%_
                                                   _%e5172052191%_
                                                   _%hd5172152195%_
                                                   _%tl5172252198%_
                                                   _%e5172352201%_
                                                   _%hd5172452205%_
                                                   _%tl5172552208%_
                                                   _%e5178951941%_
                                                   _%hd5179051945%_
                                                   _%tl5179151948%_
                                                   _%__splice9360693607%_
                                                   _%target5179251951%_
                                                   _%tl5179451954%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                          (if (gx#stx-pair? _%hd5172452205%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5172452205%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (if (gx#stx-pair/null? _%tl5172252198%_)
                                      (let ((_%__splice9360693607%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5172252198%_
                                              '0)))
                                        (let ((_%tl5179451954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9360693607%_
                                                  '1)))
                                              (_%target5179251951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9360693607%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5179451954%_)
                                              (_%__match9389293893%_
                                               _%e5171752181%_
                                               _%hd5171852185%_
                                               _%tl5171952188%_
                                               _%e5172052191%_
                                               _%hd5172152195%_
                                               _%tl5172252198%_
                                               _%e5172352201%_
                                               _%hd5172452205%_
                                               _%tl5172552208%_
                                               _%e5178951941%_
                                               _%hd5179051945%_
                                               _%tl5179151948%_
                                               _%__splice9360693607%_
                                               _%target5179251951%_
                                               _%tl5179451954%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_))))))
                   (_%__match9376093761%_
                    (lambda (_%e5169052301%_
                             _%hd5169152305%_
                             _%tl5169252308%_
                             _%e5169352311%_
                             _%hd5169452315%_
                             _%tl5169552318%_
                             _%e5169652321%_
                             _%hd5169752325%_
                             _%tl5169852328%_
                             _%e5169952331%_
                             _%hd5170052335%_
                             _%tl5170152338%_
                             _%e5170252341%_
                             _%hd5170352345%_
                             _%tl5170452348%_
                             _%__splice9359493595%_
                             _%target5170552351%_
                             _%tl5170752354%_)
                      (letrec ((_%loop5170852357%_
                                (lambda (_%hd5170652361%_ _%body5171252364%_)
                                  (if (gx#stx-pair? _%hd5170652361%_)
                                      (let ((_%e5170952366%_
                                             (gx#syntax-e _%hd5170652361%_)))
                                        (let ((_%lp-tl5171152373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5170952366%_)))
                                              (_%lp-hd5171052370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5170952366%_))))
                                          (_%loop5170852357%_
                                           _%lp-tl5171152373%_
                                           (cons _%lp-hd5171052370%_
                                                 _%body5171252364%_))))
                                      (let ((_%body5171352376%_
                                             (reverse _%body5171252364%_)))
                                        (let ((_%g5168652379%_
                                               _%body5171352376%_)
                                              (_%g5168752381%_
                                               _%hd5170352345%_)
                                              (_%g5168852382%_
                                               _%hd5170052335%_)
                                              (_%g5168952383%_
                                               _%hd5169752325%_))
                                          (if (and (gx#identifier?
                                                    _%g5168952383%_)
                                                   (gx#identifier?
                                                    _%g5168752381%_)
                                                   (gx#identifier?
                                                    _%g5168852382%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5168852382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5168852382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5168852382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5168852382%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9359293593%_
                                               _%g5168652379%_
                                               _%g5168752381%_
                                               _%g5168852382%_
                                               _%g5168952383%_)
                                              (_%__match9378493785%_
                                               _%e5169052301%_
                                               _%hd5169152305%_
                                               _%tl5169252308%_
                                               _%e5169352311%_
                                               _%hd5169452315%_
                                               _%tl5169552318%_
                                               _%e5169652321%_
                                               _%hd5169752325%_
                                               _%tl5169852328%_
                                               _%e5169952331%_
                                               _%hd5170052335%_
                                               _%tl5170152338%_))))))))
                        (_%loop5170852357%_ _%target5170552351%_ '()))))
                   (_%__match9372093721%_
                    (lambda (_%e5165352452%_
                             _%hd5165452456%_
                             _%tl5165552459%_
                             _%e5165652462%_
                             _%hd5165752466%_
                             _%tl5165852469%_
                             _%e5165952472%_
                             _%hd5166052476%_
                             _%tl5166152479%_
                             _%e5166252482%_
                             _%hd5166352486%_
                             _%tl5166452489%_
                             _%e5166552492%_
                             _%hd5166652496%_
                             _%tl5166752499%_
                             _%e5166852502%_
                             _%hd5166952506%_
                             _%tl5167052509%_
                             _%e5167152512%_
                             _%hd5167252516%_
                             _%tl5167352519%_
                             _%e5167452522%_
                             _%hd5167552526%_
                             _%tl5167652529%_
                             _%__splice9359093591%_
                             _%target5167752532%_
                             _%tl5167952535%_)
                      (letrec ((_%loop5168052538%_
                                (lambda (_%hd5167852542%_ _%body5168452545%_)
                                  (if (gx#stx-pair? _%hd5167852542%_)
                                      (let ((_%e5168152547%_
                                             (gx#syntax-e _%hd5167852542%_)))
                                        (let ((_%lp-tl5168352554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5168152547%_)))
                                              (_%lp-hd5168252551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5168152547%_))))
                                          (_%loop5168052538%_
                                           _%lp-tl5168352554%_
                                           (cons _%lp-hd5168252551%_
                                                 _%body5168452545%_))))
                                      (let ((_%body5168552557%_
                                             (reverse _%body5168452545%_)))
                                        (let ((_%g5164752560%_
                                               _%body5168552557%_)
                                              (_%g5164852562%_
                                               _%hd5167552526%_)
                                              (_%g5164952563%_
                                               _%hd5167252516%_)
                                              (_%g5165052564%_
                                               _%hd5166952506%_)
                                              (_%g5165152565%_
                                               _%hd5166352486%_)
                                              (_%g5165252566%_
                                               _%hd5166052476%_))
                                          (if (and (gx#identifier?
                                                    _%g5165252566%_)
                                                   (gx#identifier?
                                                    _%g5164852562%_)
                                                   (gx#identifier?
                                                    _%g5164952563%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5164952563%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5164952563%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5164952563%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5164952563%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9358893589%_
                                               _%g5164752560%_
                                               _%g5164852562%_
                                               _%g5164952563%_
                                               _%g5165052564%_
                                               _%g5165152565%_
                                               _%g5165252566%_)
                                              (_%__match9378493785%_
                                               _%e5165352452%_
                                               _%hd5165452456%_
                                               _%tl5165552459%_
                                               _%e5165652462%_
                                               _%hd5165752466%_
                                               _%tl5165852469%_
                                               _%e5165952472%_
                                               _%hd5166052476%_
                                               _%tl5166152479%_
                                               _%e5166252482%_
                                               _%hd5166352486%_
                                               _%tl5166452489%_))))))))
                        (_%loop5168052538%_ _%target5167752532%_ '()))))
                   (_%__match9368893689%_
                    (lambda (_%e5165352452%_
                             _%hd5165452456%_
                             _%tl5165552459%_
                             _%e5165652462%_
                             _%hd5165752466%_
                             _%tl5165852469%_
                             _%e5165952472%_
                             _%hd5166052476%_
                             _%tl5166152479%_
                             _%e5166252482%_
                             _%hd5166352486%_
                             _%tl5166452489%_
                             _%e5166552492%_
                             _%hd5166652496%_
                             _%tl5166752499%_)
                      (if (gx#identifier? _%hd5166652496%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100248_|
                               _%hd5166652496%_)
                              (if (gx#stx-pair? _%tl5166752499%_)
                                  (let ((_%e5166852502%_
                                         (gx#syntax-e _%tl5166752499%_)))
                                    (let ((_%tl5167052509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5166852502%_)))
                                          (_%hd5166952506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5166852502%_))))
                                      (if (gx#stx-pair? _%tl5167052509%_)
                                          (let ((_%e5167152512%_
                                                 (gx#syntax-e
                                                  _%tl5167052509%_)))
                                            (let ((_%tl5167352519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5167152512%_)))
                                                  (_%hd5167252516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5167152512%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5167352519%_)
                                                  (let ((_%e5167452522%_
                                                         (gx#syntax-e
                                                          _%tl5167352519%_)))
                                                    (let ((_%tl5167652529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5167452522%_)))
                                                          (_%hd5167552526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5167452522%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5167652529%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5165852469%_)
                                                              (let ((_%__splice9359093591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5165852469%_
                              '0)))
                        (let ((_%tl5167952535%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9359093591%_ '1)))
                              (_%target5167752532%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9359093591%_ '0))))
                          (if (gx#stx-null? _%tl5167952535%_)
                              (_%__match9372093721%_
                               _%e5165352452%_
                               _%hd5165452456%_
                               _%tl5165552459%_
                               _%e5165652462%_
                               _%hd5165752466%_
                               _%tl5165852469%_
                               _%e5165952472%_
                               _%hd5166052476%_
                               _%tl5166152479%_
                               _%e5166252482%_
                               _%hd5166352486%_
                               _%tl5166452489%_
                               _%e5166552492%_
                               _%hd5166652496%_
                               _%tl5166752499%_
                               _%e5166852502%_
                               _%hd5166952506%_
                               _%tl5167052509%_
                               _%e5167152512%_
                               _%hd5167252516%_
                               _%tl5167352519%_
                               _%e5167452522%_
                               _%hd5167552526%_
                               _%tl5167652529%_
                               _%__splice9359093591%_
                               _%target5167752532%_
                               _%tl5167952535%_)
                              (if (gx#stx-pair? _%hd5166052476%_)
                                  (let ((_%e5178951941%_
                                         (gx#syntax-e _%hd5166052476%_)))
                                    (let ((_%tl5179151948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5178951941%_)))
                                          (_%hd5179051945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5178951941%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))))
                      (if (gx#stx-pair? _%hd5166052476%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5166052476%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                  (if (gx#stx-pair? _%hd5166052476%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5166052476%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (if (gx#stx-pair/null? _%tl5165852469%_)
                              (let ((_%__splice9360693607%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5165852469%_
                                      '0)))
                                (let ((_%tl5179451954%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '1)))
                                      (_%target5179251951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5179451954%_)
                                      (_%__match9389293893%_
                                       _%e5165352452%_
                                       _%hd5165452456%_
                                       _%tl5165552459%_
                                       _%e5165652462%_
                                       _%hd5165752466%_
                                       _%tl5165852469%_
                                       _%e5165952472%_
                                       _%hd5166052476%_
                                       _%tl5166152479%_
                                       _%e5178951941%_
                                       _%hd5179051945%_
                                       _%tl5179151948%_
                                       _%__splice9360693607%_
                                       _%target5179251951%_
                                       _%tl5179451954%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5166352486%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100247_|
                                                           _%hd5166352486%_)
                                                          (if (gx#stx-null?
                                                               _%tl5167352519%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5165852469%_)
                          (let ((_%__splice9360293603%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5165852469%_
                                  '0)))
                            (let ((_%tl5176952094%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360293603%_ '1)))
                                  (_%target5176752091%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360293603%_
                                      '0))))
                              (if (gx#stx-null? _%tl5176952094%_)
                                  (_%__match9386093861%_
                                   _%e5165352452%_
                                   _%hd5165452456%_
                                   _%tl5165552459%_
                                   _%e5165652462%_
                                   _%hd5165752466%_
                                   _%tl5165852469%_
                                   _%e5165952472%_
                                   _%hd5166052476%_
                                   _%tl5166152479%_
                                   _%e5166252482%_
                                   _%hd5166352486%_
                                   _%tl5166452489%_
                                   _%e5166552492%_
                                   _%hd5166652496%_
                                   _%tl5166752499%_
                                   _%e5166852502%_
                                   _%hd5166952506%_
                                   _%tl5167052509%_
                                   _%e5167152512%_
                                   _%hd5167252516%_
                                   _%tl5167352519%_
                                   _%__splice9360293603%_
                                   _%target5176752091%_
                                   _%tl5176952094%_)
                                  (if (gx#stx-pair? _%hd5166052476%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5166052476%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))
                          (if (gx#stx-pair? _%hd5166052476%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5166052476%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                      (if (gx#stx-pair? _%hd5166052476%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5166052476%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (if (gx#stx-pair/null? _%tl5165852469%_)
                                  (let ((_%__splice9360693607%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5165852469%_
                                          '0)))
                                    (let ((_%tl5179451954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '1)))
                                          (_%target5179251951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5179451954%_)
                                          (_%__match9389293893%_
                                           _%e5165352452%_
                                           _%hd5165452456%_
                                           _%tl5165552459%_
                                           _%e5165652462%_
                                           _%hd5165752466%_
                                           _%tl5165852469%_
                                           _%e5165952472%_
                                           _%hd5166052476%_
                                           _%tl5166152479%_
                                           _%e5178951941%_
                                           _%hd5179051945%_
                                           _%tl5179151948%_
                                           _%__splice9360693607%_
                                           _%target5179251951%_
                                           _%tl5179451954%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                  (if (gx#stx-pair? _%hd5166052476%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5166052476%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (if (gx#stx-pair/null? _%tl5165852469%_)
                              (let ((_%__splice9360693607%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5165852469%_
                                      '0)))
                                (let ((_%tl5179451954%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '1)))
                                      (_%target5179251951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5179451954%_)
                                      (_%__match9389293893%_
                                       _%e5165352452%_
                                       _%hd5165452456%_
                                       _%tl5165552459%_
                                       _%e5165652462%_
                                       _%hd5165752466%_
                                       _%tl5165852469%_
                                       _%e5165952472%_
                                       _%hd5166052476%_
                                       _%tl5166152479%_
                                       _%e5178951941%_
                                       _%hd5179051945%_
                                       _%tl5179151948%_
                                       _%__splice9360693607%_
                                       _%target5179251951%_
                                       _%tl5179451954%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
              (if (gx#stx-pair? _%hd5166052476%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5166052476%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5165852469%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5165852469%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5165352452%_
                                   _%hd5165452456%_
                                   _%tl5165552459%_
                                   _%e5165652462%_
                                   _%hd5165752466%_
                                   _%tl5165852469%_
                                   _%e5165952472%_
                                   _%hd5166052476%_
                                   _%tl5166152479%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5166052476%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5166052476%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5165852469%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5165852469%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5165352452%_
                       _%hd5165452456%_
                       _%tl5165552459%_
                       _%e5165652462%_
                       _%hd5165752466%_
                       _%tl5165852469%_
                       _%e5165952472%_
                       _%hd5166052476%_
                       _%tl5166152479%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))))
                                  (if (gx#stx-null? _%tl5166752499%_)
                                      (if (gx#stx-pair/null? _%tl5165852469%_)
                                          (let ((_%__splice9359493595%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5165852469%_
                                                  '0)))
                                            (let ((_%tl5170752354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9359493595%_
                                                      '1)))
                                                  (_%target5170552351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9359493595%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5170752354%_)
                                                  (_%__match9376093761%_
                                                   _%e5165352452%_
                                                   _%hd5165452456%_
                                                   _%tl5165552459%_
                                                   _%e5165652462%_
                                                   _%hd5165752466%_
                                                   _%tl5165852469%_
                                                   _%e5165952472%_
                                                   _%hd5166052476%_
                                                   _%tl5166152479%_
                                                   _%e5166252482%_
                                                   _%hd5166352486%_
                                                   _%tl5166452489%_
                                                   _%e5166552492%_
                                                   _%hd5166652496%_
                                                   _%tl5166752499%_
                                                   _%__splice9359493595%_
                                                   _%target5170552351%_
                                                   _%tl5170752354%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5166052476%_)
                                                      (let ((_%e5178951941%_
                                                             (gx#syntax-e
                                                              _%hd5166052476%_)))
                                                        (let ((_%tl5179151948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178951941%_)))
                      (_%hd5179051945%_
                       (let () (declare (not safe)) (##car _%e5178951941%_))))
                  (let () (declare (not safe)) (_%g5161351822%_))))
              (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5166052476%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5166052476%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                      (if (gx#stx-pair? _%hd5166052476%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5166052476%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5165852469%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5165852469%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5165352452%_
                                                           _%hd5165452456%_
                                                           _%tl5165552459%_
                                                           _%e5165652462%_
                                                           _%hd5165752466%_
                                                           _%tl5165852469%_
                                                           _%e5165952472%_
                                                           _%hd5166052476%_
                                                           _%tl5166152479%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                              (if (gx#stx-null? _%tl5166752499%_)
                                  (if (gx#stx-pair/null? _%tl5165852469%_)
                                      (let ((_%__splice9359493595%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5165852469%_
                                              '0)))
                                        (let ((_%tl5170752354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9359493595%_
                                                  '1)))
                                              (_%target5170552351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9359493595%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5170752354%_)
                                              (_%__match9376093761%_
                                               _%e5165352452%_
                                               _%hd5165452456%_
                                               _%tl5165552459%_
                                               _%e5165652462%_
                                               _%hd5165752466%_
                                               _%tl5165852469%_
                                               _%e5165952472%_
                                               _%hd5166052476%_
                                               _%tl5166152479%_
                                               _%e5166252482%_
                                               _%hd5166352486%_
                                               _%tl5166452489%_
                                               _%e5166552492%_
                                               _%hd5166652496%_
                                               _%tl5166752499%_
                                               _%__splice9359493595%_
                                               _%target5170552351%_
                                               _%tl5170752354%_)
                                              (if (gx#stx-pair?
                                                   _%hd5166052476%_)
                                                  (let ((_%e5178951941%_
                                                         (gx#syntax-e
                                                          _%hd5166052476%_)))
                                                    (let ((_%tl5179151948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178951941%_)))
                                                          (_%hd5179051945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178951941%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5161351822%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))))
                                      (if (gx#stx-pair? _%hd5166052476%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5166052476%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                  (if (gx#identifier? _%hd5166352486%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100247_|
                                           _%hd5166352486%_)
                                          (if (gx#stx-pair? _%tl5166752499%_)
                                              (let ((_%e5176152071%_
                                                     (gx#syntax-e
                                                      _%tl5166752499%_)))
                                                (let ((_%tl5176352078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5176152071%_)))
                                                      (_%hd5176252075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5176152071%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5176352078%_)
                                                      (let ((_%e5176452081%_
                                                             (gx#syntax-e
                                                              _%tl5176352078%_)))
                                                        (let ((_%tl5176652088%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5176452081%_)))
                      (_%hd5176552085%_
                       (let () (declare (not safe)) (##car _%e5176452081%_))))
                  (if (gx#stx-null? _%tl5176652088%_)
                      (if (gx#stx-pair/null? _%tl5165852469%_)
                          (let ((_%__splice9360293603%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5165852469%_
                                  '0)))
                            (let ((_%tl5176952094%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360293603%_ '1)))
                                  (_%target5176752091%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360293603%_
                                      '0))))
                              (if (gx#stx-null? _%tl5176952094%_)
                                  (_%__match9386093861%_
                                   _%e5165352452%_
                                   _%hd5165452456%_
                                   _%tl5165552459%_
                                   _%e5165652462%_
                                   _%hd5165752466%_
                                   _%tl5165852469%_
                                   _%e5165952472%_
                                   _%hd5166052476%_
                                   _%tl5166152479%_
                                   _%e5166252482%_
                                   _%hd5166352486%_
                                   _%tl5166452489%_
                                   _%e5166552492%_
                                   _%hd5166652496%_
                                   _%tl5166752499%_
                                   _%e5176152071%_
                                   _%hd5176252075%_
                                   _%tl5176352078%_
                                   _%e5176452081%_
                                   _%hd5176552085%_
                                   _%tl5176652088%_
                                   _%__splice9360293603%_
                                   _%target5176752091%_
                                   _%tl5176952094%_)
                                  (if (gx#stx-pair? _%hd5166052476%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5166052476%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))
                          (if (gx#stx-pair? _%hd5166052476%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5166052476%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                      (if (gx#stx-pair? _%hd5166052476%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5166052476%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (if (gx#stx-pair/null? _%tl5165852469%_)
                                  (let ((_%__splice9360693607%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5165852469%_
                                          '0)))
                                    (let ((_%tl5179451954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '1)))
                                          (_%target5179251951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5179451954%_)
                                          (_%__match9389293893%_
                                           _%e5165352452%_
                                           _%hd5165452456%_
                                           _%tl5165552459%_
                                           _%e5165652462%_
                                           _%hd5165752466%_
                                           _%tl5165852469%_
                                           _%e5165952472%_
                                           _%hd5166052476%_
                                           _%tl5166152479%_
                                           _%e5178951941%_
                                           _%hd5179051945%_
                                           _%tl5179151948%_
                                           _%__splice9360693607%_
                                           _%target5179251951%_
                                           _%tl5179451954%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_))))))
              (if (gx#stx-pair? _%hd5166052476%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5166052476%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5165852469%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5165852469%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5165352452%_
                                   _%hd5165452456%_
                                   _%tl5165552459%_
                                   _%e5165652462%_
                                   _%hd5165752466%_
                                   _%tl5165852469%_
                                   _%e5165952472%_
                                   _%hd5166052476%_
                                   _%tl5166152479%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5166052476%_)
                                                  (let ((_%e5178951941%_
                                                         (gx#syntax-e
                                                          _%hd5166052476%_)))
                                                    (let ((_%tl5179151948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178951941%_)))
                                                          (_%hd5179051945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178951941%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5165852469%_)
                                                          (let ((_%__splice9360693607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5165852469%_ '0)))
                    (let ((_%tl5179451954%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '1)))
                          (_%target5179251951%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '0))))
                      (if (gx#stx-null? _%tl5179451954%_)
                          (_%__match9389293893%_
                           _%e5165352452%_
                           _%hd5165452456%_
                           _%tl5165552459%_
                           _%e5165652462%_
                           _%hd5165752466%_
                           _%tl5165852469%_
                           _%e5165952472%_
                           _%hd5166052476%_
                           _%tl5166152479%_
                           _%e5178951941%_
                           _%hd5179051945%_
                           _%tl5179151948%_
                           _%__splice9360693607%_
                           _%target5179251951%_
                           _%tl5179451954%_)
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))
                                          (if (gx#stx-pair? _%hd5166052476%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5166052476%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5165852469%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5165852469%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5165352452%_
                       _%hd5165452456%_
                       _%tl5165552459%_
                       _%e5165652462%_
                       _%hd5165752466%_
                       _%tl5165852469%_
                       _%e5165952472%_
                       _%hd5166052476%_
                       _%tl5166152479%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                      (if (gx#stx-pair? _%hd5166052476%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5166052476%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5165852469%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5165852469%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5165352452%_
                                                           _%hd5165452456%_
                                                           _%tl5165552459%_
                                                           _%e5165652462%_
                                                           _%hd5165752466%_
                                                           _%tl5165852469%_
                                                           _%e5165952472%_
                                                           _%hd5166052476%_
                                                           _%tl5166152479%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))))
                          (if (gx#stx-null? _%tl5166752499%_)
                              (if (gx#stx-pair/null? _%tl5165852469%_)
                                  (let ((_%__splice9359493595%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5165852469%_
                                          '0)))
                                    (let ((_%tl5170752354%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9359493595%_
                                              '1)))
                                          (_%target5170552351%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9359493595%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5170752354%_)
                                          (_%__match9376093761%_
                                           _%e5165352452%_
                                           _%hd5165452456%_
                                           _%tl5165552459%_
                                           _%e5165652462%_
                                           _%hd5165752466%_
                                           _%tl5165852469%_
                                           _%e5165952472%_
                                           _%hd5166052476%_
                                           _%tl5166152479%_
                                           _%e5166252482%_
                                           _%hd5166352486%_
                                           _%tl5166452489%_
                                           _%e5166552492%_
                                           _%hd5166652496%_
                                           _%tl5166752499%_
                                           _%__splice9359493595%_
                                           _%target5170552351%_
                                           _%tl5170752354%_)
                                          (if (gx#stx-pair? _%hd5166052476%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5166052476%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))))
                                  (if (gx#stx-pair? _%hd5166052476%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5166052476%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                              (if (gx#identifier? _%hd5166352486%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100247_|
                                       _%hd5166352486%_)
                                      (if (gx#stx-pair? _%tl5166752499%_)
                                          (let ((_%e5176152071%_
                                                 (gx#syntax-e
                                                  _%tl5166752499%_)))
                                            (let ((_%tl5176352078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5176152071%_)))
                                                  (_%hd5176252075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5176152071%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5176352078%_)
                                                  (let ((_%e5176452081%_
                                                         (gx#syntax-e
                                                          _%tl5176352078%_)))
                                                    (let ((_%tl5176652088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5176452081%_)))
                                                          (_%hd5176552085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5176452081%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5176652088%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5165852469%_)
                                                              (let ((_%__splice9360293603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5165852469%_
                              '0)))
                        (let ((_%tl5176952094%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360293603%_ '1)))
                              (_%target5176752091%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360293603%_ '0))))
                          (if (gx#stx-null? _%tl5176952094%_)
                              (_%__match9386093861%_
                               _%e5165352452%_
                               _%hd5165452456%_
                               _%tl5165552459%_
                               _%e5165652462%_
                               _%hd5165752466%_
                               _%tl5165852469%_
                               _%e5165952472%_
                               _%hd5166052476%_
                               _%tl5166152479%_
                               _%e5166252482%_
                               _%hd5166352486%_
                               _%tl5166452489%_
                               _%e5166552492%_
                               _%hd5166652496%_
                               _%tl5166752499%_
                               _%e5176152071%_
                               _%hd5176252075%_
                               _%tl5176352078%_
                               _%e5176452081%_
                               _%hd5176552085%_
                               _%tl5176652088%_
                               _%__splice9360293603%_
                               _%target5176752091%_
                               _%tl5176952094%_)
                              (if (gx#stx-pair? _%hd5166052476%_)
                                  (let ((_%e5178951941%_
                                         (gx#syntax-e _%hd5166052476%_)))
                                    (let ((_%tl5179151948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5178951941%_)))
                                          (_%hd5179051945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5178951941%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))))
                      (if (gx#stx-pair? _%hd5166052476%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5166052476%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                  (if (gx#stx-pair? _%hd5166052476%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5166052476%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (if (gx#stx-pair/null? _%tl5165852469%_)
                              (let ((_%__splice9360693607%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5165852469%_
                                      '0)))
                                (let ((_%tl5179451954%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '1)))
                                      (_%target5179251951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5179451954%_)
                                      (_%__match9389293893%_
                                       _%e5165352452%_
                                       _%hd5165452456%_
                                       _%tl5165552459%_
                                       _%e5165652462%_
                                       _%hd5165752466%_
                                       _%tl5165852469%_
                                       _%e5165952472%_
                                       _%hd5166052476%_
                                       _%tl5166152479%_
                                       _%e5178951941%_
                                       _%hd5179051945%_
                                       _%tl5179151948%_
                                       _%__splice9360693607%_
                                       _%target5179251951%_
                                       _%tl5179451954%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5166052476%_)
                                                      (let ((_%e5178951941%_
                                                             (gx#syntax-e
                                                              _%hd5166052476%_)))
                                                        (let ((_%tl5179151948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178951941%_)))
                      (_%hd5179051945%_
                       (let () (declare (not safe)) (##car _%e5178951941%_))))
                  (if (gx#stx-pair/null? _%tl5165852469%_)
                      (let ((_%__splice9360693607%_
                             (gx#syntax-split-splice->vector
                              _%tl5165852469%_
                              '0)))
                        (let ((_%tl5179451954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '1)))
                              (_%target5179251951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '0))))
                          (if (gx#stx-null? _%tl5179451954%_)
                              (_%__match9389293893%_
                               _%e5165352452%_
                               _%hd5165452456%_
                               _%tl5165552459%_
                               _%e5165652462%_
                               _%hd5165752466%_
                               _%tl5165852469%_
                               _%e5165952472%_
                               _%hd5166052476%_
                               _%tl5166152479%_
                               _%e5178951941%_
                               _%hd5179051945%_
                               _%tl5179151948%_
                               _%__splice9360693607%_
                               _%target5179251951%_
                               _%tl5179451954%_)
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5166052476%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5166052476%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5165852469%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5165852469%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5165352452%_
                       _%hd5165452456%_
                       _%tl5165552459%_
                       _%e5165652462%_
                       _%hd5165752466%_
                       _%tl5165852469%_
                       _%e5165952472%_
                       _%hd5166052476%_
                       _%tl5166152479%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                      (if (gx#stx-pair? _%hd5166052476%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5166052476%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5165852469%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5165852469%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5165352452%_
                                                           _%hd5165452456%_
                                                           _%tl5165552459%_
                                                           _%e5165652462%_
                                                           _%hd5165752466%_
                                                           _%tl5165852469%_
                                                           _%e5165952472%_
                                                           _%hd5166052476%_
                                                           _%tl5166152479%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                  (if (gx#stx-pair? _%hd5166052476%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5166052476%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5165852469%_)
                                              (let ((_%__splice9360693607%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5165852469%_
                                                      '0)))
                                                (let ((_%tl5179451954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '1)))
                                                      (_%target5179251951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5179451954%_)
                                                      (_%__match9389293893%_
                                                       _%e5165352452%_
                                                       _%hd5165452456%_
                                                       _%tl5165552459%_
                                                       _%e5165652462%_
                                                       _%hd5165752466%_
                                                       _%tl5165852469%_
                                                       _%e5165952472%_
                                                       _%hd5166052476%_
                                                       _%tl5166152479%_
                                                       _%e5178951941%_
                                                       _%hd5179051945%_
                                                       _%tl5179151948%_
                                                       _%__splice9360693607%_
                                                       _%target5179251951%_
                                                       _%tl5179451954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5161351822%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))))
                   (_%__match9365893659%_
                    (lambda (_%e5162052626%_
                             _%hd5162152630%_
                             _%tl5162252633%_
                             _%e5162352636%_
                             _%hd5162452640%_
                             _%tl5162552643%_
                             _%e5162652646%_
                             _%hd5162752650%_
                             _%tl5162852653%_
                             _%e5162952656%_
                             _%hd5163052660%_
                             _%tl5163152663%_
                             _%e5163252666%_
                             _%hd5163352670%_
                             _%tl5163452673%_
                             _%e5163552676%_
                             _%hd5163652680%_
                             _%tl5163752683%_
                             _%__splice9358693587%_
                             _%target5163852686%_
                             _%tl5164052689%_)
                      (letrec ((_%loop5164152692%_
                                (lambda (_%hd5163952696%_ _%body5164552699%_)
                                  (if (gx#stx-pair? _%hd5163952696%_)
                                      (let ((_%e5164252701%_
                                             (gx#syntax-e _%hd5163952696%_)))
                                        (let ((_%lp-tl5164452708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5164252701%_)))
                                              (_%lp-hd5164352705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5164252701%_))))
                                          (_%loop5164152692%_
                                           _%lp-tl5164452708%_
                                           (cons _%lp-hd5164352705%_
                                                 _%body5164552699%_))))
                                      (let ((_%body5164652711%_
                                             (reverse _%body5164552699%_)))
                                        (let ((_%g5161552714%_
                                               _%body5164652711%_)
                                              (_%g5161652716%_
                                               _%hd5163652680%_)
                                              (_%g5161752717%_
                                               _%hd5163352670%_)
                                              (_%g5161852718%_
                                               _%hd5163052660%_)
                                              (_%g5161952719%_
                                               _%hd5162752650%_))
                                          (if (and (gx#identifier?
                                                    _%g5161952719%_)
                                                   (gx#identifier?
                                                    _%g5161752717%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5161752717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5161752717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5161752717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5161752717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5161752717%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9358493585%_
                                               _%g5161552714%_
                                               _%g5161652716%_
                                               _%g5161752717%_
                                               _%g5161852718%_
                                               _%g5161952719%_)
                                              (_%__match9368893689%_
                                               _%e5162052626%_
                                               _%hd5162152630%_
                                               _%tl5162252633%_
                                               _%e5162352636%_
                                               _%hd5162452640%_
                                               _%tl5162552643%_
                                               _%e5162652646%_
                                               _%hd5162752650%_
                                               _%tl5162852653%_
                                               _%e5162952656%_
                                               _%hd5163052660%_
                                               _%tl5163152663%_
                                               _%e5163252666%_
                                               _%hd5163352670%_
                                               _%tl5163452673%_))))))))
                        (_%loop5164152692%_ _%target5163852686%_ '())))))
              (if (gx#stx-pair? _%__stx9358193582%_)
                  (let ((_%e5162052626%_ (gx#syntax-e _%__stx9358193582%_)))
                    (let ((_%tl5162252633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5162052626%_)))
                          (_%hd5162152630%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5162052626%_))))
                      (if (gx#stx-pair? _%tl5162252633%_)
                          (let ((_%e5162352636%_
                                 (gx#syntax-e _%tl5162252633%_)))
                            (let ((_%tl5162552643%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5162352636%_)))
                                  (_%hd5162452640%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5162352636%_))))
                              (if (gx#stx-pair? _%hd5162452640%_)
                                  (let ((_%e5162652646%_
                                         (gx#syntax-e _%hd5162452640%_)))
                                    (let ((_%tl5162852653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5162652646%_)))
                                          (_%hd5162752650%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5162652646%_))))
                                      (if (gx#stx-pair? _%tl5162852653%_)
                                          (let ((_%e5162952656%_
                                                 (gx#syntax-e
                                                  _%tl5162852653%_)))
                                            (let ((_%tl5163152663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5162952656%_)))
                                                  (_%hd5163052660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5162952656%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5163152663%_)
                                                  (let ((_%e5163252666%_
                                                         (gx#syntax-e
                                                          _%tl5163152663%_)))
                                                    (let ((_%tl5163452673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5163252666%_)))
                                                          (_%hd5163352670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5163252666%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5163452673%_)
                                                          (let ((_%e5163552676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5163452673%_)))
                    (let ((_%tl5163752683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5163552676%_)))
                          (_%hd5163652680%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5163552676%_))))
                      (if (gx#stx-null? _%tl5163752683%_)
                          (if (gx#stx-pair/null? _%tl5162552643%_)
                              (let ((_%__splice9358693587%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5162552643%_
                                      '0)))
                                (let ((_%tl5164052689%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358693587%_
                                          '1)))
                                      (_%target5163852686%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9358693587%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5164052689%_)
                                      (_%__match9365893659%_
                                       _%e5162052626%_
                                       _%hd5162152630%_
                                       _%tl5162252633%_
                                       _%e5162352636%_
                                       _%hd5162452640%_
                                       _%tl5162552643%_
                                       _%e5162652646%_
                                       _%hd5162752650%_
                                       _%tl5162852653%_
                                       _%e5162952656%_
                                       _%hd5163052660%_
                                       _%tl5163152663%_
                                       _%e5163252666%_
                                       _%hd5163352670%_
                                       _%tl5163452673%_
                                       _%e5163552676%_
                                       _%hd5163652680%_
                                       _%tl5163752683%_
                                       _%__splice9358693587%_
                                       _%target5163852686%_
                                       _%tl5164052689%_)
                                      (if (gx#stx-pair? _%hd5162752650%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5162752650%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))))
                              (if (gx#stx-pair? _%hd5162752650%_)
                                  (let ((_%e5178951941%_
                                         (gx#syntax-e _%hd5162752650%_)))
                                    (let ((_%tl5179151948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5178951941%_)))
                                          (_%hd5179051945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5178951941%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                          (if (gx#identifier? _%hd5163352670%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g100248_|
                                   _%hd5163352670%_)
                                  (if (gx#stx-pair? _%tl5163752683%_)
                                      (let ((_%e5167152512%_
                                             (gx#syntax-e _%tl5163752683%_)))
                                        (let ((_%tl5167352519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5167152512%_)))
                                              (_%hd5167252516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5167152512%_))))
                                          (if (gx#stx-pair? _%tl5167352519%_)
                                              (let ((_%e5167452522%_
                                                     (gx#syntax-e
                                                      _%tl5167352519%_)))
                                                (let ((_%tl5167652529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5167452522%_)))
                                                      (_%hd5167552526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5167452522%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5167652529%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5162552643%_)
                                                          (let ((_%__splice9359093591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5162552643%_ '0)))
                    (let ((_%tl5167952535%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9359093591%_ '1)))
                          (_%target5167752532%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9359093591%_ '0))))
                      (if (gx#stx-null? _%tl5167952535%_)
                          (_%__match9372093721%_
                           _%e5162052626%_
                           _%hd5162152630%_
                           _%tl5162252633%_
                           _%e5162352636%_
                           _%hd5162452640%_
                           _%tl5162552643%_
                           _%e5162652646%_
                           _%hd5162752650%_
                           _%tl5162852653%_
                           _%e5162952656%_
                           _%hd5163052660%_
                           _%tl5163152663%_
                           _%e5163252666%_
                           _%hd5163352670%_
                           _%tl5163452673%_
                           _%e5163552676%_
                           _%hd5163652680%_
                           _%tl5163752683%_
                           _%e5167152512%_
                           _%hd5167252516%_
                           _%tl5167352519%_
                           _%e5167452522%_
                           _%hd5167552526%_
                           _%tl5167652529%_
                           _%__splice9359093591%_
                           _%target5167752532%_
                           _%tl5167952535%_)
                          (if (gx#stx-pair? _%hd5162752650%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5162752650%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_))))))
                  (if (gx#stx-pair? _%hd5162752650%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
              (if (gx#stx-pair? _%hd5162752650%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5162552643%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5162552643%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5162052626%_
                                   _%hd5162152630%_
                                   _%tl5162252633%_
                                   _%e5162352636%_
                                   _%hd5162452640%_
                                   _%tl5162552643%_
                                   _%e5162652646%_
                                   _%hd5162752650%_
                                   _%tl5162852653%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5163052660%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g100247_|
                                                       _%hd5163052660%_)
                                                      (if (gx#stx-null?
                                                           _%tl5167352519%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5162552643%_)
                                                              (let ((_%__splice9360293603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5162552643%_
                              '0)))
                        (let ((_%tl5176952094%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360293603%_ '1)))
                              (_%target5176752091%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360293603%_ '0))))
                          (if (gx#stx-null? _%tl5176952094%_)
                              (_%__match9386093861%_
                               _%e5162052626%_
                               _%hd5162152630%_
                               _%tl5162252633%_
                               _%e5162352636%_
                               _%hd5162452640%_
                               _%tl5162552643%_
                               _%e5162652646%_
                               _%hd5162752650%_
                               _%tl5162852653%_
                               _%e5162952656%_
                               _%hd5163052660%_
                               _%tl5163152663%_
                               _%e5163252666%_
                               _%hd5163352670%_
                               _%tl5163452673%_
                               _%e5163552676%_
                               _%hd5163652680%_
                               _%tl5163752683%_
                               _%e5167152512%_
                               _%hd5167252516%_
                               _%tl5167352519%_
                               _%__splice9360293603%_
                               _%target5176752091%_
                               _%tl5176952094%_)
                              (if (gx#stx-pair? _%hd5162752650%_)
                                  (let ((_%e5178951941%_
                                         (gx#syntax-e _%hd5162752650%_)))
                                    (let ((_%tl5179151948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5178951941%_)))
                                          (_%hd5179051945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5178951941%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))))
                      (if (gx#stx-pair? _%hd5162752650%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5162752650%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                  (if (gx#stx-pair? _%hd5162752650%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (if (gx#stx-pair/null? _%tl5162552643%_)
                              (let ((_%__splice9360693607%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5162552643%_
                                      '0)))
                                (let ((_%tl5179451954%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '1)))
                                      (_%target5179251951%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9360693607%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5179451954%_)
                                      (_%__match9389293893%_
                                       _%e5162052626%_
                                       _%hd5162152630%_
                                       _%tl5162252633%_
                                       _%e5162352636%_
                                       _%hd5162452640%_
                                       _%tl5162552643%_
                                       _%e5162652646%_
                                       _%hd5162752650%_
                                       _%tl5162852653%_
                                       _%e5178951941%_
                                       _%hd5179051945%_
                                       _%tl5179151948%_
                                       _%__splice9360693607%_
                                       _%target5179251951%_
                                       _%tl5179451954%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
              (if (gx#stx-pair? _%hd5162752650%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5162552643%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5162552643%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5162052626%_
                                   _%hd5162152630%_
                                   _%tl5162252633%_
                                   _%e5162352636%_
                                   _%hd5162452640%_
                                   _%tl5162552643%_
                                   _%e5162652646%_
                                   _%hd5162752650%_
                                   _%tl5162852653%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5162752650%_)
                                                      (let ((_%e5178951941%_
                                                             (gx#syntax-e
                                                              _%hd5162752650%_)))
                                                        (let ((_%tl5179151948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178951941%_)))
                      (_%hd5179051945%_
                       (let () (declare (not safe)) (##car _%e5178951941%_))))
                  (if (gx#stx-pair/null? _%tl5162552643%_)
                      (let ((_%__splice9360693607%_
                             (gx#syntax-split-splice->vector
                              _%tl5162552643%_
                              '0)))
                        (let ((_%tl5179451954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '1)))
                              (_%target5179251951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '0))))
                          (if (gx#stx-null? _%tl5179451954%_)
                              (_%__match9389293893%_
                               _%e5162052626%_
                               _%hd5162152630%_
                               _%tl5162252633%_
                               _%e5162352636%_
                               _%hd5162452640%_
                               _%tl5162552643%_
                               _%e5162652646%_
                               _%hd5162752650%_
                               _%tl5162852653%_
                               _%e5178951941%_
                               _%hd5179051945%_
                               _%tl5179151948%_
                               _%__splice9360693607%_
                               _%target5179251951%_
                               _%tl5179451954%_)
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5162752650%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5162752650%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5162552643%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5162552643%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5162052626%_
                                                           _%hd5162152630%_
                                                           _%tl5162252633%_
                                                           _%e5162352636%_
                                                           _%hd5162452640%_
                                                           _%tl5162552643%_
                                                           _%e5162652646%_
                                                           _%hd5162752650%_
                                                           _%tl5162852653%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                  (if (gx#identifier? _%hd5163052660%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100247_|
                                           _%hd5163052660%_)
                                          (if (gx#stx-pair? _%tl5163752683%_)
                                              (let ((_%e5176452081%_
                                                     (gx#syntax-e
                                                      _%tl5163752683%_)))
                                                (let ((_%tl5176652088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5176452081%_)))
                                                      (_%hd5176552085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5176452081%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5176652088%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5162552643%_)
                                                          (let ((_%__splice9360293603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5162552643%_ '0)))
                    (let ((_%tl5176952094%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360293603%_ '1)))
                          (_%target5176752091%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360293603%_ '0))))
                      (if (gx#stx-null? _%tl5176952094%_)
                          (_%__match9386093861%_
                           _%e5162052626%_
                           _%hd5162152630%_
                           _%tl5162252633%_
                           _%e5162352636%_
                           _%hd5162452640%_
                           _%tl5162552643%_
                           _%e5162652646%_
                           _%hd5162752650%_
                           _%tl5162852653%_
                           _%e5162952656%_
                           _%hd5163052660%_
                           _%tl5163152663%_
                           _%e5163252666%_
                           _%hd5163352670%_
                           _%tl5163452673%_
                           _%e5163552676%_
                           _%hd5163652680%_
                           _%tl5163752683%_
                           _%e5176452081%_
                           _%hd5176552085%_
                           _%tl5176652088%_
                           _%__splice9360293603%_
                           _%target5176752091%_
                           _%tl5176952094%_)
                          (if (gx#stx-pair? _%hd5162752650%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5162752650%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_))))))
                  (if (gx#stx-pair? _%hd5162752650%_)
                      (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                        (let ((_%tl5179151948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5178951941%_)))
                              (_%hd5179051945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5178951941%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
              (if (gx#stx-pair? _%hd5162752650%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (if (gx#stx-pair/null? _%tl5162552643%_)
                          (let ((_%__splice9360693607%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5162552643%_
                                  '0)))
                            (let ((_%tl5179451954%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9360693607%_ '1)))
                                  (_%target5179251951%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9360693607%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179451954%_)
                                  (_%__match9389293893%_
                                   _%e5162052626%_
                                   _%hd5162152630%_
                                   _%tl5162252633%_
                                   _%e5162352636%_
                                   _%hd5162452640%_
                                   _%tl5162552643%_
                                   _%e5162652646%_
                                   _%hd5162752650%_
                                   _%tl5162852653%_
                                   _%e5178951941%_
                                   _%hd5179051945%_
                                   _%tl5179151948%_
                                   _%__splice9360693607%_
                                   _%target5179251951%_
                                   _%tl5179451954%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5162752650%_)
                                                  (let ((_%e5178951941%_
                                                         (gx#syntax-e
                                                          _%hd5162752650%_)))
                                                    (let ((_%tl5179151948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178951941%_)))
                                                          (_%hd5179051945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178951941%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5162552643%_)
                                                          (let ((_%__splice9360693607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5162552643%_ '0)))
                    (let ((_%tl5179451954%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '1)))
                          (_%target5179251951%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9360693607%_ '0))))
                      (if (gx#stx-null? _%tl5179451954%_)
                          (_%__match9389293893%_
                           _%e5162052626%_
                           _%hd5162152630%_
                           _%tl5162252633%_
                           _%e5162352636%_
                           _%hd5162452640%_
                           _%tl5162552643%_
                           _%e5162652646%_
                           _%hd5162752650%_
                           _%tl5162852653%_
                           _%e5178951941%_
                           _%hd5179051945%_
                           _%tl5179151948%_
                           _%__splice9360693607%_
                           _%target5179251951%_
                           _%tl5179451954%_)
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_))))
                                          (if (gx#stx-pair? _%hd5162752650%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5162752650%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5162552643%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5162552643%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5162052626%_
                       _%hd5162152630%_
                       _%tl5162252633%_
                       _%e5162352636%_
                       _%hd5162452640%_
                       _%tl5162552643%_
                       _%e5162652646%_
                       _%hd5162752650%_
                       _%tl5162852653%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                      (if (gx#stx-pair? _%hd5162752650%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5162752650%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5162552643%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5162552643%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5162052626%_
                                                           _%hd5162152630%_
                                                           _%tl5162252633%_
                                                           _%e5162352636%_
                                                           _%hd5162452640%_
                                                           _%tl5162552643%_
                                                           _%e5162652646%_
                                                           _%hd5162752650%_
                                                           _%tl5162852653%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                              (if (gx#identifier? _%hd5163052660%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100247_|
                                       _%hd5163052660%_)
                                      (if (gx#stx-pair? _%tl5163752683%_)
                                          (let ((_%e5176452081%_
                                                 (gx#syntax-e
                                                  _%tl5163752683%_)))
                                            (let ((_%tl5176652088%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5176452081%_)))
                                                  (_%hd5176552085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5176452081%_))))
                                              (if (gx#stx-null?
                                                   _%tl5176652088%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5162552643%_)
                                                      (let ((_%__splice9360293603%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5162552643%_
                                                              '0)))
                                                        (let ((_%tl5176952094%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360293603%_ '1)))
                      (_%target5176752091%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360293603%_ '0))))
                  (if (gx#stx-null? _%tl5176952094%_)
                      (_%__match9386093861%_
                       _%e5162052626%_
                       _%hd5162152630%_
                       _%tl5162252633%_
                       _%e5162352636%_
                       _%hd5162452640%_
                       _%tl5162552643%_
                       _%e5162652646%_
                       _%hd5162752650%_
                       _%tl5162852653%_
                       _%e5162952656%_
                       _%hd5163052660%_
                       _%tl5163152663%_
                       _%e5163252666%_
                       _%hd5163352670%_
                       _%tl5163452673%_
                       _%e5163552676%_
                       _%hd5163652680%_
                       _%tl5163752683%_
                       _%e5176452081%_
                       _%hd5176552085%_
                       _%tl5176652088%_
                       _%__splice9360293603%_
                       _%target5176752091%_
                       _%tl5176952094%_)
                      (if (gx#stx-pair? _%hd5162752650%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5162752650%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                          (let () (declare (not safe)) (_%g5161351822%_))))))
              (if (gx#stx-pair? _%hd5162752650%_)
                  (let ((_%e5178951941%_ (gx#syntax-e _%hd5162752650%_)))
                    (let ((_%tl5179151948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5178951941%_)))
                          (_%hd5179051945%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5178951941%_))))
                      (let () (declare (not safe)) (_%g5161351822%_))))
                  (let () (declare (not safe)) (_%g5161351822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5162752650%_)
                                                      (let ((_%e5178951941%_
                                                             (gx#syntax-e
                                                              _%hd5162752650%_)))
                                                        (let ((_%tl5179151948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178951941%_)))
                      (_%hd5179051945%_
                       (let () (declare (not safe)) (##car _%e5178951941%_))))
                  (if (gx#stx-pair/null? _%tl5162552643%_)
                      (let ((_%__splice9360693607%_
                             (gx#syntax-split-splice->vector
                              _%tl5162552643%_
                              '0)))
                        (let ((_%tl5179451954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '1)))
                              (_%target5179251951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '0))))
                          (if (gx#stx-null? _%tl5179451954%_)
                              (_%__match9389293893%_
                               _%e5162052626%_
                               _%hd5162152630%_
                               _%tl5162252633%_
                               _%e5162352636%_
                               _%hd5162452640%_
                               _%tl5162552643%_
                               _%e5162652646%_
                               _%hd5162752650%_
                               _%tl5162852653%_
                               _%e5178951941%_
                               _%hd5179051945%_
                               _%tl5179151948%_
                               _%__splice9360693607%_
                               _%target5179251951%_
                               _%tl5179451954%_)
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5162752650%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5162752650%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5162552643%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5162552643%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5162052626%_
                       _%hd5162152630%_
                       _%tl5162252633%_
                       _%e5162352636%_
                       _%hd5162452640%_
                       _%tl5162552643%_
                       _%e5162652646%_
                       _%hd5162752650%_
                       _%tl5162852653%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))
                                      (if (gx#stx-pair? _%hd5162752650%_)
                                          (let ((_%e5178951941%_
                                                 (gx#syntax-e
                                                  _%hd5162752650%_)))
                                            (let ((_%tl5179151948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178951941%_)))
                                                  (_%hd5179051945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178951941%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5162552643%_)
                                                  (let ((_%__splice9360693607%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5162552643%_
                                                          '0)))
                                                    (let ((_%tl5179451954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '1)))
                                                          (_%target5179251951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9360693607%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5179451954%_)
                                                          (_%__match9389293893%_
                                                           _%e5162052626%_
                                                           _%hd5162152630%_
                                                           _%tl5162252633%_
                                                           _%e5162352636%_
                                                           _%hd5162452640%_
                                                           _%tl5162552643%_
                                                           _%e5162652646%_
                                                           _%hd5162752650%_
                                                           _%tl5162852653%_
                                                           _%e5178951941%_
                                                           _%hd5179051945%_
                                                           _%tl5179151948%_
                                                           _%__splice9360693607%_
                                                           _%target5179251951%_
                                                           _%tl5179451954%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5161351822%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                  (if (gx#stx-pair? _%hd5162752650%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5162752650%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5162552643%_)
                                              (let ((_%__splice9360693607%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5162552643%_
                                                      '0)))
                                                (let ((_%tl5179451954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '1)))
                                                      (_%target5179251951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9360693607%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5179451954%_)
                                                      (_%__match9389293893%_
                                                       _%e5162052626%_
                                                       _%hd5162152630%_
                                                       _%tl5162252633%_
                                                       _%e5162352636%_
                                                       _%hd5162452640%_
                                                       _%tl5162552643%_
                                                       _%e5162652646%_
                                                       _%hd5162752650%_
                                                       _%tl5162852653%_
                                                       _%e5178951941%_
                                                       _%hd5179051945%_
                                                       _%tl5179151948%_
                                                       _%__splice9360693607%_
                                                       _%target5179251951%_
                                                       _%tl5179451954%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5161351822%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))))
                  (if (gx#stx-null? _%tl5163452673%_)
                      (if (gx#stx-pair/null? _%tl5162552643%_)
                          (let ((_%__splice9359493595%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5162552643%_
                                  '0)))
                            (let ((_%tl5170752354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9359493595%_ '1)))
                                  (_%target5170552351%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9359493595%_
                                      '0))))
                              (if (gx#stx-null? _%tl5170752354%_)
                                  (_%__match9376093761%_
                                   _%e5162052626%_
                                   _%hd5162152630%_
                                   _%tl5162252633%_
                                   _%e5162352636%_
                                   _%hd5162452640%_
                                   _%tl5162552643%_
                                   _%e5162652646%_
                                   _%hd5162752650%_
                                   _%tl5162852653%_
                                   _%e5162952656%_
                                   _%hd5163052660%_
                                   _%tl5163152663%_
                                   _%e5163252666%_
                                   _%hd5163352670%_
                                   _%tl5163452673%_
                                   _%__splice9359493595%_
                                   _%target5170552351%_
                                   _%tl5170752354%_)
                                  (if (gx#stx-pair? _%hd5162752650%_)
                                      (let ((_%e5178951941%_
                                             (gx#syntax-e _%hd5162752650%_)))
                                        (let ((_%tl5179151948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5178951941%_)))
                                              (_%hd5179051945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5178951941%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))
                          (if (gx#stx-pair? _%hd5162752650%_)
                              (let ((_%e5178951941%_
                                     (gx#syntax-e _%hd5162752650%_)))
                                (let ((_%tl5179151948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5178951941%_)))
                                      (_%hd5179051945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5178951941%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_))))
                              (let () (declare (not safe)) (_%g5161351822%_))))
                      (if (gx#stx-pair? _%hd5162752650%_)
                          (let ((_%e5178951941%_
                                 (gx#syntax-e _%hd5162752650%_)))
                            (let ((_%tl5179151948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5178951941%_)))
                                  (_%hd5179051945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5178951941%_))))
                              (if (gx#stx-pair/null? _%tl5162552643%_)
                                  (let ((_%__splice9360693607%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5162552643%_
                                          '0)))
                                    (let ((_%tl5179451954%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '1)))
                                          (_%target5179251951%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9360693607%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5179451954%_)
                                          (_%__match9389293893%_
                                           _%e5162052626%_
                                           _%hd5162152630%_
                                           _%tl5162252633%_
                                           _%e5162352636%_
                                           _%hd5162452640%_
                                           _%tl5162552643%_
                                           _%e5162652646%_
                                           _%hd5162752650%_
                                           _%tl5162852653%_
                                           _%e5178951941%_
                                           _%hd5179051945%_
                                           _%tl5179151948%_
                                           _%__splice9360693607%_
                                           _%target5179251951%_
                                           _%tl5179451954%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5161351822%_)))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5162752650%_)
                                                      (let ((_%e5178951941%_
                                                             (gx#syntax-e
                                                              _%hd5162752650%_)))
                                                        (let ((_%tl5179151948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178951941%_)))
                      (_%hd5179051945%_
                       (let () (declare (not safe)) (##car _%e5178951941%_))))
                  (if (gx#stx-pair/null? _%tl5162552643%_)
                      (let ((_%__splice9360693607%_
                             (gx#syntax-split-splice->vector
                              _%tl5162552643%_
                              '0)))
                        (let ((_%tl5179451954%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '1)))
                              (_%target5179251951%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9360693607%_ '0))))
                          (if (gx#stx-null? _%tl5179451954%_)
                              (_%__match9389293893%_
                               _%e5162052626%_
                               _%hd5162152630%_
                               _%tl5162252633%_
                               _%e5162352636%_
                               _%hd5162452640%_
                               _%tl5162552643%_
                               _%e5162652646%_
                               _%hd5162752650%_
                               _%tl5162852653%_
                               _%e5178951941%_
                               _%hd5179051945%_
                               _%tl5179151948%_
                               _%__splice9360693607%_
                               _%target5179251951%_
                               _%tl5179451954%_)
                              (let ()
                                (declare (not safe))
                                (_%g5161351822%_)))))
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5162752650%_)
                                              (let ((_%e5178951941%_
                                                     (gx#syntax-e
                                                      _%hd5162752650%_)))
                                                (let ((_%tl5179151948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178951941%_)))
                                                      (_%hd5179051945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178951941%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5162552643%_)
                                                      (let ((_%__splice9360693607%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5162552643%_
                                                              '0)))
                                                        (let ((_%tl5179451954%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '1)))
                      (_%target5179251951%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9360693607%_ '0))))
                  (if (gx#stx-null? _%tl5179451954%_)
                      (_%__match9389293893%_
                       _%e5162052626%_
                       _%hd5162152630%_
                       _%tl5162252633%_
                       _%e5162352636%_
                       _%hd5162452640%_
                       _%tl5162552643%_
                       _%e5162652646%_
                       _%hd5162752650%_
                       _%tl5162852653%_
                       _%e5178951941%_
                       _%hd5179051945%_
                       _%tl5179151948%_
                       _%__splice9360693607%_
                       _%target5179251951%_
                       _%tl5179451954%_)
                      (let () (declare (not safe)) (_%g5161351822%_)))))
              (let () (declare (not safe)) (_%g5161351822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5161351822%_))))))
                                  (if (gx#stx-null? _%hd5162452640%_)
                                      (if (gx#stx-pair/null? _%tl5162552643%_)
                                          (let ((_%__splice9361093611%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5162552643%_
                                                  '0)))
                                            (let ((_%tl5181051852%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9361093611%_
                                                      '1)))
                                                  (_%target5180851849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9361093611%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5181051852%_)
                                                  (_%__match9391493915%_
                                                   _%e5162052626%_
                                                   _%hd5162152630%_
                                                   _%tl5162252633%_
                                                   _%e5162352636%_
                                                   _%hd5162452640%_
                                                   _%tl5162552643%_
                                                   _%__splice9361093611%_
                                                   _%target5180851849%_
                                                   _%tl5181051852%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5161351822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5161351822%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5161351822%_))))))
                          (let () (declare (not safe)) (_%g5161351822%_)))))
                  (let () (declare (not safe)) (_%g5161351822%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52782%_)
        (let* ((_%g5278652820%_
                (lambda (_%g5278752816%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5278752816%_)))
               (_%g5278552941%_
                (lambda (_%g5278752824%_)
                  (if (gx#stx-pair? _%g5278752824%_)
                      (let ((_%e5279152827%_ (gx#syntax-e _%g5278752824%_)))
                        (let ((_%hd5279252831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5279152827%_)))
                              (_%tl5279352834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5279152827%_))))
                          (if (gx#stx-pair? _%tl5279352834%_)
                              (let ((_%e5279452837%_
                                     (gx#syntax-e _%tl5279352834%_)))
                                (let ((_%hd5279552841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5279452837%_)))
                                      (_%tl5279652844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5279452837%_))))
                                  (if (gx#stx-pair? _%hd5279552841%_)
                                      (let ((_%e5279752847%_
                                             (gx#syntax-e _%hd5279552841%_)))
                                        (let ((_%hd5279852851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5279752847%_)))
                                              (_%tl5279952854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5279752847%_))))
                                          (if (gx#stx-pair? _%tl5279952854%_)
                                              (let ((_%e5280052857%_
                                                     (gx#syntax-e
                                                      _%tl5279952854%_)))
                                                (let ((_%hd5280152861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5280052857%_)))
                                                      (_%tl5280252864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5280052857%_))))
                                                  (if (gx#identifier?
                                                       _%hd5280152861%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100249_|
                                                           _%hd5280152861%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5280252864%_)
                                                              (let ((_%e5280352867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5280252864%_)))
                        (let ((_%hd5280452871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5280352867%_)))
                              (_%tl5280552874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5280352867%_))))
                          (if (gx#stx-null? _%tl5280552874%_)
                              (if (gx#stx-pair/null? _%tl5279652844%_)
                                  (let ((_g100250_
                                         (gx#syntax-split-splice
                                          _%tl5279652844%_
                                          '0)))
                                    (begin
                                      (let ((_g100251_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g100250_)
                                                   (##values-length _g100250_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g100251_ 2)))
                                            (error "Context expects 2 values"
                                                   _g100251_)))
                                      (let ((_%target5280652877%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100250_ 0)))
                                            (_%tl5280852880%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100250_ 1))))
                                        (if (gx#stx-null? _%tl5280852880%_)
                                            (letrec ((_%loop5280952883%_
                                                      (lambda (_%hd5280752887%_
                                                               _%body5281352890%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5280752887%_)
                                                            (let ((_%e5281052892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5280752887%_)))
                      (let ((_%lp-hd5281152896%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5281052892%_)))
                            (_%lp-tl5281252899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5281052892%_))))
                        (_%loop5280952883%_
                         _%lp-tl5281252899%_
                         (cons _%lp-hd5281152896%_ _%body5281352890%_))))
                    (let ((_%body5281452902%_ (reverse _%body5281352890%_)))
                      ((lambda (_%g5278852905%_
                                _%g5278952907%_
                                _%g5279052908%_)
                         (if (gx#identifier? _%g5279052908%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5278952907%_
                                               (cons _%g5279052908%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5293252935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5293352938%_)
                            (cons _%g5293252935%_ _%g5293352938%_))
                          '()
                          _%g5278852905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5279052908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5278952907%_ (cons _%g5279052908%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5278652820%_ _%g5278752824%_)))
                       _%body5281452902%_
                       _%hd5280452871%_
                       _%hd5279852851%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5280952883%_
                                               _%target5280652877%_
                                               '()))
                                            (_%g5278652820%_
                                             _%g5278752824%_)))))
                                  (_%g5278652820%_ _%g5278752824%_))
                              (_%g5278652820%_ _%g5278752824%_))))
                      (_%g5278652820%_ _%g5278752824%_))
                  (_%g5278652820%_ _%g5278752824%_))
              (_%g5278652820%_ _%g5278752824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5278652820%_
                                               _%g5278752824%_))))
                                      (_%g5278652820%_ _%g5278752824%_))))
                              (_%g5278652820%_ _%g5278752824%_))))
                      (_%g5278652820%_ _%g5278752824%_)))))
          (_%g5278552941%_ _%$stx52782%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53699%_ _%slot53701%_)
        (let ((_%$e53703%_
               (let ((__obj100049 _%klass53699%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100049
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100049 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100049
                      'slot-types)))))
          (if _%$e53703%_
              ((lambda (_%slot-types53707%_)
                 (agetq _%slot53701%_ _%slot-types53707%_))
               _%$e53703%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53680%_ _%slot53682%_)
        (let ((_%$e53684%_
               (let ((__obj100050 _%klass53680%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100050
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100050 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100050
                      'slot-defaults)))))
          (if _%$e53684%_
              ((lambda (_%slot-defaults53688%_)
                 (let ((_%$e53691%_
                        (agetq _%slot53682%_ _%slot-defaults53688%_)))
                   (if _%$e53691%_
                       (gx#syntax-local-introduce _%$e53691%_)
                       '#f)))
               _%$e53684%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53661%_ _%slot53663%_)
        (let ((_%$e53665%_
               (let ((__obj100051 _%klass53661%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100051
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100051 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100051
                      'slot-defaults)))))
          (if _%$e53665%_
              ((lambda (_%slot-defaults53669%_)
                 (let ((_%$e53672%_
                        (agetq _%slot53663%_ _%slot-defaults53669%_)))
                   (if _%$e53672%_
                       (gx#syntax-local-introduce _%$e53672%_)
                       '#f)))
               _%$e53665%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53430%_ _%slot53432%_)
        (let ((_%contract5343353435%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53430%_
                _%slot53432%_)))
          (if _%contract5343353435%_
              (let* ((_%contract53438%_ _%contract5343353435%_)
                     (_%__stx9391793918%_ _%contract53438%_)
                     (_%g5344353480%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9391793918%_))))
                (let ((_%__kont9392093921%_
                       (lambda (_%g5344553630%_ _%g5344653632%_)
                         (not (gx#free-identifier=?
                               _%g5344653632%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9392293923%_
                       (lambda (_%g5345353570%_
                                _%g5345453572%_
                                _%g5345553573%_)
                         (not (gx#free-identifier=?
                               _%g5345453572%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9392493925%_ (lambda (_%g5346853507%_) '#f)))
                  (let* ((_%__match9397093971%_
                          (lambda (_%e5345653530%_
                                   _%hd5345753534%_
                                   _%tl5345853537%_
                                   _%e5345953540%_
                                   _%hd5346053544%_
                                   _%tl5346153547%_
                                   _%e5346253550%_
                                   _%hd5346353554%_
                                   _%tl5346453557%_
                                   _%e5346553560%_
                                   _%hd5346653564%_
                                   _%tl5346753567%_)
                            (let ((_%g5345353570%_ _%hd5346653564%_)
                                  (_%g5345453572%_ _%hd5346353554%_)
                                  (_%g5345553573%_ _%hd5346053544%_))
                              (if (and (gx#identifier? _%g5345453572%_)
                                       (or (gx#free-identifier=?
                                            _%g5345453572%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5345453572%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5345453572%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5345453572%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9392293923%_
                                   _%g5345353570%_
                                   _%g5345453572%_
                                   _%g5345553573%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5344353480%_))))))
                         (_%__match9394093941%_
                          (lambda (_%e5344753610%_
                                   _%hd5344853614%_
                                   _%tl5344953617%_
                                   _%e5345053620%_
                                   _%hd5345153624%_
                                   _%tl5345253627%_)
                            (let ((_%g5344553630%_ _%hd5345153624%_)
                                  (_%g5344653632%_ _%hd5344853614%_))
                              (if (and (gx#identifier? _%g5344653632%_)
                                       (or (gx#free-identifier=?
                                            _%g5344653632%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5344653632%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5344653632%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5344653632%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9392093921%_
                                   _%g5344553630%_
                                   _%g5344653632%_)
                                  (if (gx#identifier? _%hd5344853614%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100252_|
                                           _%hd5344853614%_)
                                          (_%__kont9392493925%_
                                           _%hd5345153624%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5344353480%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5344353480%_))))))))
                    (if (gx#stx-pair? _%__stx9391793918%_)
                        (let ((_%e5344753610%_
                               (gx#syntax-e _%__stx9391793918%_)))
                          (let ((_%tl5344953617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5344753610%_)))
                                (_%hd5344853614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5344753610%_))))
                            (if (gx#stx-pair? _%tl5344953617%_)
                                (let ((_%e5345053620%_
                                       (gx#syntax-e _%tl5344953617%_)))
                                  (let ((_%tl5345253627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5345053620%_)))
                                        (_%hd5345153624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5345053620%_))))
                                    (if (gx#stx-null? _%tl5345253627%_)
                                        (_%__match9394093941%_
                                         _%e5344753610%_
                                         _%hd5344853614%_
                                         _%tl5344953617%_
                                         _%e5345053620%_
                                         _%hd5345153624%_
                                         _%tl5345253627%_)
                                        (if (gx#identifier? _%hd5344853614%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100252_|
                                                 _%hd5344853614%_)
                                                (if (gx#stx-pair?
                                                     _%tl5345253627%_)
                                                    (let ((_%e5346253550%_
                                                           (gx#syntax-e
                                                            _%tl5345253627%_)))
                                                      (let ((_%tl5346453557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5346253550%_)))
                    (_%hd5346353554%_
                     (let () (declare (not safe)) (##car _%e5346253550%_))))
                (if (gx#stx-pair? _%tl5346453557%_)
                    (let ((_%e5346553560%_ (gx#syntax-e _%tl5346453557%_)))
                      (let ((_%tl5346753567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5346553560%_)))
                            (_%hd5346653564%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5346553560%_))))
                        (if (gx#stx-null? _%tl5346753567%_)
                            (_%__match9397093971%_
                             _%e5344753610%_
                             _%hd5344853614%_
                             _%tl5344953617%_
                             _%e5345053620%_
                             _%hd5345153624%_
                             _%tl5345253627%_
                             _%e5346253550%_
                             _%hd5346353554%_
                             _%tl5346453557%_
                             _%e5346553560%_
                             _%hd5346653564%_
                             _%tl5346753567%_)
                            (let () (declare (not safe)) (_%g5344353480%_)))))
                    (let () (declare (not safe)) (_%g5344353480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5344353480%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5344353480%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5344353480%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5344353480%_)))))
                        (let () (declare (not safe)) (_%g5344353480%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53199%_ _%slot53201%_)
        (let ((_%contract5320253204%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53199%_
                _%slot53201%_)))
          (if _%contract5320253204%_
              (let* ((_%contract53207%_ _%contract5320253204%_)
                     (_%__stx9399193992%_ _%contract53207%_)
                     (_%g5321253249%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9399193992%_))))
                (let ((_%__kont9399493995%_
                       (lambda (_%g5321453399%_ _%g5321553401%_)
                         (not (gx#free-identifier=?
                               _%g5321553401%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9399693997%_
                       (lambda (_%g5322253339%_
                                _%g5322353341%_
                                _%g5322453342%_)
                         '#t))
                      (_%__kont9399893999%_ (lambda (_%g5323753276%_) '#t)))
                  (let* ((_%__match9404494045%_
                          (lambda (_%e5322553299%_
                                   _%hd5322653303%_
                                   _%tl5322753306%_
                                   _%e5322853309%_
                                   _%hd5322953313%_
                                   _%tl5323053316%_
                                   _%e5323153319%_
                                   _%hd5323253323%_
                                   _%tl5323353326%_
                                   _%e5323453329%_
                                   _%hd5323553333%_
                                   _%tl5323653336%_)
                            (let ((_%g5322253339%_ _%hd5323553333%_)
                                  (_%g5322353341%_ _%hd5323253323%_)
                                  (_%g5322453342%_ _%hd5322953313%_))
                              (if (and (gx#identifier? _%g5322353341%_)
                                       (or (gx#free-identifier=?
                                            _%g5322353341%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5322353341%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5322353341%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5322353341%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9399693997%_
                                   _%g5322253339%_
                                   _%g5322353341%_
                                   _%g5322453342%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5321253249%_))))))
                         (_%__match9401494015%_
                          (lambda (_%e5321653379%_
                                   _%hd5321753383%_
                                   _%tl5321853386%_
                                   _%e5321953389%_
                                   _%hd5322053393%_
                                   _%tl5322153396%_)
                            (let ((_%g5321453399%_ _%hd5322053393%_)
                                  (_%g5321553401%_ _%hd5321753383%_))
                              (if (and (gx#identifier? _%g5321553401%_)
                                       (or (gx#free-identifier=?
                                            _%g5321553401%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5321553401%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5321553401%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5321553401%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9399493995%_
                                   _%g5321453399%_
                                   _%g5321553401%_)
                                  (if (gx#identifier? _%hd5321753383%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100253_|
                                           _%hd5321753383%_)
                                          (_%__kont9399893999%_
                                           _%hd5322053393%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5321253249%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5321253249%_))))))))
                    (if (gx#stx-pair? _%__stx9399193992%_)
                        (let ((_%e5321653379%_
                               (gx#syntax-e _%__stx9399193992%_)))
                          (let ((_%tl5321853386%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5321653379%_)))
                                (_%hd5321753383%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5321653379%_))))
                            (if (gx#stx-pair? _%tl5321853386%_)
                                (let ((_%e5321953389%_
                                       (gx#syntax-e _%tl5321853386%_)))
                                  (let ((_%tl5322153396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5321953389%_)))
                                        (_%hd5322053393%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5321953389%_))))
                                    (if (gx#stx-null? _%tl5322153396%_)
                                        (_%__match9401494015%_
                                         _%e5321653379%_
                                         _%hd5321753383%_
                                         _%tl5321853386%_
                                         _%e5321953389%_
                                         _%hd5322053393%_
                                         _%tl5322153396%_)
                                        (if (gx#identifier? _%hd5321753383%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100253_|
                                                 _%hd5321753383%_)
                                                (if (gx#stx-pair?
                                                     _%tl5322153396%_)
                                                    (let ((_%e5323153319%_
                                                           (gx#syntax-e
                                                            _%tl5322153396%_)))
                                                      (let ((_%tl5323353326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5323153319%_)))
                    (_%hd5323253323%_
                     (let () (declare (not safe)) (##car _%e5323153319%_))))
                (if (gx#stx-pair? _%tl5323353326%_)
                    (let ((_%e5323453329%_ (gx#syntax-e _%tl5323353326%_)))
                      (let ((_%tl5323653336%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5323453329%_)))
                            (_%hd5323553333%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5323453329%_))))
                        (if (gx#stx-null? _%tl5323653336%_)
                            (_%__match9404494045%_
                             _%e5321653379%_
                             _%hd5321753383%_
                             _%tl5321853386%_
                             _%e5321953389%_
                             _%hd5322053393%_
                             _%tl5322153396%_
                             _%e5323153319%_
                             _%hd5323253323%_
                             _%tl5323353326%_
                             _%e5323453329%_
                             _%hd5323553333%_
                             _%tl5323653336%_)
                            (let () (declare (not safe)) (_%g5321253249%_)))))
                    (let () (declare (not safe)) (_%g5321253249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5321253249%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5321253249%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5321253249%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5321253249%_)))))
                        (let () (declare (not safe)) (_%g5321253249%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53186%_)
        (if (gx#identifier? _%id53186%_)
            (let* ((_%str53189%_ (symbol->string (gx#stx-e _%id53186%_)))
                   (_%index5319153193%_ (string-index _%str53189%_ '#\.)))
              (if _%index5319153193%_
                  (let ((_%index53196%_ _%index5319153193%_))
                    (if (let () (declare (not safe)) (##fx> _%index53196%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53189%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53179%_ _%id53181%_)
        (let ((_%parts53183%_
               (string-split (symbol->string (gx#stx-e _%id53181%_)) '#\.)))
          (if (find string-empty? _%parts53183%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53179%_
               _%id53181%_)
              (cons (gx#stx-identifier _%id53181%_ (car _%parts53183%_))
                    (map string->symbol (cdr _%parts53183%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53065%_ _%klass-or-id53067%_ _%slot53068%_)
        (let* ((_%klass53070%_
                (if (gx#identifier? _%klass-or-id53067%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53065%_
                       _%klass-or-id53067%_))
                    _%klass-or-id53067%_))
               (_%$e53075%_
                (agetq _%slot53068%_
                       (let ((__obj100052 _%klass53070%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100052
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100052
                                '17
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj100052
                              'unchecked-accessors))))))
          (if _%$e53075%_
              _%$e53075%_
              (let ((_%$e53083%_
                     (agetq _%slot53068%_
                            (let ((_%$e53079%_
                                   (let ((__obj100053 _%klass53070%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100053
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100053
                                            '22
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100053
                                          'slot-offsets)))))
                              (if _%$e53079%_ _%$e53079%_ '())))))
                (if _%$e53083%_
                    ((lambda (_%offset53087%_)
                       (let* ((_%g5309053109%_
                               (lambda (_%g5309153105%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5309153105%_)))
                              (_%g5308953173%_
                               (lambda (_%g5309153113%_)
                                 (if (gx#stx-pair? _%g5309153113%_)
                                     (let ((_%e5309553116%_
                                            (gx#syntax-e _%g5309153113%_)))
                                       (let ((_%hd5309653120%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5309553116%_)))
                                             (_%tl5309753123%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5309553116%_))))
                                         (if (gx#stx-pair? _%tl5309753123%_)
                                             (let ((_%e5309853126%_
                                                    (gx#syntax-e
                                                     _%tl5309753123%_)))
                                               (let ((_%hd5309953130%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5309853126%_)))
                                                     (_%tl5310053133%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5309853126%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5310053133%_)
                                                     (let ((_%e5310153136%_
                                                            (gx#syntax-e
                                                             _%tl5310053133%_)))
                                                       (let ((_%hd5310253140%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5310153136%_)))
                     (_%tl5310353143%_
                      (let () (declare (not safe)) (##cdr _%e5310153136%_))))
                 (if (gx#stx-null? _%tl5310353143%_)
                     ((lambda (_%g5309253146%_ _%g5309353148%_ _%g5309453149%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-ref)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons _%g5309253146%_
                                                             (cons _%g5309453149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g5309353148%_ '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx53065%_)))
                      _%hd5310253140%_
                      _%hd5309953130%_
                      _%hd5309653120%_)
                     (_%g5309053109%_ _%g5309153113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5309053109%_
                                                      _%g5309153113%_))))
                                             (_%g5309053109%_
                                              _%g5309153113%_))))
                                     (_%g5309053109%_ _%g5309153113%_)))))
                         (_%g5308953173%_
                          (list (let ((__obj100054 _%klass53070%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100054
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100054
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100054
                                       'type-descriptor)))
                                _%slot53068%_
                                _%offset53087%_))))
                     _%$e53083%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53065%_
                     _%klass53070%_
                     _%slot53068%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52946%_
               _%klass-or-id52948%_
               _%slot52949%_
               _%checked?52950%_)
        (let* ((_%klass52952%_
                (if (gx#identifier? _%klass-or-id52948%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52946%_
                       _%klass-or-id52948%_))
                    _%klass-or-id52948%_))
               (_%mutators52955%_
                (if _%checked?52950%_
                    (let ((__obj100055 _%klass52952%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100055
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100055
                             '16
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100055
                           'mutators)))
                    (let ((__obj100056 _%klass52952%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100056
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100056
                             '18
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100056
                           'unchecked-mutators)))))
               (_%$e52960%_ (agetq _%slot52949%_ _%mutators52955%_)))
          (if _%$e52960%_
              _%$e52960%_
              (let ((_%$e52968%_
                     (agetq _%slot52949%_
                            (let ((_%$e52964%_
                                   (let ((__obj100057 _%klass52952%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100057
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100057
                                            '22
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100057
                                          'slot-offsets)))))
                              (if _%$e52964%_ _%$e52964%_ '())))))
                (if _%$e52968%_
                    ((lambda (_%offset52972%_)
                       (let* ((_%g5297552994%_
                               (lambda (_%g5297652990%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5297652990%_)))
                              (_%g5297453059%_
                               (lambda (_%g5297652998%_)
                                 (if (gx#stx-pair? _%g5297652998%_)
                                     (let ((_%e5298053001%_
                                            (gx#syntax-e _%g5297652998%_)))
                                       (let ((_%hd5298153005%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5298053001%_)))
                                             (_%tl5298253008%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5298053001%_))))
                                         (if (gx#stx-pair? _%tl5298253008%_)
                                             (let ((_%e5298353011%_
                                                    (gx#syntax-e
                                                     _%tl5298253008%_)))
                                               (let ((_%hd5298453015%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5298353011%_)))
                                                     (_%tl5298553018%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5298353011%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5298553018%_)
                                                     (let ((_%e5298653021%_
                                                            (gx#syntax-e
                                                             _%tl5298553018%_)))
                                                       (let ((_%hd5298753025%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5298653021%_)))
                     (_%tl5298853028%_
                      (let () (declare (not safe)) (##cdr _%e5298653021%_))))
                 (if (gx#stx-null? _%tl5298853028%_)
                     ((lambda (_%g5297753031%_ _%g5297853033%_ _%g5297953034%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj)
                                           (cons (gx#datum->syntax '#f '$val)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-set!)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons _%g5297753031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g5297953034%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g5297853033%_ '()))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx52946%_)))
                      _%hd5298753025%_
                      _%hd5298453015%_
                      _%hd5298153005%_)
                     (_%g5297552994%_ _%g5297652998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5297552994%_
                                                      _%g5297652998%_))))
                                             (_%g5297552994%_
                                              _%g5297652998%_))))
                                     (_%g5297552994%_ _%g5297652998%_)))))
                         (_%g5297453059%_
                          (list (let ((__obj100058 _%klass52952%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100058
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100058
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100058
                                       'type-descriptor)))
                                _%slot52949%_
                                _%offset52972%_))))
                     _%$e52968%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx52946%_
                     _%klass52952%_
                     _%slot52949%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53712%_)
        (letrec ((_%expand-body53715%_
                  (lambda (_%klass54613%_
                           _%var54615%_
                           _%Type54616%_
                           _%body54617%_
                           _%checked?54618%_)
                    (let* ((_%g5462054664%_
                            (lambda (_%g5462154660%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5462154660%_)))
                           (_%g5461954819%_
                            (lambda (_%g5462154668%_)
                              (if (gx#stx-pair? _%g5462154668%_)
                                  (let ((_%e5462954671%_
                                         (gx#syntax-e _%g5462154668%_)))
                                    (let ((_%hd5463054675%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5462954671%_)))
                                          (_%tl5463154678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5462954671%_))))
                                      (if (gx#stx-pair? _%tl5463154678%_)
                                          (let ((_%e5463254681%_
                                                 (gx#syntax-e
                                                  _%tl5463154678%_)))
                                            (let ((_%hd5463354685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5463254681%_)))
                                                  (_%tl5463454688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5463254681%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5463454688%_)
                                                  (let ((_%e5463554691%_
                                                         (gx#syntax-e
                                                          _%tl5463454688%_)))
                                                    (let ((_%hd5463654695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5463554691%_)))
                                                          (_%tl5463754698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5463554691%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5463754698%_)
                                                          (let ((_%e5463854701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5463754698%_)))
                    (let ((_%hd5463954705%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5463854701%_)))
                          (_%tl5464054708%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5463854701%_))))
                      (if (gx#stx-pair? _%tl5464054708%_)
                          (let ((_%e5464154711%_
                                 (gx#syntax-e _%tl5464054708%_)))
                            (let ((_%hd5464254715%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5464154711%_)))
                                  (_%tl5464354718%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5464154711%_))))
                              (if (gx#stx-pair? _%tl5464354718%_)
                                  (let ((_%e5464454721%_
                                         (gx#syntax-e _%tl5464354718%_)))
                                    (let ((_%hd5464554725%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5464454721%_)))
                                          (_%tl5464654728%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5464454721%_))))
                                      (if (gx#stx-pair? _%tl5464654728%_)
                                          (let ((_%e5464754731%_
                                                 (gx#syntax-e
                                                  _%tl5464654728%_)))
                                            (let ((_%hd5464854735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5464754731%_)))
                                                  (_%tl5464954738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5464754731%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5464854735%_)
                                                  (let ((_g100254_
                                                         (gx#syntax-split-splice
                                                          _%hd5464854735%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100255_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100254_)
                           (##values-length _g100254_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100255_ 2)))
                    (error "Context expects 2 values" _g100255_)))
              (let ((_%target5465054741%_
                     (let () (declare (not safe)) (##values-ref _g100254_ 0)))
                    (_%tl5465254744%_
                     (let () (declare (not safe)) (##values-ref _g100254_ 1))))
                (if (gx#stx-null? _%tl5465254744%_)
                    (letrec ((_%loop5465354747%_
                              (lambda (_%hd5465154751%_ _%body5465754754%_)
                                (if (gx#stx-pair? _%hd5465154751%_)
                                    (let ((_%e5465454756%_
                                           (gx#syntax-e _%hd5465154751%_)))
                                      (let ((_%lp-hd5465554760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5465454756%_)))
                                            (_%lp-tl5465654763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5465454756%_))))
                                        (_%loop5465354747%_
                                         _%lp-tl5465654763%_
                                         (cons _%lp-hd5465554760%_
                                               _%body5465754754%_))))
                                    (let ((_%body5465854766%_
                                           (reverse _%body5465754754%_)))
                                      (if (gx#stx-null? _%tl5464954738%_)
                                          ((lambda (_%g5462254769%_
                                                    _%g5462354771%_
                                                    _%g5462454772%_
                                                    _%g5462554773%_
                                                    _%g5462654774%_
                                                    _%g5462754775%_
                                                    _%g5462854776%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5462654774%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5462754775%_ '()))
                                         (cons _%g5462654774%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5462854776%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5462654774%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5462554773%_ '()))
                               (cons _%g5462454772%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5462354771%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5481054813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5481154816%_)
                      (cons _%g5481054813%_ _%g5481154816%_))
                    '()
                    _%g5462254769%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5465854766%_
                                           _%hd5464554725%_
                                           _%hd5464254715%_
                                           _%hd5463954705%_
                                           _%hd5463654695%_
                                           _%hd5463354685%_
                                           _%hd5463054675%_)
                                          (_%g5462054664%_
                                           _%g5462154668%_)))))))
                      (_%loop5465354747%_ _%target5465054741%_ '()))
                    (_%g5462054664%_ _%g5462154668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5462054664%_
                                                   _%g5462154668%_))))
                                          (_%g5462054664%_ _%g5462154668%_))))
                                  (_%g5462054664%_ _%g5462154668%_))))
                          (_%g5462054664%_ _%g5462154668%_))))
                  (_%g5462054664%_ _%g5462154668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5462054664%_
                                                   _%g5462154668%_))))
                                          (_%g5462054664%_ _%g5462154668%_))))
                                  (_%g5462054664%_ _%g5462154668%_)))))
                      (_%g5461954819%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj100059 _%klass54613%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100059
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100059
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj100059
                                    'type-descriptor)))
                             _%var54615%_
                             _%klass54613%_
                             _%checked?54618%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54617%_)))))
                 (_%expand53717%_
                  (lambda (_%var54505%_
                           _%Type54507%_
                           _%body54508%_
                           _%checked?54509%_
                           _%checked-mutators?54510%_
                           _%maybe?54511%_)
                    (let* ((_%klass54513%_
                            (gx#syntax-local-value _%Type54507%_ false))
                           (_%expr-body54520%_
                            (_%expand-body53715%_
                             _%klass54513%_
                             _%var54505%_
                             _%Type54507%_
                             _%body54508%_
                             (let ((_%$e54516%_ _%checked?54509%_))
                               (if _%$e54516%_
                                   _%$e54516%_
                                   _%checked-mutators?54510%_)))))
                      (if _%checked?54509%_
                          (let* ((_%g5452554544%_
                                  (lambda (_%g5452654540%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5452654540%_)))
                                 (_%g5452454606%_
                                  (lambda (_%g5452654548%_)
                                    (if (gx#stx-pair? _%g5452654548%_)
                                        (let ((_%e5453054551%_
                                               (gx#syntax-e _%g5452654548%_)))
                                          (let ((_%hd5453154555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5453054551%_)))
                                                (_%tl5453254558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5453054551%_))))
                                            (if (gx#stx-pair? _%tl5453254558%_)
                                                (let ((_%e5453354561%_
                                                       (gx#syntax-e
                                                        _%tl5453254558%_)))
                                                  (let ((_%hd5453454565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5453354561%_)))
                                                        (_%tl5453554568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5453354561%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5453554568%_)
                                                        (let ((_%e5453654571%_
                                                               (gx#syntax-e
                                                                _%tl5453554568%_)))
                                                          (let ((_%hd5453754575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5453654571%_)))
                        (_%tl5453854578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5453654571%_))))
                    (if (gx#stx-null? _%tl5453854578%_)
                        ((lambda (_%g5452754581%_
                                  _%g5452854583%_
                                  _%g5452954584%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5452854583%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5452954584%_ '())))
                                       (cons _%g5452754581%_ '()))))
                         _%hd5453754575%_
                         _%hd5453454565%_
                         _%hd5453154555%_)
                        (_%g5452554544%_ _%g5452654548%_))))
                (_%g5452554544%_ _%g5452654548%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5452554544%_
                                                 _%g5452654548%_))))
                                        (_%g5452554544%_ _%g5452654548%_)))))
                            (_%g5452454606%_
                             (list (let ((_%instance?54610%_
                                          (let ((__obj100060 _%klass54513%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj100060
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj100060
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj100060
                                                 'predicate)))))
                                     (if _%maybe?54511%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54610%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54610%_))
                                   _%var54505%_
                                   _%expr-body54520%_)))
                          _%expr-body54520%_)))))
          (let* ((_%__stx9406594066%_ _%stx53712%_)
                 (_%g5372353866%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9406594066%_))))
            (let ((_%__kont9406894069%_
                   (lambda (_%g5372554433%_
                            _%g5372654435%_
                            _%g5372754436%_
                            _%g5372854437%_)
                     (let* ((_%g5446254470%_
                             (lambda (_%g5446354466%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5446354466%_)))
                            (_%g5446154497%_
                             (lambda (_%g5446354474%_)
                               ((lambda (_%g5446454477%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5372854437%_
                                                    (cons _%g5372754436%_
                                                          (cons _%g5446454477%_
                                                                '())))
                                              (foldr (lambda (_%g5448854491%_
                                                              _%g5448954494%_)
                                                       (cons _%g5448854491%_
                                                             _%g5448954494%_))
                                                     '()
                                                     _%g5372554433%_))))
                                _%g5446354474%_))))
                       (_%g5446154497%_
                        (let ((__obj100061
                               (gx#syntax-local-value _%g5372654435%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100061
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100061
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100061
                               'identifier)))))))
                  (_%__kont9407294073%_
                   (lambda (_%g5375354313%_ _%g5375454315%_ _%g5375554316%_)
                     (_%expand53717%_
                      _%g5375554316%_
                      _%g5375454315%_
                      (foldr (lambda (_%g5433954342%_ _%g5434054345%_)
                               (cons _%g5433954342%_ _%g5434054345%_))
                             '()
                             _%g5375354313%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9407694077%_
                   (lambda (_%g5378054193%_ _%g5378154195%_ _%g5378254196%_)
                     (_%expand53717%_
                      _%g5378254196%_
                      _%g5378154195%_
                      (foldr (lambda (_%g5421954222%_ _%g5422054225%_)
                               (cons _%g5421954222%_ _%g5422054225%_))
                             '()
                             _%g5378054193%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9408094081%_
                   (lambda (_%g5380754073%_ _%g5380854075%_ _%g5380954076%_)
                     (_%expand53717%_
                      _%g5380954076%_
                      _%g5380854075%_
                      (foldr (lambda (_%g5409954102%_ _%g5410054105%_)
                               (cons _%g5409954102%_ _%g5410054105%_))
                             '()
                             _%g5380754073%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9408494085%_
                   (lambda (_%g5383453951%_ _%g5383553953%_ _%g5383653954%_)
                     (_%expand53717%_
                      _%g5383653954%_
                      _%g5383553953%_
                      (foldr (lambda (_%g5397953982%_ _%g5398053985%_)
                               (cons _%g5397953982%_ _%g5398053985%_))
                             '()
                             _%g5383453951%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9430494305%_
                      (lambda (_%e5383753873%_
                               _%hd5383853877%_
                               _%tl5383953880%_
                               _%e5384053883%_
                               _%hd5384153887%_
                               _%tl5384253890%_
                               _%e5384353893%_
                               _%hd5384453897%_
                               _%tl5384553900%_
                               _%e5384653903%_
                               _%hd5384753907%_
                               _%tl5384853910%_
                               _%e5384953913%_
                               _%hd5385053917%_
                               _%tl5385153920%_
                               _%__splice9408694087%_
                               _%target5385253923%_
                               _%tl5385453926%_)
                        (letrec ((_%loop5385553929%_
                                  (lambda (_%hd5385353933%_ _%body5385953936%_)
                                    (if (gx#stx-pair? _%hd5385353933%_)
                                        (let ((_%e5385653938%_
                                               (gx#syntax-e _%hd5385353933%_)))
                                          (let ((_%lp-tl5385853945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5385653938%_)))
                                                (_%lp-hd5385753942%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5385653938%_))))
                                            (_%loop5385553929%_
                                             _%lp-tl5385853945%_
                                             (cons _%lp-hd5385753942%_
                                                   _%body5385953936%_))))
                                        (let ((_%body5386053948%_
                                               (reverse _%body5385953936%_)))
                                          (let ((_%g5383453951%_
                                                 _%body5386053948%_)
                                                (_%g5383553953%_
                                                 _%hd5385053917%_)
                                                (_%g5383653954%_
                                                 _%hd5384453897%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5383553953%_))
                                                (_%__kont9408494085%_
                                                 _%g5383453951%_
                                                 _%g5383553953%_
                                                 _%g5383653954%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))))))))
                          (_%loop5385553929%_ _%target5385253923%_ '()))))
                     (_%__match9426094261%_
                      (lambda (_%e5381053995%_
                               _%hd5381153999%_
                               _%tl5381254002%_
                               _%e5381354005%_
                               _%hd5381454009%_
                               _%tl5381554012%_
                               _%e5381654015%_
                               _%hd5381754019%_
                               _%tl5381854022%_
                               _%e5381954025%_
                               _%hd5382054029%_
                               _%tl5382154032%_
                               _%e5382254035%_
                               _%hd5382354039%_
                               _%tl5382454042%_
                               _%__splice9408294083%_
                               _%target5382554045%_
                               _%tl5382754048%_)
                        (letrec ((_%loop5382854051%_
                                  (lambda (_%hd5382654055%_ _%body5383254058%_)
                                    (if (gx#stx-pair? _%hd5382654055%_)
                                        (let ((_%e5382954060%_
                                               (gx#syntax-e _%hd5382654055%_)))
                                          (let ((_%lp-tl5383154067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5382954060%_)))
                                                (_%lp-hd5383054064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5382954060%_))))
                                            (_%loop5382854051%_
                                             _%lp-tl5383154067%_
                                             (cons _%lp-hd5383054064%_
                                                   _%body5383254058%_))))
                                        (let ((_%body5383354070%_
                                               (reverse _%body5383254058%_)))
                                          (let ((_%g5380754073%_
                                                 _%body5383354070%_)
                                                (_%g5380854075%_
                                                 _%hd5382354039%_)
                                                (_%g5380954076%_
                                                 _%hd5381754019%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5380854075%_))
                                                (_%__kont9408094081%_
                                                 _%g5380754073%_
                                                 _%g5380854075%_
                                                 _%g5380954076%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))))))))
                          (_%loop5382854051%_ _%target5382554045%_ '()))))
                     (_%__match9421694217%_
                      (lambda (_%e5378354115%_
                               _%hd5378454119%_
                               _%tl5378554122%_
                               _%e5378654125%_
                               _%hd5378754129%_
                               _%tl5378854132%_
                               _%e5378954135%_
                               _%hd5379054139%_
                               _%tl5379154142%_
                               _%e5379254145%_
                               _%hd5379354149%_
                               _%tl5379454152%_
                               _%e5379554155%_
                               _%hd5379654159%_
                               _%tl5379754162%_
                               _%__splice9407894079%_
                               _%target5379854165%_
                               _%tl5380054168%_)
                        (letrec ((_%loop5380154171%_
                                  (lambda (_%hd5379954175%_ _%body5380554178%_)
                                    (if (gx#stx-pair? _%hd5379954175%_)
                                        (let ((_%e5380254180%_
                                               (gx#syntax-e _%hd5379954175%_)))
                                          (let ((_%lp-tl5380454187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5380254180%_)))
                                                (_%lp-hd5380354184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5380254180%_))))
                                            (_%loop5380154171%_
                                             _%lp-tl5380454187%_
                                             (cons _%lp-hd5380354184%_
                                                   _%body5380554178%_))))
                                        (let ((_%body5380654190%_
                                               (reverse _%body5380554178%_)))
                                          (let ((_%g5378054193%_
                                                 _%body5380654190%_)
                                                (_%g5378154195%_
                                                 _%hd5379654159%_)
                                                (_%g5378254196%_
                                                 _%hd5379054139%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5378154195%_))
                                                (_%__kont9407694077%_
                                                 _%g5378054193%_
                                                 _%g5378154195%_
                                                 _%g5378254196%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))))))))
                          (_%loop5380154171%_ _%target5379854165%_ '()))))
                     (_%__match9417294173%_
                      (lambda (_%e5375654235%_
                               _%hd5375754239%_
                               _%tl5375854242%_
                               _%e5375954245%_
                               _%hd5376054249%_
                               _%tl5376154252%_
                               _%e5376254255%_
                               _%hd5376354259%_
                               _%tl5376454262%_
                               _%e5376554265%_
                               _%hd5376654269%_
                               _%tl5376754272%_
                               _%e5376854275%_
                               _%hd5376954279%_
                               _%tl5377054282%_
                               _%__splice9407494075%_
                               _%target5377154285%_
                               _%tl5377354288%_)
                        (letrec ((_%loop5377454291%_
                                  (lambda (_%hd5377254295%_ _%body5377854298%_)
                                    (if (gx#stx-pair? _%hd5377254295%_)
                                        (let ((_%e5377554300%_
                                               (gx#syntax-e _%hd5377254295%_)))
                                          (let ((_%lp-tl5377754307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5377554300%_)))
                                                (_%lp-hd5377654304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5377554300%_))))
                                            (_%loop5377454291%_
                                             _%lp-tl5377754307%_
                                             (cons _%lp-hd5377654304%_
                                                   _%body5377854298%_))))
                                        (let ((_%body5377954310%_
                                               (reverse _%body5377854298%_)))
                                          (let ((_%g5375354313%_
                                                 _%body5377954310%_)
                                                (_%g5375454315%_
                                                 _%hd5376954279%_)
                                                (_%g5375554316%_
                                                 _%hd5376354259%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5375454315%_))
                                                (_%__kont9407294073%_
                                                 _%g5375354313%_
                                                 _%g5375454315%_
                                                 _%g5375554316%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))))))))
                          (_%loop5377454291%_ _%target5377154285%_ '()))))
                     (_%__match9415294153%_
                      (lambda (_%e5375654235%_
                               _%hd5375754239%_
                               _%tl5375854242%_
                               _%e5375954245%_
                               _%hd5376054249%_
                               _%tl5376154252%_
                               _%e5376254255%_
                               _%hd5376354259%_
                               _%tl5376454262%_
                               _%e5376554265%_
                               _%hd5376654269%_
                               _%tl5376754272%_)
                        (if (gx#identifier? _%hd5376654269%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100256_|
                                 _%hd5376654269%_)
                                (if (gx#stx-pair? _%tl5376754272%_)
                                    (let ((_%e5376854275%_
                                           (gx#syntax-e _%tl5376754272%_)))
                                      (let ((_%tl5377054282%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5376854275%_)))
                                            (_%hd5376954279%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5376854275%_))))
                                        (if (gx#stx-null? _%tl5377054282%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5376154252%_)
                                                (let ((_%__splice9407494075%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5376154252%_
                                                        '0)))
                                                  (let ((_%tl5377354288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9407494075%_
                                                            '1)))
                                                        (_%target5377154285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9407494075%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5377354288%_)
                                                        (_%__match9417294173%_
                                                         _%e5375654235%_
                                                         _%hd5375754239%_
                                                         _%tl5375854242%_
                                                         _%e5375954245%_
                                                         _%hd5376054249%_
                                                         _%tl5376154252%_
                                                         _%e5376254255%_
                                                         _%hd5376354259%_
                                                         _%tl5376454262%_
                                                         _%e5376554265%_
                                                         _%hd5376654269%_
                                                         _%tl5376754272%_
                                                         _%e5376854275%_
                                                         _%hd5376954279%_
                                                         _%tl5377054282%_
                                                         _%__splice9407494075%_
                                                         _%target5377154285%_
                                                         _%tl5377354288%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5372353866%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5372353866%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5372353866%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100257_|
                                     _%hd5376654269%_)
                                    (if (gx#stx-pair? _%tl5376754272%_)
                                        (let ((_%e5379554155%_
                                               (gx#syntax-e _%tl5376754272%_)))
                                          (let ((_%tl5379754162%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5379554155%_)))
                                                (_%hd5379654159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5379554155%_))))
                                            (if (gx#stx-null? _%tl5379754162%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5376154252%_)
                                                    (let ((_%__splice9407894079%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5376154252%_
                                                            '0)))
                                                      (let ((_%tl5380054168%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9407894079%_ '1)))
                    (_%target5379854165%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9407894079%_ '0))))
                (if (gx#stx-null? _%tl5380054168%_)
                    (_%__match9421694217%_
                     _%e5375654235%_
                     _%hd5375754239%_
                     _%tl5375854242%_
                     _%e5375954245%_
                     _%hd5376054249%_
                     _%tl5376154252%_
                     _%e5376254255%_
                     _%hd5376354259%_
                     _%tl5376454262%_
                     _%e5376554265%_
                     _%hd5376654269%_
                     _%tl5376754272%_
                     _%e5379554155%_
                     _%hd5379654159%_
                     _%tl5379754162%_
                     _%__splice9407894079%_
                     _%target5379854165%_
                     _%tl5380054168%_)
                    (let () (declare (not safe)) (_%g5372353866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5372353866%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5372353866%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100258_|
                                         _%hd5376654269%_)
                                        (if (gx#stx-pair? _%tl5376754272%_)
                                            (let ((_%e5382254035%_
                                                   (gx#syntax-e
                                                    _%tl5376754272%_)))
                                              (let ((_%tl5382454042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5382254035%_)))
                                                    (_%hd5382354039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5382254035%_))))
                                                (if (gx#stx-null?
                                                     _%tl5382454042%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5376154252%_)
                                                        (let ((_%__splice9408294083%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5376154252%_
                                                                '0)))
                                                          (let ((_%tl5382754048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9408294083%_ '1)))
                        (_%target5382554045%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9408294083%_ '0))))
                    (if (gx#stx-null? _%tl5382754048%_)
                        (_%__match9426094261%_
                         _%e5375654235%_
                         _%hd5375754239%_
                         _%tl5375854242%_
                         _%e5375954245%_
                         _%hd5376054249%_
                         _%tl5376154252%_
                         _%e5376254255%_
                         _%hd5376354259%_
                         _%tl5376454262%_
                         _%e5376554265%_
                         _%hd5376654269%_
                         _%tl5376754272%_
                         _%e5382254035%_
                         _%hd5382354039%_
                         _%tl5382454042%_
                         _%__splice9408294083%_
                         _%target5382554045%_
                         _%tl5382754048%_)
                        (let () (declare (not safe)) (_%g5372353866%_)))))
                (let () (declare (not safe)) (_%g5372353866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5372353866%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5372353866%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100259_|
                                             _%hd5376654269%_)
                                            (if (gx#stx-pair? _%tl5376754272%_)
                                                (let ((_%e5384953913%_
                                                       (gx#syntax-e
                                                        _%tl5376754272%_)))
                                                  (let ((_%tl5385153920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5384953913%_)))
                                                        (_%hd5385053917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5384953913%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5385153920%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5376154252%_)
                                                            (let ((_%__splice9408694087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5376154252%_
                            '0)))
                      (let ((_%tl5385453926%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9408694087%_ '1)))
                            (_%target5385253923%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9408694087%_ '0))))
                        (if (gx#stx-null? _%tl5385453926%_)
                            (_%__match9430494305%_
                             _%e5375654235%_
                             _%hd5375754239%_
                             _%tl5375854242%_
                             _%e5375954245%_
                             _%hd5376054249%_
                             _%tl5376154252%_
                             _%e5376254255%_
                             _%hd5376354259%_
                             _%tl5376454262%_
                             _%e5376554265%_
                             _%hd5376654269%_
                             _%tl5376754272%_
                             _%e5384953913%_
                             _%hd5385053917%_
                             _%tl5385153920%_
                             _%__splice9408694087%_
                             _%target5385253923%_
                             _%tl5385453926%_)
                            (let () (declare (not safe)) (_%g5372353866%_)))))
                    (let () (declare (not safe)) (_%g5372353866%_)))
                (let () (declare (not safe)) (_%g5372353866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5372353866%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5372353866%_))))))
                            (let () (declare (not safe)) (_%g5372353866%_)))))
                     (_%__match9412894129%_
                      (lambda (_%e5372954355%_
                               _%hd5373054359%_
                               _%tl5373154362%_
                               _%e5373254365%_
                               _%hd5373354369%_
                               _%tl5373454372%_
                               _%e5373554375%_
                               _%hd5373654379%_
                               _%tl5373754382%_
                               _%e5373854385%_
                               _%hd5373954389%_
                               _%tl5374054392%_
                               _%e5374154395%_
                               _%hd5374254399%_
                               _%tl5374354402%_
                               _%__splice9407094071%_
                               _%target5374454405%_
                               _%tl5374654408%_)
                        (letrec ((_%loop5374754411%_
                                  (lambda (_%hd5374554415%_ _%body5375154418%_)
                                    (if (gx#stx-pair? _%hd5374554415%_)
                                        (let ((_%e5374854420%_
                                               (gx#syntax-e _%hd5374554415%_)))
                                          (let ((_%lp-tl5375054427%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5374854420%_)))
                                                (_%lp-hd5374954424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5374854420%_))))
                                            (_%loop5374754411%_
                                             _%lp-tl5375054427%_
                                             (cons _%lp-hd5374954424%_
                                                   _%body5375154418%_))))
                                        (let ((_%body5375254430%_
                                               (reverse _%body5375154418%_)))
                                          (let ((_%g5372554433%_
                                                 _%body5375254430%_)
                                                (_%g5372654435%_
                                                 _%hd5374254399%_)
                                                (_%g5372754436%_
                                                 _%hd5373954389%_)
                                                (_%g5372854437%_
                                                 _%hd5373654379%_))
                                            (if (let ((__tmp100260
                                                       (gx#syntax-local-value
                                                        _%g5372654435%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100260))
                                                (_%__kont9406894069%_
                                                 _%g5372554433%_
                                                 _%g5372654435%_
                                                 _%g5372754436%_
                                                 _%g5372854437%_)
                                                (_%__match9415294153%_
                                                 _%e5372954355%_
                                                 _%hd5373054359%_
                                                 _%tl5373154362%_
                                                 _%e5373254365%_
                                                 _%hd5373354369%_
                                                 _%tl5373454372%_
                                                 _%e5373554375%_
                                                 _%hd5373654379%_
                                                 _%tl5373754382%_
                                                 _%e5373854385%_
                                                 _%hd5373954389%_
                                                 _%tl5374054392%_))))))))
                          (_%loop5374754411%_ _%target5374454405%_ '())))))
                (if (gx#stx-pair? _%__stx9406594066%_)
                    (let ((_%e5372954355%_ (gx#syntax-e _%__stx9406594066%_)))
                      (let ((_%tl5373154362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5372954355%_)))
                            (_%hd5373054359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5372954355%_))))
                        (if (gx#stx-pair? _%tl5373154362%_)
                            (let ((_%e5373254365%_
                                   (gx#syntax-e _%tl5373154362%_)))
                              (let ((_%tl5373454372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5373254365%_)))
                                    (_%hd5373354369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5373254365%_))))
                                (if (gx#stx-pair? _%hd5373354369%_)
                                    (let ((_%e5373554375%_
                                           (gx#syntax-e _%hd5373354369%_)))
                                      (let ((_%tl5373754382%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5373554375%_)))
                                            (_%hd5373654379%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5373554375%_))))
                                        (if (gx#stx-pair? _%tl5373754382%_)
                                            (let ((_%e5373854385%_
                                                   (gx#syntax-e
                                                    _%tl5373754382%_)))
                                              (let ((_%tl5374054392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5373854385%_)))
                                                    (_%hd5373954389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5373854385%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5374054392%_)
                                                    (let ((_%e5374154395%_
                                                           (gx#syntax-e
                                                            _%tl5374054392%_)))
                                                      (let ((_%tl5374354402%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5374154395%_)))
                    (_%hd5374254399%_
                     (let () (declare (not safe)) (##car _%e5374154395%_))))
                (if (gx#stx-null? _%tl5374354402%_)
                    (if (gx#stx-pair/null? _%tl5373454372%_)
                        (let ((_%__splice9407094071%_
                               (gx#syntax-split-splice->vector
                                _%tl5373454372%_
                                '0)))
                          (let ((_%tl5374654408%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9407094071%_ '1)))
                                (_%target5374454405%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9407094071%_ '0))))
                            (if (gx#stx-null? _%tl5374654408%_)
                                (_%__match9412894129%_
                                 _%e5372954355%_
                                 _%hd5373054359%_
                                 _%tl5373154362%_
                                 _%e5373254365%_
                                 _%hd5373354369%_
                                 _%tl5373454372%_
                                 _%e5373554375%_
                                 _%hd5373654379%_
                                 _%tl5373754382%_
                                 _%e5373854385%_
                                 _%hd5373954389%_
                                 _%tl5374054392%_
                                 _%e5374154395%_
                                 _%hd5374254399%_
                                 _%tl5374354402%_
                                 _%__splice9407094071%_
                                 _%target5374454405%_
                                 _%tl5374654408%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5372353866%_)))))
                        (let () (declare (not safe)) (_%g5372353866%_)))
                    (let () (declare (not safe)) (_%g5372353866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5372353866%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5372353866%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5372353866%_)))))
                            (let () (declare (not safe)) (_%g5372353866%_)))))
                    (let () (declare (not safe)) (_%g5372353866%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54829%_)
        (letrec ((_%expand-body54832%_
                  (lambda (_%var55823%_
                           _%Interface55825%_
                           _%body55826%_
                           _%checked?55827%_)
                    (let* ((_%type55829%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54829%_
                               _%Interface55825%_)))
                           (_%g5583255876%_
                            (lambda (_%g5583355872%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5583355872%_)))
                           (_%g5583156032%_
                            (lambda (_%g5583355880%_)
                              (if (gx#stx-pair? _%g5583355880%_)
                                  (let ((_%e5584155883%_
                                         (gx#syntax-e _%g5583355880%_)))
                                    (let ((_%hd5584255887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5584155883%_)))
                                          (_%tl5584355890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5584155883%_))))
                                      (if (gx#stx-pair? _%tl5584355890%_)
                                          (let ((_%e5584455893%_
                                                 (gx#syntax-e
                                                  _%tl5584355890%_)))
                                            (let ((_%hd5584555897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5584455893%_)))
                                                  (_%tl5584655900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5584455893%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5584655900%_)
                                                  (let ((_%e5584755903%_
                                                         (gx#syntax-e
                                                          _%tl5584655900%_)))
                                                    (let ((_%hd5584855907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5584755903%_)))
                                                          (_%tl5584955910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5584755903%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5584955910%_)
                                                          (let ((_%e5585055913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5584955910%_)))
                    (let ((_%hd5585155917%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5585055913%_)))
                          (_%tl5585255920%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5585055913%_))))
                      (if (gx#stx-pair? _%tl5585255920%_)
                          (let ((_%e5585355923%_
                                 (gx#syntax-e _%tl5585255920%_)))
                            (let ((_%hd5585455927%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5585355923%_)))
                                  (_%tl5585555930%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5585355923%_))))
                              (if (gx#stx-pair? _%tl5585555930%_)
                                  (let ((_%e5585655933%_
                                         (gx#syntax-e _%tl5585555930%_)))
                                    (let ((_%hd5585755937%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5585655933%_)))
                                          (_%tl5585855940%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5585655933%_))))
                                      (if (gx#stx-pair? _%tl5585855940%_)
                                          (let ((_%e5585955943%_
                                                 (gx#syntax-e
                                                  _%tl5585855940%_)))
                                            (let ((_%hd5586055947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5585955943%_)))
                                                  (_%tl5586155950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5585955943%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5586055947%_)
                                                  (let ((_g100261_
                                                         (gx#syntax-split-splice
                                                          _%hd5586055947%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100261_)
                           (##values-length _g100261_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100262_ 2)))
                    (error "Context expects 2 values" _g100262_)))
              (let ((_%target5586255953%_
                     (let () (declare (not safe)) (##values-ref _g100261_ 0)))
                    (_%tl5586455956%_
                     (let () (declare (not safe)) (##values-ref _g100261_ 1))))
                (if (gx#stx-null? _%tl5586455956%_)
                    (letrec ((_%loop5586555959%_
                              (lambda (_%hd5586355963%_ _%body5586955966%_)
                                (if (gx#stx-pair? _%hd5586355963%_)
                                    (let ((_%e5586655968%_
                                           (gx#syntax-e _%hd5586355963%_)))
                                      (let ((_%lp-hd5586755972%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5586655968%_)))
                                            (_%lp-tl5586855975%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5586655968%_))))
                                        (_%loop5586555959%_
                                         _%lp-tl5586855975%_
                                         (cons _%lp-hd5586755972%_
                                               _%body5586955966%_))))
                                    (let ((_%body5587055978%_
                                           (reverse _%body5586955966%_)))
                                      (if (gx#stx-null? _%tl5586155950%_)
                                          ((lambda (_%g5583455981%_
                                                    _%g5583555983%_
                                                    _%g5583655984%_
                                                    _%g5583755985%_
                                                    _%g5583855986%_
                                                    _%g5583955987%_
                                                    _%g5584055988%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5583755985%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5583855986%_ '()))
                                         (cons _%g5583755985%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5584055988%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5583755985%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5583955987%_ '()))
                               (cons _%g5583655984%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5583555983%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5602356026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5602456029%_)
                      (cons _%g5602356026%_ _%g5602456029%_))
                    '()
                    _%g5583455981%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5587055978%_
                                           _%hd5585755937%_
                                           _%hd5585455927%_
                                           _%hd5585155917%_
                                           _%hd5584855907%_
                                           _%hd5584555897%_
                                           _%hd5584255887%_)
                                          (_%g5583255876%_
                                           _%g5583355880%_)))))))
                      (_%loop5586555959%_ _%target5586255953%_ '()))
                    (_%g5583255876%_ _%g5583355880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5583255876%_
                                                   _%g5583355880%_))))
                                          (_%g5583255876%_ _%g5583355880%_))))
                                  (_%g5583255876%_ _%g5583355880%_))))
                          (_%g5583255876%_ _%g5583355880%_))))
                  (_%g5583255876%_ _%g5583355880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5583255876%_
                                                   _%g5583355880%_))))
                                          (_%g5583255876%_ _%g5583355880%_))))
                                  (_%g5583255876%_ _%g5583355880%_)))))
                      (_%g5583156032%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55829%_
                             (let ((__obj100062 _%type55829%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100062
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100062
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj100062
                                    'type-descriptor)))
                             _%var55823%_
                             _%checked?55827%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55826%_)))))
                 (_%expand54834%_
                  (lambda (_%var55622%_
                           _%Interface55624%_
                           _%body55625%_
                           _%checked?55626%_
                           _%checked-methods?55627%_
                           _%maybe?55628%_)
                    (let* ((_%g5563055638%_
                            (lambda (_%g5563155634%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5563155634%_)))
                           (_%g5562955815%_
                            (lambda (_%g5563155642%_)
                              ((lambda (_%g5563255645%_)
                                 (if _%checked?55626%_
                                     (if _%maybe?55628%_
                                         (let* ((_%g5565755672%_
                                                 (lambda (_%g5565855668%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5565855668%_)))
                                                (_%g5565655718%_
                                                 (lambda (_%g5565855676%_)
                                                   (if (gx#stx-pair?
                                                        _%g5565855676%_)
                                                       (let ((_%e5566155679%_
                                                              (gx#syntax-e
                                                               _%g5565855676%_)))
                                                         (let ((_%hd5566255683%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5566155679%_)))
                       (_%tl5566355686%_
                        (let () (declare (not safe)) (##cdr _%e5566155679%_))))
                   (if (gx#stx-pair? _%tl5566355686%_)
                       (let ((_%e5566455689%_ (gx#syntax-e _%tl5566355686%_)))
                         (let ((_%hd5566555693%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5566455689%_)))
                               (_%tl5566655696%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5566455689%_))))
                           (if (gx#stx-null? _%tl5566655696%_)
                               ((lambda (_%g5565955699%_ _%g5566055701%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5566055701%_
                                                    (cons (cons _%g5565955699%_
                                                                (cons _%g5566055701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5566055701%_
                                                                (cons _%g5563255645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5566055701%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5566555693%_
                                _%hd5566255683%_)
                               (_%g5565755672%_ _%g5565855676%_))))
                       (_%g5565755672%_ _%g5565855676%_))))
               (_%g5565755672%_ _%g5565855676%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5565655718%_
                                            (list _%var55622%_
                                                  _%Interface55624%_)))
                                         (let* ((_%g5572255737%_
                                                 (lambda (_%g5572355733%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5572355733%_)))
                                                (_%g5572155781%_
                                                 (lambda (_%g5572355741%_)
                                                   (if (gx#stx-pair?
                                                        _%g5572355741%_)
                                                       (let ((_%e5572655744%_
                                                              (gx#syntax-e
                                                               _%g5572355741%_)))
                                                         (let ((_%hd5572755748%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5572655744%_)))
                       (_%tl5572855751%_
                        (let () (declare (not safe)) (##cdr _%e5572655744%_))))
                   (if (gx#stx-pair? _%tl5572855751%_)
                       (let ((_%e5572955754%_ (gx#syntax-e _%tl5572855751%_)))
                         (let ((_%hd5573055758%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5572955754%_)))
                               (_%tl5573155761%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5572955754%_))))
                           (if (gx#stx-null? _%tl5573155761%_)
                               ((lambda (_%g5572455764%_ _%g5572555766%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5572555766%_
                                                    (cons (cons _%g5572455764%_
                                                                (cons _%g5572555766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5563255645%_ '()))))
                                _%hd5573055758%_
                                _%hd5572755748%_)
                               (_%g5572255737%_ _%g5572355741%_))))
                       (_%g5572255737%_ _%g5572355741%_))))
               (_%g5572255737%_ _%g5572355741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5572155781%_
                                            (list _%var55622%_
                                                  _%Interface55624%_))))
                                     (if _%maybe?55628%_
                                         (let* ((_%g5578555793%_
                                                 (lambda (_%g5578655789%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5578655789%_)))
                                                (_%g5578455811%_
                                                 (lambda (_%g5578655797%_)
                                                   ((lambda (_%g5578755800%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5578755800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5563255645%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5578755800%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5578655797%_))))
                                           (_%g5578455811%_ _%var55622%_))
                                         _%g5563255645%_)))
                               _%g5563155642%_))))
                      (_%g5562955815%_
                       (_%expand-body54832%_
                        _%var55622%_
                        _%Interface55624%_
                        _%body55625%_
                        (let ((_%$e55819%_ _%checked?55626%_))
                          (if _%$e55819%_
                              _%$e55819%_
                              _%checked-methods?55627%_))))))))
          (let* ((_%__stx9430794308%_ _%stx54829%_)
                 (_%g5484054983%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9430794308%_))))
            (let ((_%__kont9431094311%_
                   (lambda (_%g5484255550%_
                            _%g5484355552%_
                            _%g5484455553%_
                            _%g5484555554%_)
                     (let* ((_%g5557955587%_
                             (lambda (_%g5558055583%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5558055583%_)))
                            (_%g5557855614%_
                             (lambda (_%g5558055591%_)
                               ((lambda (_%g5558155594%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5484555554%_
                                                    (cons _%g5484455553%_
                                                          (cons _%g5558155594%_
                                                                '())))
                                              (foldr (lambda (_%g5560555608%_
                                                              _%g5560655611%_)
                                                       (cons _%g5560555608%_
                                                             _%g5560655611%_))
                                                     '()
                                                     _%g5484255550%_))))
                                _%g5558055591%_))))
                       (_%g5557855614%_
                        (let ((__obj100063
                               (gx#syntax-local-value _%g5484355552%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100063
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100063
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100063
                               'identifier)))))))
                  (_%__kont9431494315%_
                   (lambda (_%g5487055430%_ _%g5487155432%_ _%g5487255433%_)
                     (_%expand54834%_
                      _%g5487255433%_
                      _%g5487155432%_
                      (foldr (lambda (_%g5545655459%_ _%g5545755462%_)
                               (cons _%g5545655459%_ _%g5545755462%_))
                             '()
                             _%g5487055430%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9431894319%_
                   (lambda (_%g5489755310%_ _%g5489855312%_ _%g5489955313%_)
                     (_%expand54834%_
                      _%g5489955313%_
                      _%g5489855312%_
                      (foldr (lambda (_%g5533655339%_ _%g5533755342%_)
                               (cons _%g5533655339%_ _%g5533755342%_))
                             '()
                             _%g5489755310%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9432294323%_
                   (lambda (_%g5492455190%_ _%g5492555192%_ _%g5492655193%_)
                     (_%expand54834%_
                      _%g5492655193%_
                      _%g5492555192%_
                      (foldr (lambda (_%g5521655219%_ _%g5521755222%_)
                               (cons _%g5521655219%_ _%g5521755222%_))
                             '()
                             _%g5492455190%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9432694327%_
                   (lambda (_%g5495155068%_ _%g5495255070%_ _%g5495355071%_)
                     (_%expand54834%_
                      _%g5495355071%_
                      _%g5495255070%_
                      (foldr (lambda (_%g5509655099%_ _%g5509755102%_)
                               (cons _%g5509655099%_ _%g5509755102%_))
                             '()
                             _%g5495155068%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9454694547%_
                      (lambda (_%e5495454990%_
                               _%hd5495554994%_
                               _%tl5495654997%_
                               _%e5495755000%_
                               _%hd5495855004%_
                               _%tl5495955007%_
                               _%e5496055010%_
                               _%hd5496155014%_
                               _%tl5496255017%_
                               _%e5496355020%_
                               _%hd5496455024%_
                               _%tl5496555027%_
                               _%e5496655030%_
                               _%hd5496755034%_
                               _%tl5496855037%_
                               _%__splice9432894329%_
                               _%target5496955040%_
                               _%tl5497155043%_)
                        (letrec ((_%loop5497255046%_
                                  (lambda (_%hd5497055050%_ _%body5497655053%_)
                                    (if (gx#stx-pair? _%hd5497055050%_)
                                        (let ((_%e5497355055%_
                                               (gx#syntax-e _%hd5497055050%_)))
                                          (let ((_%lp-tl5497555062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5497355055%_)))
                                                (_%lp-hd5497455059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5497355055%_))))
                                            (_%loop5497255046%_
                                             _%lp-tl5497555062%_
                                             (cons _%lp-hd5497455059%_
                                                   _%body5497655053%_))))
                                        (let ((_%body5497755065%_
                                               (reverse _%body5497655053%_)))
                                          (let ((_%g5495155068%_
                                                 _%body5497755065%_)
                                                (_%g5495255070%_
                                                 _%hd5496755034%_)
                                                (_%g5495355071%_
                                                 _%hd5496155014%_))
                                            (if (and (gx#identifier?
                                                      _%g5495355071%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5495255070%_)))
                                                (_%__kont9432694327%_
                                                 _%g5495155068%_
                                                 _%g5495255070%_
                                                 _%g5495355071%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))))))))
                          (_%loop5497255046%_ _%target5496955040%_ '()))))
                     (_%__match9450294503%_
                      (lambda (_%e5492755112%_
                               _%hd5492855116%_
                               _%tl5492955119%_
                               _%e5493055122%_
                               _%hd5493155126%_
                               _%tl5493255129%_
                               _%e5493355132%_
                               _%hd5493455136%_
                               _%tl5493555139%_
                               _%e5493655142%_
                               _%hd5493755146%_
                               _%tl5493855149%_
                               _%e5493955152%_
                               _%hd5494055156%_
                               _%tl5494155159%_
                               _%__splice9432494325%_
                               _%target5494255162%_
                               _%tl5494455165%_)
                        (letrec ((_%loop5494555168%_
                                  (lambda (_%hd5494355172%_ _%body5494955175%_)
                                    (if (gx#stx-pair? _%hd5494355172%_)
                                        (let ((_%e5494655177%_
                                               (gx#syntax-e _%hd5494355172%_)))
                                          (let ((_%lp-tl5494855184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5494655177%_)))
                                                (_%lp-hd5494755181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5494655177%_))))
                                            (_%loop5494555168%_
                                             _%lp-tl5494855184%_
                                             (cons _%lp-hd5494755181%_
                                                   _%body5494955175%_))))
                                        (let ((_%body5495055187%_
                                               (reverse _%body5494955175%_)))
                                          (let ((_%g5492455190%_
                                                 _%body5495055187%_)
                                                (_%g5492555192%_
                                                 _%hd5494055156%_)
                                                (_%g5492655193%_
                                                 _%hd5493455136%_))
                                            (if (and (gx#identifier?
                                                      _%g5492655193%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5492555192%_)))
                                                (_%__kont9432294323%_
                                                 _%g5492455190%_
                                                 _%g5492555192%_
                                                 _%g5492655193%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))))))))
                          (_%loop5494555168%_ _%target5494255162%_ '()))))
                     (_%__match9445894459%_
                      (lambda (_%e5490055232%_
                               _%hd5490155236%_
                               _%tl5490255239%_
                               _%e5490355242%_
                               _%hd5490455246%_
                               _%tl5490555249%_
                               _%e5490655252%_
                               _%hd5490755256%_
                               _%tl5490855259%_
                               _%e5490955262%_
                               _%hd5491055266%_
                               _%tl5491155269%_
                               _%e5491255272%_
                               _%hd5491355276%_
                               _%tl5491455279%_
                               _%__splice9432094321%_
                               _%target5491555282%_
                               _%tl5491755285%_)
                        (letrec ((_%loop5491855288%_
                                  (lambda (_%hd5491655292%_ _%body5492255295%_)
                                    (if (gx#stx-pair? _%hd5491655292%_)
                                        (let ((_%e5491955297%_
                                               (gx#syntax-e _%hd5491655292%_)))
                                          (let ((_%lp-tl5492155304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5491955297%_)))
                                                (_%lp-hd5492055301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5491955297%_))))
                                            (_%loop5491855288%_
                                             _%lp-tl5492155304%_
                                             (cons _%lp-hd5492055301%_
                                                   _%body5492255295%_))))
                                        (let ((_%body5492355307%_
                                               (reverse _%body5492255295%_)))
                                          (let ((_%g5489755310%_
                                                 _%body5492355307%_)
                                                (_%g5489855312%_
                                                 _%hd5491355276%_)
                                                (_%g5489955313%_
                                                 _%hd5490755256%_))
                                            (if (and (gx#identifier?
                                                      _%g5489955313%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5489855312%_)))
                                                (_%__kont9431894319%_
                                                 _%g5489755310%_
                                                 _%g5489855312%_
                                                 _%g5489955313%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))))))))
                          (_%loop5491855288%_ _%target5491555282%_ '()))))
                     (_%__match9441494415%_
                      (lambda (_%e5487355352%_
                               _%hd5487455356%_
                               _%tl5487555359%_
                               _%e5487655362%_
                               _%hd5487755366%_
                               _%tl5487855369%_
                               _%e5487955372%_
                               _%hd5488055376%_
                               _%tl5488155379%_
                               _%e5488255382%_
                               _%hd5488355386%_
                               _%tl5488455389%_
                               _%e5488555392%_
                               _%hd5488655396%_
                               _%tl5488755399%_
                               _%__splice9431694317%_
                               _%target5488855402%_
                               _%tl5489055405%_)
                        (letrec ((_%loop5489155408%_
                                  (lambda (_%hd5488955412%_ _%body5489555415%_)
                                    (if (gx#stx-pair? _%hd5488955412%_)
                                        (let ((_%e5489255417%_
                                               (gx#syntax-e _%hd5488955412%_)))
                                          (let ((_%lp-tl5489455424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5489255417%_)))
                                                (_%lp-hd5489355421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5489255417%_))))
                                            (_%loop5489155408%_
                                             _%lp-tl5489455424%_
                                             (cons _%lp-hd5489355421%_
                                                   _%body5489555415%_))))
                                        (let ((_%body5489655427%_
                                               (reverse _%body5489555415%_)))
                                          (let ((_%g5487055430%_
                                                 _%body5489655427%_)
                                                (_%g5487155432%_
                                                 _%hd5488655396%_)
                                                (_%g5487255433%_
                                                 _%hd5488055376%_))
                                            (if (and (gx#identifier?
                                                      _%g5487255433%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5487155432%_)))
                                                (_%__kont9431494315%_
                                                 _%g5487055430%_
                                                 _%g5487155432%_
                                                 _%g5487255433%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))))))))
                          (_%loop5489155408%_ _%target5488855402%_ '()))))
                     (_%__match9439494395%_
                      (lambda (_%e5487355352%_
                               _%hd5487455356%_
                               _%tl5487555359%_
                               _%e5487655362%_
                               _%hd5487755366%_
                               _%tl5487855369%_
                               _%e5487955372%_
                               _%hd5488055376%_
                               _%tl5488155379%_
                               _%e5488255382%_
                               _%hd5488355386%_
                               _%tl5488455389%_)
                        (if (gx#identifier? _%hd5488355386%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100263_|
                                 _%hd5488355386%_)
                                (if (gx#stx-pair? _%tl5488455389%_)
                                    (let ((_%e5488555392%_
                                           (gx#syntax-e _%tl5488455389%_)))
                                      (let ((_%tl5488755399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5488555392%_)))
                                            (_%hd5488655396%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5488555392%_))))
                                        (if (gx#stx-null? _%tl5488755399%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5487855369%_)
                                                (let ((_%__splice9431694317%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5487855369%_
                                                        '0)))
                                                  (let ((_%tl5489055405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9431694317%_
                                                            '1)))
                                                        (_%target5488855402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9431694317%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5489055405%_)
                                                        (_%__match9441494415%_
                                                         _%e5487355352%_
                                                         _%hd5487455356%_
                                                         _%tl5487555359%_
                                                         _%e5487655362%_
                                                         _%hd5487755366%_
                                                         _%tl5487855369%_
                                                         _%e5487955372%_
                                                         _%hd5488055376%_
                                                         _%tl5488155379%_
                                                         _%e5488255382%_
                                                         _%hd5488355386%_
                                                         _%tl5488455389%_
                                                         _%e5488555392%_
                                                         _%hd5488655396%_
                                                         _%tl5488755399%_
                                                         _%__splice9431694317%_
                                                         _%target5488855402%_
                                                         _%tl5489055405%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5484054983%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5484054983%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5484054983%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100264_|
                                     _%hd5488355386%_)
                                    (if (gx#stx-pair? _%tl5488455389%_)
                                        (let ((_%e5491255272%_
                                               (gx#syntax-e _%tl5488455389%_)))
                                          (let ((_%tl5491455279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5491255272%_)))
                                                (_%hd5491355276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5491255272%_))))
                                            (if (gx#stx-null? _%tl5491455279%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5487855369%_)
                                                    (let ((_%__splice9432094321%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5487855369%_
                                                            '0)))
                                                      (let ((_%tl5491755285%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9432094321%_ '1)))
                    (_%target5491555282%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9432094321%_ '0))))
                (if (gx#stx-null? _%tl5491755285%_)
                    (_%__match9445894459%_
                     _%e5487355352%_
                     _%hd5487455356%_
                     _%tl5487555359%_
                     _%e5487655362%_
                     _%hd5487755366%_
                     _%tl5487855369%_
                     _%e5487955372%_
                     _%hd5488055376%_
                     _%tl5488155379%_
                     _%e5488255382%_
                     _%hd5488355386%_
                     _%tl5488455389%_
                     _%e5491255272%_
                     _%hd5491355276%_
                     _%tl5491455279%_
                     _%__splice9432094321%_
                     _%target5491555282%_
                     _%tl5491755285%_)
                    (let () (declare (not safe)) (_%g5484054983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5484054983%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5484054983%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100265_|
                                         _%hd5488355386%_)
                                        (if (gx#stx-pair? _%tl5488455389%_)
                                            (let ((_%e5493955152%_
                                                   (gx#syntax-e
                                                    _%tl5488455389%_)))
                                              (let ((_%tl5494155159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5493955152%_)))
                                                    (_%hd5494055156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5493955152%_))))
                                                (if (gx#stx-null?
                                                     _%tl5494155159%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5487855369%_)
                                                        (let ((_%__splice9432494325%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5487855369%_
                                                                '0)))
                                                          (let ((_%tl5494455165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9432494325%_ '1)))
                        (_%target5494255162%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9432494325%_ '0))))
                    (if (gx#stx-null? _%tl5494455165%_)
                        (_%__match9450294503%_
                         _%e5487355352%_
                         _%hd5487455356%_
                         _%tl5487555359%_
                         _%e5487655362%_
                         _%hd5487755366%_
                         _%tl5487855369%_
                         _%e5487955372%_
                         _%hd5488055376%_
                         _%tl5488155379%_
                         _%e5488255382%_
                         _%hd5488355386%_
                         _%tl5488455389%_
                         _%e5493955152%_
                         _%hd5494055156%_
                         _%tl5494155159%_
                         _%__splice9432494325%_
                         _%target5494255162%_
                         _%tl5494455165%_)
                        (let () (declare (not safe)) (_%g5484054983%_)))))
                (let () (declare (not safe)) (_%g5484054983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5484054983%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5484054983%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100266_|
                                             _%hd5488355386%_)
                                            (if (gx#stx-pair? _%tl5488455389%_)
                                                (let ((_%e5496655030%_
                                                       (gx#syntax-e
                                                        _%tl5488455389%_)))
                                                  (let ((_%tl5496855037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5496655030%_)))
                                                        (_%hd5496755034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5496655030%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5496855037%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5487855369%_)
                                                            (let ((_%__splice9432894329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5487855369%_
                            '0)))
                      (let ((_%tl5497155043%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9432894329%_ '1)))
                            (_%target5496955040%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9432894329%_ '0))))
                        (if (gx#stx-null? _%tl5497155043%_)
                            (_%__match9454694547%_
                             _%e5487355352%_
                             _%hd5487455356%_
                             _%tl5487555359%_
                             _%e5487655362%_
                             _%hd5487755366%_
                             _%tl5487855369%_
                             _%e5487955372%_
                             _%hd5488055376%_
                             _%tl5488155379%_
                             _%e5488255382%_
                             _%hd5488355386%_
                             _%tl5488455389%_
                             _%e5496655030%_
                             _%hd5496755034%_
                             _%tl5496855037%_
                             _%__splice9432894329%_
                             _%target5496955040%_
                             _%tl5497155043%_)
                            (let () (declare (not safe)) (_%g5484054983%_)))))
                    (let () (declare (not safe)) (_%g5484054983%_)))
                (let () (declare (not safe)) (_%g5484054983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5484054983%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5484054983%_))))))
                            (let () (declare (not safe)) (_%g5484054983%_)))))
                     (_%__match9437094371%_
                      (lambda (_%e5484655472%_
                               _%hd5484755476%_
                               _%tl5484855479%_
                               _%e5484955482%_
                               _%hd5485055486%_
                               _%tl5485155489%_
                               _%e5485255492%_
                               _%hd5485355496%_
                               _%tl5485455499%_
                               _%e5485555502%_
                               _%hd5485655506%_
                               _%tl5485755509%_
                               _%e5485855512%_
                               _%hd5485955516%_
                               _%tl5486055519%_
                               _%__splice9431294313%_
                               _%target5486155522%_
                               _%tl5486355525%_)
                        (letrec ((_%loop5486455528%_
                                  (lambda (_%hd5486255532%_ _%body5486855535%_)
                                    (if (gx#stx-pair? _%hd5486255532%_)
                                        (let ((_%e5486555537%_
                                               (gx#syntax-e _%hd5486255532%_)))
                                          (let ((_%lp-tl5486755544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5486555537%_)))
                                                (_%lp-hd5486655541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5486555537%_))))
                                            (_%loop5486455528%_
                                             _%lp-tl5486755544%_
                                             (cons _%lp-hd5486655541%_
                                                   _%body5486855535%_))))
                                        (let ((_%body5486955547%_
                                               (reverse _%body5486855535%_)))
                                          (let ((_%g5484255550%_
                                                 _%body5486955547%_)
                                                (_%g5484355552%_
                                                 _%hd5485955516%_)
                                                (_%g5484455553%_
                                                 _%hd5485655506%_)
                                                (_%g5484555554%_
                                                 _%hd5485355496%_))
                                            (if (let ((__tmp100267
                                                       (gx#syntax-local-value
                                                        _%g5484355552%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100267))
                                                (_%__kont9431094311%_
                                                 _%g5484255550%_
                                                 _%g5484355552%_
                                                 _%g5484455553%_
                                                 _%g5484555554%_)
                                                (_%__match9439494395%_
                                                 _%e5484655472%_
                                                 _%hd5484755476%_
                                                 _%tl5484855479%_
                                                 _%e5484955482%_
                                                 _%hd5485055486%_
                                                 _%tl5485155489%_
                                                 _%e5485255492%_
                                                 _%hd5485355496%_
                                                 _%tl5485455499%_
                                                 _%e5485555502%_
                                                 _%hd5485655506%_
                                                 _%tl5485755509%_))))))))
                          (_%loop5486455528%_ _%target5486155522%_ '())))))
                (if (gx#stx-pair? _%__stx9430794308%_)
                    (let ((_%e5484655472%_ (gx#syntax-e _%__stx9430794308%_)))
                      (let ((_%tl5484855479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5484655472%_)))
                            (_%hd5484755476%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5484655472%_))))
                        (if (gx#stx-pair? _%tl5484855479%_)
                            (let ((_%e5484955482%_
                                   (gx#syntax-e _%tl5484855479%_)))
                              (let ((_%tl5485155489%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5484955482%_)))
                                    (_%hd5485055486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5484955482%_))))
                                (if (gx#stx-pair? _%hd5485055486%_)
                                    (let ((_%e5485255492%_
                                           (gx#syntax-e _%hd5485055486%_)))
                                      (let ((_%tl5485455499%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5485255492%_)))
                                            (_%hd5485355496%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5485255492%_))))
                                        (if (gx#stx-pair? _%tl5485455499%_)
                                            (let ((_%e5485555502%_
                                                   (gx#syntax-e
                                                    _%tl5485455499%_)))
                                              (let ((_%tl5485755509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5485555502%_)))
                                                    (_%hd5485655506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5485555502%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5485755509%_)
                                                    (let ((_%e5485855512%_
                                                           (gx#syntax-e
                                                            _%tl5485755509%_)))
                                                      (let ((_%tl5486055519%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5485855512%_)))
                    (_%hd5485955516%_
                     (let () (declare (not safe)) (##car _%e5485855512%_))))
                (if (gx#stx-null? _%tl5486055519%_)
                    (if (gx#stx-pair/null? _%tl5485155489%_)
                        (let ((_%__splice9431294313%_
                               (gx#syntax-split-splice->vector
                                _%tl5485155489%_
                                '0)))
                          (let ((_%tl5486355525%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9431294313%_ '1)))
                                (_%target5486155522%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9431294313%_ '0))))
                            (if (gx#stx-null? _%tl5486355525%_)
                                (_%__match9437094371%_
                                 _%e5484655472%_
                                 _%hd5484755476%_
                                 _%tl5484855479%_
                                 _%e5484955482%_
                                 _%hd5485055486%_
                                 _%tl5485155489%_
                                 _%e5485255492%_
                                 _%hd5485355496%_
                                 _%tl5485455499%_
                                 _%e5485555502%_
                                 _%hd5485655506%_
                                 _%tl5485755509%_
                                 _%e5485855512%_
                                 _%hd5485955516%_
                                 _%tl5486055519%_
                                 _%__splice9431294313%_
                                 _%target5486155522%_
                                 _%tl5486355525%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5484054983%_)))))
                        (let () (declare (not safe)) (_%g5484054983%_)))
                    (let () (declare (not safe)) (_%g5484054983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5484054983%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5484054983%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5484054983%_)))))
                            (let () (declare (not safe)) (_%g5484054983%_)))))
                    (let () (declare (not safe)) (_%g5484054983%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56042%_)
        (let* ((_%__stx9454994550%_ _%stx56042%_)
               (_%g5604756107%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9454994550%_))))
          (let ((_%__kont9455294553%_
                 (lambda (_%g5604956663%_ _%g5605056665%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5605056665%_ '()))
                               (foldr (lambda (_%g5668156684%_ _%g5668256687%_)
                                        (cons _%g5668156684%_ _%g5668256687%_))
                                      '()
                                      _%g5604956663%_)))))
                (_%__kont9455694557%_
                 (lambda (_%g5606656251%_ _%g5606756253%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5606756253%_)
                       (let* ((_%g5627356280%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56042%_
                                _%g5606756253%_))
                              (_%E5627556286%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5627356280%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5627656584%_
                               (lambda (_%parts56290%_ _%var56292%_)
                                 (let ((_%$e56294%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56292%_))))
                                   (if _%$e56294%_
                                       ((lambda (_%te56298%_)
                                          (let _%loop56301%_ ((_%parts56304%_
                                                               _%parts56290%_)
                                                              (_%type56306%_
                                                               (##direct-structure-ref
                                                                _%te56298%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object56307%_
                                                               _%var56292%_)
                                                              (_%checked-method?56308%_
                                                               (##direct-structure-ref
                                                                _%te56298%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?56309%_
                                                               '#f))
                                            (let* ((_%parts5631056318%_
                                                    _%parts56304%_)
                                                   (_%else5631256379%_
                                                    (lambda ()
                                                      (let* ((_%g5633056338%_
                                                              (lambda (_%g5633156334%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5633156334%_)))
                     (_%g5632956375%_
                      (lambda (_%g5633156342%_)
                        ((lambda (_%g5633256345%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5633256345%_
                                       (foldr (lambda (_%g5636656369%_
                                                       _%g5636756372%_)
                                                (cons _%g5636656369%_
                                                      _%g5636756372%_))
                                              '()
                                              _%g5606656251%_))))
                         _%g5633156342%_))))
                (_%g5632956375%_ _%object56307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5631456558%_
                                                    (lambda (_%rest56383%_
                                                             _%part56385%_)
                                                      (if (and (not _%nil-check?56309%_)
                                                               (let ((__tmp100268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part56385%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp100268)))
                  (let ((_%str56389%_ (symbol->string _%part56385%_)))
                    (_%loop56301%_
                     (cons (let ((__tmp100269
                                  (substring
                                   _%str56389%_
                                   '1
                                   (string-length _%str56389%_))))
                             (declare (not safe))
                             (##string->symbol __tmp100269))
                           _%rest56383%_)
                     _%type56306%_
                     _%object56307%_
                     _%checked-method?56308%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type56306%_))
                      (let* ((_%g5639456409%_
                              (lambda (_%g5639556405%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5639556405%_)))
                             (_%g5639356478%_
                              (lambda (_%g5639556413%_)
                                (if (gx#stx-pair? _%g5639556413%_)
                                    (let ((_%e5639856416%_
                                           (gx#syntax-e _%g5639556413%_)))
                                      (let ((_%hd5639956420%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5639856416%_)))
                                            (_%tl5640056423%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5639856416%_))))
                                        (if (gx#stx-pair? _%tl5640056423%_)
                                            (let ((_%e5640156426%_
                                                   (gx#syntax-e
                                                    _%tl5640056423%_)))
                                              (let ((_%hd5640256430%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5640156426%_)))
                                                    (_%tl5640356433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5640156426%_))))
                                                (if (gx#stx-null?
                                                     _%tl5640356433%_)
                                                    ((lambda (_%g5639656436%_
                                                              _%g5639756438%_)
                                                       (if (null? _%rest56383%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5639656436%_
                                     (cons _%g5639756438%_ '()))
                               (foldr (lambda (_%g5645756460%_ _%g5645856463%_)
                                        (cons _%g5645756460%_ _%g5645856463%_))
                                      '()
                                      _%g5606656251%_)))
                   (let ((_%$e56466%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type56306%_
                           _%part56385%_)))
                     (if _%$e56466%_
                         ((lambda (_%slot-type56470%_)
                            (let ((_%slot-type56473%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx56042%_
                                      _%slot-type56470%_))))
                              (_%loop56301%_
                               _%rest56383%_
                               _%slot-type56473%_
                               (cons _%g5639656436%_
                                     (cons _%g5639756438%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type56306%_
                                _%part56385%_)
                               '#f)))
                          _%$e56466%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx56042%_
                          _%g5606756253%_
                          _%part56385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5640256430%_
                                                     _%hd5639956420%_)
                                                    (_%g5639456409%_
                                                     _%g5639556413%_))))
                                            (_%g5639456409%_
                                             _%g5639556413%_))))
                                    (_%g5639456409%_ _%g5639556413%_)))))
                        (_%g5639356478%_
                         (list (if _%nil-check?56309%_
                                   (cons 'check-nil!
                                         (cons _%object56307%_ '()))
                                   _%object56307%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx56042%_
                                _%type56306%_
                                _%part56385%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type56306%_))
                          (if (null? _%rest56383%_)
                              (let* ((_%g5648456499%_
                                      (lambda (_%g5648556495%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5648556495%_)))
                                     (_%g5648356552%_
                                      (lambda (_%g5648556503%_)
                                        (if (gx#stx-pair? _%g5648556503%_)
                                            (let ((_%e5648856506%_
                                                   (gx#syntax-e
                                                    _%g5648556503%_)))
                                              (let ((_%hd5648956510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5648856506%_)))
                                                    (_%tl5649056513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5648856506%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5649056513%_)
                                                    (let ((_%e5649156516%_
                                                           (gx#syntax-e
                                                            _%tl5649056513%_)))
                                                      (let ((_%hd5649256520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5649156516%_)))
                    (_%tl5649356523%_
                     (let () (declare (not safe)) (##cdr _%e5649156516%_))))
                (if (gx#stx-null? _%tl5649356523%_)
                    ((lambda (_%g5648656526%_ _%g5648756528%_)
                       (cons _%g5648656526%_
                             (cons _%g5648756528%_
                                   (foldr (lambda (_%g5654356546%_
                                                   _%g5654456549%_)
                                            (cons _%g5654356546%_
                                                  _%g5654456549%_))
                                          '()
                                          _%g5606656251%_))))
                     _%hd5649256520%_
                     _%hd5648956510%_)
                    (_%g5648456499%_ _%g5648556503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5648456499%_
                                                     _%g5648556503%_))))
                                            (_%g5648456499%_
                                             _%g5648556503%_)))))
                                (_%g5648356552%_
                                 (list (if _%nil-check?56309%_
                                           (cons 'check-nil!
                                                 (cons _%object56307%_ '()))
                                           _%object56307%_)
                                       (gx#stx-identifier
                                        _%g5606756253%_
                                        (if _%checked-method?56308%_ '"" '"&")
                                        (let ((__obj100064 _%type56306%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj100064
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj100064
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj100064
                                               'name)))
                                        '"-"
                                        _%part56385%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx56042%_
                               _%g5606756253%_
                               _%part56385%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx56042%_
                           _%type56306%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5631056318%_)
                                                  (let ((_%hd5631556562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5631056318%_)))
                                                        (_%tl5631656565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5631056318%_))))
                                                    (let* ((_%part56568%_
                                                            _%hd5631556562%_)
                                                           (_%rest56571%_
                                                            _%tl5631656565%_))
                                                      (_%K5631456558%_
                                                       _%rest56571%_
                                                       _%part56568%_)))
                                                  (_%else5631256379%_)))))
                                        _%$e56294%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5606756253%_
                                                   (foldr (lambda (_%g5657556578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5657656581%_)
                    (cons _%g5657556578%_ _%g5657656581%_))
                  '()
                  _%g5606656251%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5627356280%_)
                             (let ((_%hd5627756588%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5627356280%_)))
                                   (_%tl5627856591%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5627356280%_))))
                               (let* ((_%var56594%_ _%hd5627756588%_)
                                      (_%parts56597%_ _%tl5627856591%_))
                                 (_%K5627656584%_
                                  _%parts56597%_
                                  _%var56594%_)))
                             (_%E5627556286%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5606756253%_
                                   (foldr (lambda (_%g5659956602%_
                                                   _%g5660056605%_)
                                            (cons _%g5659956602%_
                                                  _%g5660056605%_))
                                          '()
                                          _%g5606656251%_))))))
                (_%__kont9456094561%_
                 (lambda (_%g5608956152%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5616756170%_ _%g5616856173%_)
                                  (cons _%g5616756170%_ _%g5616856173%_))
                                '()
                                _%g5608956152%_)))))
            (let* ((_%__match9463694637%_
                    (lambda (_%e5609056114%_
                             _%hd5609156118%_
                             _%tl5609256121%_
                             _%__splice9456294563%_
                             _%target5609356124%_
                             _%tl5609556127%_)
                      (letrec ((_%loop5609656130%_
                                (lambda (_%hd5609456134%_ _%arg5610056137%_)
                                  (if (gx#stx-pair? _%hd5609456134%_)
                                      (let ((_%e5609756139%_
                                             (gx#syntax-e _%hd5609456134%_)))
                                        (let ((_%lp-tl5609956146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5609756139%_)))
                                              (_%lp-hd5609856143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5609756139%_))))
                                          (_%loop5609656130%_
                                           _%lp-tl5609956146%_
                                           (cons _%lp-hd5609856143%_
                                                 _%arg5610056137%_))))
                                      (let ((_%arg5610156149%_
                                             (reverse _%arg5610056137%_)))
                                        (_%__kont9456094561%_
                                         _%arg5610156149%_))))))
                        (_%loop5609656130%_ _%target5609356124%_ '()))))
                   (_%__match9462294623%_
                    (lambda (_%e5606856183%_
                             _%hd5606956187%_
                             _%tl5607056190%_
                             _%e5607156193%_
                             _%hd5607256197%_
                             _%tl5607356200%_
                             _%e5607456203%_
                             _%hd5607556207%_
                             _%tl5607656210%_
                             _%e5607756213%_
                             _%hd5607856217%_
                             _%tl5607956220%_
                             _%__splice9455894559%_
                             _%target5608056223%_
                             _%tl5608256226%_)
                      (letrec ((_%loop5608356229%_
                                (lambda (_%hd5608156233%_ _%rand5608756236%_)
                                  (if (gx#stx-pair? _%hd5608156233%_)
                                      (let ((_%e5608456238%_
                                             (gx#syntax-e _%hd5608156233%_)))
                                        (let ((_%lp-tl5608656245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5608456238%_)))
                                              (_%lp-hd5608556242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5608456238%_))))
                                          (_%loop5608356229%_
                                           _%lp-tl5608656245%_
                                           (cons _%lp-hd5608556242%_
                                                 _%rand5608756236%_))))
                                      (let ((_%rand5608856248%_
                                             (reverse _%rand5608756236%_)))
                                        (_%__kont9455694557%_
                                         _%rand5608856248%_
                                         _%hd5607856217%_))))))
                        (_%loop5608356229%_ _%target5608056223%_ '()))))
                   (_%__match9459694597%_
                    (lambda (_%e5606856183%_
                             _%hd5606956187%_
                             _%tl5607056190%_
                             _%e5607156193%_
                             _%hd5607256197%_
                             _%tl5607356200%_)
                      (if (gx#stx-pair? _%hd5607256197%_)
                          (let ((_%e5607456203%_
                                 (gx#syntax-e _%hd5607256197%_)))
                            (let ((_%tl5607656210%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5607456203%_)))
                                  (_%hd5607556207%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5607456203%_))))
                              (if (gx#identifier? _%hd5607556207%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100270_|
                                       _%hd5607556207%_)
                                      (if (gx#stx-pair? _%tl5607656210%_)
                                          (let ((_%e5607756213%_
                                                 (gx#syntax-e
                                                  _%tl5607656210%_)))
                                            (let ((_%tl5607956220%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5607756213%_)))
                                                  (_%hd5607856217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5607756213%_))))
                                              (if (gx#stx-null?
                                                   _%tl5607956220%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5607356200%_)
                                                      (let ((_%__splice9455894559%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5607356200%_
                                                              '0)))
                                                        (let ((_%tl5608256226%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9455894559%_ '1)))
                      (_%target5608056223%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9455894559%_ '0))))
                  (if (gx#stx-null? _%tl5608256226%_)
                      (_%__match9462294623%_
                       _%e5606856183%_
                       _%hd5606956187%_
                       _%tl5607056190%_
                       _%e5607156193%_
                       _%hd5607256197%_
                       _%tl5607356200%_
                       _%e5607456203%_
                       _%hd5607556207%_
                       _%tl5607656210%_
                       _%e5607756213%_
                       _%hd5607856217%_
                       _%tl5607956220%_
                       _%__splice9455894559%_
                       _%target5608056223%_
                       _%tl5608256226%_)
                      (if (gx#stx-pair/null? _%tl5607056190%_)
                          (let ((_%__splice9456294563%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5607056190%_
                                  '0)))
                            (let ((_%tl5609556127%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9456294563%_ '1)))
                                  (_%target5609356124%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9456294563%_
                                      '0))))
                              (if (gx#stx-null? _%tl5609556127%_)
                                  (_%__match9463694637%_
                                   _%e5606856183%_
                                   _%hd5606956187%_
                                   _%tl5607056190%_
                                   _%__splice9456294563%_
                                   _%target5609356124%_
                                   _%tl5609556127%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5604756107%_)))))
                          (let () (declare (not safe)) (_%g5604756107%_))))))
              (if (gx#stx-pair/null? _%tl5607056190%_)
                  (let ((_%__splice9456294563%_
                         (gx#syntax-split-splice->vector _%tl5607056190%_ '0)))
                    (let ((_%tl5609556127%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '1)))
                          (_%target5609356124%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '0))))
                      (if (gx#stx-null? _%tl5609556127%_)
                          (_%__match9463694637%_
                           _%e5606856183%_
                           _%hd5606956187%_
                           _%tl5607056190%_
                           _%__splice9456294563%_
                           _%target5609356124%_
                           _%tl5609556127%_)
                          (let () (declare (not safe)) (_%g5604756107%_)))))
                  (let () (declare (not safe)) (_%g5604756107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5607056190%_)
                                                      (let ((_%__splice9456294563%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5607056190%_
                                                              '0)))
                                                        (let ((_%tl5609556127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9456294563%_ '1)))
                      (_%target5609356124%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9456294563%_ '0))))
                  (if (gx#stx-null? _%tl5609556127%_)
                      (_%__match9463694637%_
                       _%e5606856183%_
                       _%hd5606956187%_
                       _%tl5607056190%_
                       _%__splice9456294563%_
                       _%target5609356124%_
                       _%tl5609556127%_)
                      (let () (declare (not safe)) (_%g5604756107%_)))))
              (let () (declare (not safe)) (_%g5604756107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5607056190%_)
                                              (let ((_%__splice9456294563%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5607056190%_
                                                      '0)))
                                                (let ((_%tl5609556127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9456294563%_
                                                          '1)))
                                                      (_%target5609356124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9456294563%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5609556127%_)
                                                      (_%__match9463694637%_
                                                       _%e5606856183%_
                                                       _%hd5606956187%_
                                                       _%tl5607056190%_
                                                       _%__splice9456294563%_
                                                       _%target5609356124%_
                                                       _%tl5609556127%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5604756107%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5604756107%_))))
                                      (if (gx#stx-pair/null? _%tl5607056190%_)
                                          (let ((_%__splice9456294563%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5607056190%_
                                                  '0)))
                                            (let ((_%tl5609556127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9456294563%_
                                                      '1)))
                                                  (_%target5609356124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9456294563%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5609556127%_)
                                                  (_%__match9463694637%_
                                                   _%e5606856183%_
                                                   _%hd5606956187%_
                                                   _%tl5607056190%_
                                                   _%__splice9456294563%_
                                                   _%target5609356124%_
                                                   _%tl5609556127%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5604756107%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5604756107%_))))
                                  (if (gx#stx-pair/null? _%tl5607056190%_)
                                      (let ((_%__splice9456294563%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5607056190%_
                                              '0)))
                                        (let ((_%tl5609556127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9456294563%_
                                                  '1)))
                                              (_%target5609356124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9456294563%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5609556127%_)
                                              (_%__match9463694637%_
                                               _%e5606856183%_
                                               _%hd5606956187%_
                                               _%tl5607056190%_
                                               _%__splice9456294563%_
                                               _%target5609356124%_
                                               _%tl5609556127%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5604756107%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5604756107%_))))))
                          (if (gx#stx-pair/null? _%tl5607056190%_)
                              (let ((_%__splice9456294563%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5607056190%_
                                      '0)))
                                (let ((_%tl5609556127%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '1)))
                                      (_%target5609356124%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5609556127%_)
                                      (_%__match9463694637%_
                                       _%e5606856183%_
                                       _%hd5606956187%_
                                       _%tl5607056190%_
                                       _%__splice9456294563%_
                                       _%target5609356124%_
                                       _%tl5609556127%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5604756107%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5604756107%_))))))
                   (_%__match9458494585%_
                    (lambda (_%e5605156615%_
                             _%hd5605256619%_
                             _%tl5605356622%_
                             _%e5605456625%_
                             _%hd5605556629%_
                             _%tl5605656632%_
                             _%__splice9455494555%_
                             _%target5605756635%_
                             _%tl5605956638%_)
                      (letrec ((_%loop5606056641%_
                                (lambda (_%hd5605856645%_ _%rand5606456648%_)
                                  (if (gx#stx-pair? _%hd5605856645%_)
                                      (let ((_%e5606156650%_
                                             (gx#syntax-e _%hd5605856645%_)))
                                        (let ((_%lp-tl5606356657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5606156650%_)))
                                              (_%lp-hd5606256654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5606156650%_))))
                                          (_%loop5606056641%_
                                           _%lp-tl5606356657%_
                                           (cons _%lp-hd5606256654%_
                                                 _%rand5606456648%_))))
                                      (let ((_%rand5606556660%_
                                             (reverse _%rand5606456648%_)))
                                        (let ((_%g5604956663%_
                                               _%rand5606556660%_)
                                              (_%g5605056665%_
                                               _%hd5605556629%_))
                                          (if (gx#identifier? _%g5605056665%_)
                                              (_%__kont9455294553%_
                                               _%g5604956663%_
                                               _%g5605056665%_)
                                              (_%__match9459694597%_
                                               _%e5605156615%_
                                               _%hd5605256619%_
                                               _%tl5605356622%_
                                               _%e5605456625%_
                                               _%hd5605556629%_
                                               _%tl5605656632%_))))))))
                        (_%loop5606056641%_ _%target5605756635%_ '())))))
              (if (gx#stx-pair? _%__stx9454994550%_)
                  (let ((_%e5605156615%_ (gx#syntax-e _%__stx9454994550%_)))
                    (let ((_%tl5605356622%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5605156615%_)))
                          (_%hd5605256619%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5605156615%_))))
                      (if (gx#stx-pair? _%tl5605356622%_)
                          (let ((_%e5605456625%_
                                 (gx#syntax-e _%tl5605356622%_)))
                            (let ((_%tl5605656632%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5605456625%_)))
                                  (_%hd5605556629%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5605456625%_))))
                              (if (gx#stx-pair/null? _%tl5605656632%_)
                                  (let ((_%__splice9455494555%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5605656632%_
                                          '0)))
                                    (let ((_%tl5605956638%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9455494555%_
                                              '1)))
                                          (_%target5605756635%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9455494555%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5605956638%_)
                                          (_%__match9458494585%_
                                           _%e5605156615%_
                                           _%hd5605256619%_
                                           _%tl5605356622%_
                                           _%e5605456625%_
                                           _%hd5605556629%_
                                           _%tl5605656632%_
                                           _%__splice9455494555%_
                                           _%target5605756635%_
                                           _%tl5605956638%_)
                                          (if (gx#stx-pair? _%hd5605556629%_)
                                              (let ((_%e5607456203%_
                                                     (gx#syntax-e
                                                      _%hd5605556629%_)))
                                                (let ((_%tl5607656210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5607456203%_)))
                                                      (_%hd5607556207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5607456203%_))))
                                                  (if (gx#identifier?
                                                       _%hd5607556207%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100270_|
                                                           _%hd5607556207%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5607656210%_)
                                                              (let ((_%e5607756213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5607656210%_)))
                        (let ((_%tl5607956220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5607756213%_)))
                              (_%hd5607856217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5607756213%_))))
                          (if (gx#stx-pair/null? _%tl5605356622%_)
                              (let ((_%__splice9456294563%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5605356622%_
                                      '0)))
                                (let ((_%tl5609556127%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '1)))
                                      (_%target5609356124%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5609556127%_)
                                      (_%__match9463694637%_
                                       _%e5605156615%_
                                       _%hd5605256619%_
                                       _%tl5605356622%_
                                       _%__splice9456294563%_
                                       _%target5609356124%_
                                       _%tl5609556127%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5604756107%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5604756107%_)))))
                      (if (gx#stx-pair/null? _%tl5605356622%_)
                          (let ((_%__splice9456294563%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5605356622%_
                                  '0)))
                            (let ((_%tl5609556127%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9456294563%_ '1)))
                                  (_%target5609356124%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9456294563%_
                                      '0))))
                              (if (gx#stx-null? _%tl5609556127%_)
                                  (_%__match9463694637%_
                                   _%e5605156615%_
                                   _%hd5605256619%_
                                   _%tl5605356622%_
                                   _%__splice9456294563%_
                                   _%target5609356124%_
                                   _%tl5609556127%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5604756107%_)))))
                          (let () (declare (not safe)) (_%g5604756107%_))))
                  (if (gx#stx-pair/null? _%tl5605356622%_)
                      (let ((_%__splice9456294563%_
                             (gx#syntax-split-splice->vector
                              _%tl5605356622%_
                              '0)))
                        (let ((_%tl5609556127%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9456294563%_ '1)))
                              (_%target5609356124%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9456294563%_ '0))))
                          (if (gx#stx-null? _%tl5609556127%_)
                              (_%__match9463694637%_
                               _%e5605156615%_
                               _%hd5605256619%_
                               _%tl5605356622%_
                               _%__splice9456294563%_
                               _%target5609356124%_
                               _%tl5609556127%_)
                              (let ()
                                (declare (not safe))
                                (_%g5604756107%_)))))
                      (let () (declare (not safe)) (_%g5604756107%_))))
              (if (gx#stx-pair/null? _%tl5605356622%_)
                  (let ((_%__splice9456294563%_
                         (gx#syntax-split-splice->vector _%tl5605356622%_ '0)))
                    (let ((_%tl5609556127%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '1)))
                          (_%target5609356124%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '0))))
                      (if (gx#stx-null? _%tl5609556127%_)
                          (_%__match9463694637%_
                           _%e5605156615%_
                           _%hd5605256619%_
                           _%tl5605356622%_
                           _%__splice9456294563%_
                           _%target5609356124%_
                           _%tl5609556127%_)
                          (let () (declare (not safe)) (_%g5604756107%_)))))
                  (let () (declare (not safe)) (_%g5604756107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5605356622%_)
                                                  (let ((_%__splice9456294563%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5605356622%_
                                                          '0)))
                                                    (let ((_%tl5609556127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9456294563%_
                                                              '1)))
                                                          (_%target5609356124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9456294563%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5609556127%_)
                                                          (_%__match9463694637%_
                                                           _%e5605156615%_
                                                           _%hd5605256619%_
                                                           _%tl5605356622%_
                                                           _%__splice9456294563%_
                                                           _%target5609356124%_
                                                           _%tl5609556127%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5604756107%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5604756107%_)))))))
                                  (if (gx#stx-pair? _%hd5605556629%_)
                                      (let ((_%e5607456203%_
                                             (gx#syntax-e _%hd5605556629%_)))
                                        (let ((_%tl5607656210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5607456203%_)))
                                              (_%hd5607556207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5607456203%_))))
                                          (if (gx#identifier? _%hd5607556207%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g100270_|
                                                   _%hd5607556207%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5607656210%_)
                                                      (let ((_%e5607756213%_
                                                             (gx#syntax-e
                                                              _%tl5607656210%_)))
                                                        (let ((_%tl5607956220%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5607756213%_)))
                      (_%hd5607856217%_
                       (let () (declare (not safe)) (##car _%e5607756213%_))))
                  (if (gx#stx-pair/null? _%tl5605356622%_)
                      (let ((_%__splice9456294563%_
                             (gx#syntax-split-splice->vector
                              _%tl5605356622%_
                              '0)))
                        (let ((_%tl5609556127%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9456294563%_ '1)))
                              (_%target5609356124%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9456294563%_ '0))))
                          (if (gx#stx-null? _%tl5609556127%_)
                              (_%__match9463694637%_
                               _%e5605156615%_
                               _%hd5605256619%_
                               _%tl5605356622%_
                               _%__splice9456294563%_
                               _%target5609356124%_
                               _%tl5609556127%_)
                              (let ()
                                (declare (not safe))
                                (_%g5604756107%_)))))
                      (let () (declare (not safe)) (_%g5604756107%_)))))
              (if (gx#stx-pair/null? _%tl5605356622%_)
                  (let ((_%__splice9456294563%_
                         (gx#syntax-split-splice->vector _%tl5605356622%_ '0)))
                    (let ((_%tl5609556127%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '1)))
                          (_%target5609356124%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9456294563%_ '0))))
                      (if (gx#stx-null? _%tl5609556127%_)
                          (_%__match9463694637%_
                           _%e5605156615%_
                           _%hd5605256619%_
                           _%tl5605356622%_
                           _%__splice9456294563%_
                           _%target5609356124%_
                           _%tl5609556127%_)
                          (let () (declare (not safe)) (_%g5604756107%_)))))
                  (let () (declare (not safe)) (_%g5604756107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5605356622%_)
                                                      (let ((_%__splice9456294563%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5605356622%_
                                                              '0)))
                                                        (let ((_%tl5609556127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9456294563%_ '1)))
                      (_%target5609356124%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9456294563%_ '0))))
                  (if (gx#stx-null? _%tl5609556127%_)
                      (_%__match9463694637%_
                       _%e5605156615%_
                       _%hd5605256619%_
                       _%tl5605356622%_
                       _%__splice9456294563%_
                       _%target5609356124%_
                       _%tl5609556127%_)
                      (let () (declare (not safe)) (_%g5604756107%_)))))
              (let () (declare (not safe)) (_%g5604756107%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5605356622%_)
                                                  (let ((_%__splice9456294563%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5605356622%_
                                                          '0)))
                                                    (let ((_%tl5609556127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9456294563%_
                                                              '1)))
                                                          (_%target5609356124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9456294563%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5609556127%_)
                                                          (_%__match9463694637%_
                                                           _%e5605156615%_
                                                           _%hd5605256619%_
                                                           _%tl5605356622%_
                                                           _%__splice9456294563%_
                                                           _%target5609356124%_
                                                           _%tl5609556127%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5604756107%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5604756107%_))))))
                                      (if (gx#stx-pair/null? _%tl5605356622%_)
                                          (let ((_%__splice9456294563%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5605356622%_
                                                  '0)))
                                            (let ((_%tl5609556127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9456294563%_
                                                      '1)))
                                                  (_%target5609356124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9456294563%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5609556127%_)
                                                  (_%__match9463694637%_
                                                   _%e5605156615%_
                                                   _%hd5605256619%_
                                                   _%tl5605356622%_
                                                   _%__splice9456294563%_
                                                   _%target5609356124%_
                                                   _%tl5609556127%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5604756107%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5604756107%_)))))))
                          (if (gx#stx-pair/null? _%tl5605356622%_)
                              (let ((_%__splice9456294563%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5605356622%_
                                      '0)))
                                (let ((_%tl5609556127%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '1)))
                                      (_%target5609356124%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9456294563%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5609556127%_)
                                      (_%__match9463694637%_
                                       _%e5605156615%_
                                       _%hd5605256619%_
                                       _%tl5605356622%_
                                       _%__splice9456294563%_
                                       _%target5609356124%_
                                       _%tl5609556127%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5604756107%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5604756107%_))))))
                  (let () (declare (not safe)) (_%g5604756107%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56697%_)
        (let* ((_%__stx9463994640%_ _%stx56697%_)
               (_%g5670156722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9463994640%_))))
          (let ((_%__kont9464294643%_
                 (lambda (_%g5670356790%_)
                   (let* ((_%g5680256809%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56697%_
                            _%g5670356790%_))
                          (_%E5680456815%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5680256809%_
                                    '([var . parts]))
                             (void)))
                          (_%K5680557031%_
                           (lambda (_%parts56819%_ _%var56821%_)
                             (let ((_%$e56823%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56821%_))))
                               (if _%$e56823%_
                                   ((lambda (_%te56827%_)
                                      (let _%loop56830%_ ((_%parts56833%_
                                                           _%parts56819%_)
                                                          (_%type56835%_
                                                           (##direct-structure-ref
                                                            _%te56827%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56836%_
                                                           _%var56821%_)
                                                          (_%nil-check?56837%_
                                                           '#f))
                                        (let* ((_%parts5683856846%_
                                                _%parts56833%_)
                                               (_%else5684056858%_
                                                (lambda () _%object56836%_))
                                               (_%K5684257013%_
                                                (lambda (_%rest56862%_
                                                         _%part56864%_)
                                                  (if (and (not _%nil-check?56837%_)
                                                           (let ((__tmp100271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56864%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100271)))
              (let ((_%str56868%_ (symbol->string _%part56864%_)))
                (_%loop56830%_
                 (cons (let ((__tmp100272
                              (substring
                               _%str56868%_
                               '1
                               (string-length _%str56868%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100272))
                       _%rest56862%_)
                 _%type56835%_
                 _%object56836%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56835%_))
                  (let* ((_%g5687356888%_
                          (lambda (_%g5687456884%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5687456884%_)))
                         (_%g5687257005%_
                          (lambda (_%g5687456892%_)
                            (if (gx#stx-pair? _%g5687456892%_)
                                (let ((_%e5687756895%_
                                       (gx#syntax-e _%g5687456892%_)))
                                  (let ((_%hd5687856899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5687756895%_)))
                                        (_%tl5687956902%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5687756895%_))))
                                    (if (gx#stx-pair? _%tl5687956902%_)
                                        (let ((_%e5688056905%_
                                               (gx#syntax-e _%tl5687956902%_)))
                                          (let ((_%hd5688156909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5688056905%_)))
                                                (_%tl5688256912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5688056905%_))))
                                            (if (gx#stx-null? _%tl5688256912%_)
                                                ((lambda (_%g5687556915%_
                                                          _%g5687656917%_)
                                                   (if (null? _%rest56862%_)
                                                       (let ((_%$e56947%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56835%_
                                                               _%part56864%_)))
                                                         (if _%$e56947%_
                                                             ((lambda (_%slot-type56951%_)
                                                                (let* ((_%g5695456962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5695556958%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5695556958%_)))
                               (_%g5695356985%_
                                (lambda (_%g5695556966%_)
                                  ((lambda (_%g5695656969%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5695656969%_
                                                             '()))
                                                 (cons (cons _%g5687556915%_
                                                             (cons _%g5687656917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5695556966%_))))
                          (_%g5695356985%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56697%_
                              _%slot-type56951%_)))))
                      _%$e56947%_)
                     (if _%nil-check?56837%_
                         (cons _%g5687556915%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5687656917%_ '()))
                                     '()))
                         (cons _%g5687556915%_ (cons _%g5687656917%_ '())))))
               (let ((_%$e56993%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56835%_
                       _%part56864%_)))
                 (if _%$e56993%_
                     ((lambda (_%type56997%_)
                        (let ((_%type57000%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56697%_
                                  _%type56997%_))))
                          (if _%nil-check?56837%_
                              (_%loop56830%_
                               _%rest56862%_
                               _%type57000%_
                               (cons _%g5687556915%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5687656917%_ '()))
                                           '()))
                               '#f)
                              (_%loop56830%_
                               _%rest56862%_
                               _%type57000%_
                               (cons _%g5687556915%_
                                     (cons _%g5687656917%_ '()))
                               '#f))))
                      _%$e56993%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56697%_
                      _%g5670356790%_
                      _%part56864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5688156909%_
                                                 _%hd5687856899%_)
                                                (_%g5687356888%_
                                                 _%g5687456892%_))))
                                        (_%g5687356888%_ _%g5687456892%_))))
                                (_%g5687356888%_ _%g5687456892%_)))))
                    (_%g5687257005%_
                     (list (if _%nil-check?56837%_
                               (cons 'check-nil! (cons _%object56836%_ '()))
                               _%object56836%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56697%_
                            _%type56835%_
                            _%part56864%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56835%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56697%_
                       _%type56835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5683856846%_)
                                              (let ((_%hd5684357017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5683856846%_)))
                                                    (_%tl5684457020%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5683856846%_))))
                                                (let* ((_%part57023%_
                                                        _%hd5684357017%_)
                                                       (_%rest57026%_
                                                        _%tl5684457020%_))
                                                  (_%K5684257013%_
                                                   _%rest57026%_
                                                   _%part57023%_)))
                                              (_%else5684056858%_)))))
                                    _%$e56823%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5670356790%_ '())))))))
                     (if (pair? _%g5680256809%_)
                         (let ((_%hd5680657035%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5680256809%_)))
                               (_%tl5680757038%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5680256809%_))))
                           (let* ((_%var57041%_ _%hd5680657035%_)
                                  (_%parts57044%_ _%tl5680757038%_))
                             (_%K5680557031%_ _%parts57044%_ _%var57041%_)))
                         (_%E5680456815%_)))))
                (_%__kont9464494645%_
                 (lambda (_%g5671056749%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5671056749%_ '())))))
            (let ((_%__match9466094661%_
                   (lambda (_%e5670456770%_
                            _%hd5670556774%_
                            _%tl5670656777%_
                            _%e5670756780%_
                            _%hd5670856784%_
                            _%tl5670956787%_)
                     (let ((_%g5670356790%_ _%hd5670856784%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5670356790%_)
                           (_%__kont9464294643%_ _%g5670356790%_)
                           (_%__kont9464494645%_ _%hd5670856784%_))))))
              (if (gx#stx-pair? _%__stx9463994640%_)
                  (let ((_%e5670456770%_ (gx#syntax-e _%__stx9463994640%_)))
                    (let ((_%tl5670656777%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5670456770%_)))
                          (_%hd5670556774%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5670456770%_))))
                      (if (gx#stx-pair? _%tl5670656777%_)
                          (let ((_%e5670756780%_
                                 (gx#syntax-e _%tl5670656777%_)))
                            (let ((_%tl5670956787%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5670756780%_)))
                                  (_%hd5670856784%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5670756780%_))))
                              (if (gx#stx-null? _%tl5670956787%_)
                                  (_%__match9466094661%_
                                   _%e5670456770%_
                                   _%hd5670556774%_
                                   _%tl5670656777%_
                                   _%e5670756780%_
                                   _%hd5670856784%_
                                   _%tl5670956787%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5670156722%_)))))
                          (let () (declare (not safe)) (_%g5670156722%_)))))
                  (let () (declare (not safe)) (_%g5670156722%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57051%_)
        (let* ((_%__stx9467794678%_ _%stx57051%_)
               (_%g5705557084%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9467794678%_))))
          (let ((_%__kont9468094681%_
                 (lambda (_%g5705757176%_ _%g5705857178%_)
                   (let* ((_%g5719257199%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57051%_
                            _%g5705857178%_))
                          (_%E5719457205%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5719257199%_
                                    '([var . parts]))
                             (void)))
                          (_%K5719557435%_
                           (lambda (_%parts57209%_ _%var57211%_)
                             (let ((_%$e57213%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57211%_))))
                               (if _%$e57213%_
                                   ((lambda (_%te57217%_)
                                      (let _%loop57220%_ ((_%parts57223%_
                                                           _%parts57209%_)
                                                          (_%type57225%_
                                                           (##direct-structure-ref
                                                            _%te57217%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object57226%_
                                                           _%var57211%_)
                                                          (_%checked-mutator?57227%_
                                                           (##direct-structure-ref
                                                            _%te57217%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?57228%_
                                                           '#f))
                                        (let* ((_%parts5722957236%_
                                                _%parts57223%_)
                                               (_%E5723157242%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5722957236%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5723257417%_
                                                (lambda (_%rest57246%_
                                                         _%part57248%_)
                                                  (if (and (not _%nil-check?57228%_)
                                                           (let ((__tmp100273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part57248%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100273)))
              (let ((_%str57252%_ (symbol->string _%part57248%_)))
                (_%loop57220%_
                 (cons (let ((__tmp100274
                              (substring
                               _%str57252%_
                               '1
                               (string-length _%str57252%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100274))
                       _%rest57246%_)
                 _%type57225%_
                 _%object57226%_
                 _%checked-mutator?57227%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type57225%_))
                  (if (null? _%rest57246%_)
                      (let* ((_%g5725957274%_
                              (lambda (_%g5726057270%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5726057270%_)))
                             (_%g5725857331%_
                              (lambda (_%g5726057278%_)
                                (if (gx#stx-pair? _%g5726057278%_)
                                    (let ((_%e5726357281%_
                                           (gx#syntax-e _%g5726057278%_)))
                                      (let ((_%hd5726457285%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5726357281%_)))
                                            (_%tl5726557288%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5726357281%_))))
                                        (if (gx#stx-pair? _%tl5726557288%_)
                                            (let ((_%e5726657291%_
                                                   (gx#syntax-e
                                                    _%tl5726557288%_)))
                                              (let ((_%hd5726757295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5726657291%_)))
                                                    (_%tl5726857298%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5726657291%_))))
                                                (if (gx#stx-null?
                                                     _%tl5726857298%_)
                                                    ((lambda (_%g5726157301%_
                                                              _%g5726257303%_)
                                                       (if _%nil-check?57228%_
                                                           (cons _%g5726157301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5726257303%_ '()))
                               (cons _%g5705757176%_ '())))
                   (cons _%g5726157301%_
                         (cons _%g5726257303%_ (cons _%g5705757176%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5726757295%_
                                                     _%hd5726457285%_)
                                                    (_%g5725957274%_
                                                     _%g5726057278%_))))
                                            (_%g5725957274%_
                                             _%g5726057278%_))))
                                    (_%g5725957274%_ _%g5726057278%_)))))
                        (_%g5725857331%_
                         (list _%object57226%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx57051%_
                                _%type57225%_
                                _%part57248%_
                                (if _%checked-mutator?57227%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type57225%_
                                     _%part57248%_)
                                    '#f)))))
                      (let ((_%$e57335%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type57225%_
                              _%part57248%_)))
                        (if _%$e57335%_
                            ((lambda (_%type57339%_)
                               (let* ((_%type57342%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx57051%_
                                          _%type57339%_)))
                                      (_%g5734557360%_
                                       (lambda (_%g5734657356%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5734657356%_)))
                                      (_%g5734457407%_
                                       (lambda (_%g5734657364%_)
                                         (if (gx#stx-pair? _%g5734657364%_)
                                             (let ((_%e5734957367%_
                                                    (gx#syntax-e
                                                     _%g5734657364%_)))
                                               (let ((_%hd5735057371%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5734957367%_)))
                                                     (_%tl5735157374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5734957367%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5735157374%_)
                                                     (let ((_%e5735257377%_
                                                            (gx#syntax-e
                                                             _%tl5735157374%_)))
                                                       (let ((_%hd5735357381%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5735257377%_)))
                     (_%tl5735457384%_
                      (let () (declare (not safe)) (##cdr _%e5735257377%_))))
                 (if (gx#stx-null? _%tl5735457384%_)
                     ((lambda (_%g5734757387%_ _%g5734857389%_)
                        (_%loop57220%_
                         _%rest57246%_
                         _%type57342%_
                         (cons _%g5734757387%_ (cons _%g5734857389%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type57342%_
                          _%part57248%_)
                         '#f))
                      _%hd5735357381%_
                      _%hd5735057371%_)
                     (_%g5734557360%_ _%g5734657364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5734557360%_
                                                      _%g5734657364%_))))
                                             (_%g5734557360%_
                                              _%g5734657364%_)))))
                                 (_%g5734457407%_
                                  (list (if _%nil-check?57228%_
                                            (cons 'check-nil!
                                                  (cons _%object57226%_ '()))
                                            _%object57226%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx57051%_
                                         _%type57342%_
                                         _%part57248%_)))))
                             _%$e57335%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx57051%_
                             _%g5705857178%_
                             _%part57248%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type57225%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx57051%_
                       _%type57225%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5722957236%_)
                                              (let ((_%hd5723357421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5722957236%_)))
                                                    (_%tl5723457424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5722957236%_))))
                                                (let* ((_%part57427%_
                                                        _%hd5723357421%_)
                                                       (_%rest57430%_
                                                        _%tl5723457424%_))
                                                  (_%K5723257417%_
                                                   _%rest57430%_
                                                   _%part57427%_)))
                                              (_%E5723157242%_)))))
                                    _%$e57213%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57051%_)))))))
                     (if (pair? _%g5719257199%_)
                         (let ((_%hd5719657439%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5719257199%_)))
                               (_%tl5719757442%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5719257199%_))))
                           (let* ((_%var57445%_ _%hd5719657439%_)
                                  (_%parts57448%_ _%tl5719757442%_))
                             (_%K5719557435%_ _%parts57448%_ _%var57445%_)))
                         (_%E5719457205%_)))))
                (_%__kont9468294683%_
                 (lambda (_%g5706857121%_ _%g5706957123%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57051%_)))))
            (let ((_%__match9470494705%_
                   (lambda (_%e5705957146%_
                            _%hd5706057150%_
                            _%tl5706157153%_
                            _%e5706257156%_
                            _%hd5706357160%_
                            _%tl5706457163%_
                            _%e5706557166%_
                            _%hd5706657170%_
                            _%tl5706757173%_)
                     (let ((_%g5705757176%_ _%hd5706657170%_)
                           (_%g5705857178%_ _%hd5706357160%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5705857178%_)
                           (_%__kont9468094681%_
                            _%g5705757176%_
                            _%g5705857178%_)
                           (_%__kont9468294683%_
                            _%hd5706657170%_
                            _%hd5706357160%_))))))
              (if (gx#stx-pair? _%__stx9467794678%_)
                  (let ((_%e5705957146%_ (gx#syntax-e _%__stx9467794678%_)))
                    (let ((_%tl5706157153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5705957146%_)))
                          (_%hd5706057150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5705957146%_))))
                      (if (gx#stx-pair? _%tl5706157153%_)
                          (let ((_%e5706257156%_
                                 (gx#syntax-e _%tl5706157153%_)))
                            (let ((_%tl5706457163%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5706257156%_)))
                                  (_%hd5706357160%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5706257156%_))))
                              (if (gx#stx-pair? _%tl5706457163%_)
                                  (let ((_%e5706557166%_
                                         (gx#syntax-e _%tl5706457163%_)))
                                    (let ((_%tl5706757173%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5706557166%_)))
                                          (_%hd5706657170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5706557166%_))))
                                      (if (gx#stx-null? _%tl5706757173%_)
                                          (_%__match9470494705%_
                                           _%e5705957146%_
                                           _%hd5706057150%_
                                           _%tl5706157153%_
                                           _%e5706257156%_
                                           _%hd5706357160%_
                                           _%tl5706457163%_
                                           _%e5706557166%_
                                           _%hd5706657170%_
                                           _%tl5706757173%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5705557084%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5705557084%_)))))
                          (let () (declare (not safe)) (_%g5705557084%_)))))
                  (let () (declare (not safe)) (_%g5705557084%_))))))))))
