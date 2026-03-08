(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g100854_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100855_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100856_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100859_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100860_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100863_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100864_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100865_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100866_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100870_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100871_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100872_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100873_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g100877_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx51626%_)
        (let* ((_%__stx9418594186%_ _%stx51626%_)
               (_%g5163551844%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9418594186%_))))
          (let ((_%__kont9418894189%_
                 (lambda (_%g5163752736%_
                          _%g5163852738%_
                          _%g5163952739%_
                          _%g5164052740%_
                          _%g5164152741%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5164152741%_
                                     (cons _%g5164052740%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5164152741%_
                                                       (cons _%g5163952739%_
                                                             (cons _%g5163852738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5278452787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5278552790%_)
                  (cons _%g5278452787%_ _%g5278552790%_))
                '()
                _%g5163752736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9419294193%_
                 (lambda (_%g5166952582%_
                          _%g5167052584%_
                          _%g5167152585%_
                          _%g5167252586%_
                          _%g5167352587%_
                          _%g5167452588%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5167452588%_
                                     (cons _%g5167352587%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5167452588%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5167252586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5167452588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5167152585%_
                                       (cons _%g5167052584%_ '())))
                           (foldr (lambda (_%g5263252635%_ _%g5263352638%_)
                                    (cons _%g5263252635%_ _%g5263352638%_))
                                  '()
                                  _%g5166952582%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9419694197%_
                 (lambda (_%g5170852401%_
                          _%g5170952403%_
                          _%g5171052404%_
                          _%g5171152405%_)
                   (let ((_%meta52442%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51626%_
                             _%g5170952403%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52442%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5171152405%_
                                           (cons _%g5171052404%_
                                                 (cons _%g5170952403%_ '())))
                                     (foldr (lambda (_%g5244652449%_
                                                     _%g5244752452%_)
                                              (cons _%g5244652449%_
                                                    _%g5244752452%_))
                                            '()
                                            _%g5170852401%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52442%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5171152405%_
                                               (cons _%g5171052404%_
                                                     (cons _%g5170952403%_
                                                           '())))
                                         (foldr (lambda (_%g5245652459%_
                                                         _%g5245752462%_)
                                                  (cons _%g5245652459%_
                                                        _%g5245752462%_))
                                                '()
                                                _%g5170852401%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx51626%_
                              _%g5170952403%_
                              _%meta52442%_))))))
                (_%__kont9420094201%_
                 (lambda (_%g5173652281%_ _%g5173752283%_ _%g5173852284%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5173852284%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5173752283%_ '())))
                               (foldr (lambda (_%g5230752310%_ _%g5230852313%_)
                                        (cons _%g5230752310%_ _%g5230852313%_))
                                      '()
                                      _%g5173652281%_)))))
                (_%__kont9420494205%_
                 (lambda (_%g5176352141%_
                          _%g5176452143%_
                          _%g5176552144%_
                          _%g5176652145%_
                          _%g5176752146%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5176752146%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5176652145%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5176752146%_
                                                       (cons _%g5176552144%_
                                                             (cons _%g5176452143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5218752190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5218852193%_)
                  (cons _%g5218752190%_ _%g5218852193%_))
                '()
                _%g5176352141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9420894209%_
                 (lambda (_%g5179852001%_
                          _%g5179952003%_
                          _%g5180052004%_
                          _%g5180152005%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5180152005%_ _%g5180052004%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5179952003%_
                                                 (foldr (lambda (_%g5202752030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5202852033%_)
                  (cons _%g5202752030%_ _%g5202852033%_))
                '()
                _%g5179852001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9421294213%_
                 (lambda (_%g5182351899%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5191751920%_ _%g5191851923%_)
                                        (cons _%g5191751920%_ _%g5191851923%_))
                                      '()
                                      _%g5182351899%_))))))
            (let* ((_%__match9451894519%_
                    (lambda (_%e5182451851%_
                             _%hd5182551855%_
                             _%tl5182651858%_
                             _%e5182751861%_
                             _%hd5182851865%_
                             _%tl5182951868%_
                             _%__splice9421494215%_
                             _%target5183051871%_
                             _%tl5183251874%_)
                      (letrec ((_%loop5183351877%_
                                (lambda (_%hd5183151881%_ _%body5183751884%_)
                                  (if (gx#stx-pair? _%hd5183151881%_)
                                      (let ((_%e5183451886%_
                                             (gx#syntax-e _%hd5183151881%_)))
                                        (let ((_%lp-tl5183651893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5183451886%_)))
                                              (_%lp-hd5183551890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5183451886%_))))
                                          (_%loop5183351877%_
                                           _%lp-tl5183651893%_
                                           (cons _%lp-hd5183551890%_
                                                 _%body5183751884%_))))
                                      (let ((_%body5183851896%_
                                             (reverse _%body5183751884%_)))
                                        (_%__kont9421294213%_
                                         _%body5183851896%_))))))
                        (_%loop5183351877%_ _%target5183051871%_ '()))))
                   (_%__match9449694497%_
                    (lambda (_%e5180251933%_
                             _%hd5180351937%_
                             _%tl5180451940%_
                             _%e5180551943%_
                             _%hd5180651947%_
                             _%tl5180751950%_
                             _%e5180851953%_
                             _%hd5180951957%_
                             _%tl5181051960%_
                             _%e5181151963%_
                             _%hd5181251967%_
                             _%tl5181351970%_
                             _%__splice9421094211%_
                             _%target5181451973%_
                             _%tl5181651976%_)
                      (letrec ((_%loop5181751979%_
                                (lambda (_%hd5181551983%_ _%body5182151986%_)
                                  (if (gx#stx-pair? _%hd5181551983%_)
                                      (let ((_%e5181851988%_
                                             (gx#syntax-e _%hd5181551983%_)))
                                        (let ((_%lp-tl5182051995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181851988%_)))
                                              (_%lp-hd5181951992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181851988%_))))
                                          (_%loop5181751979%_
                                           _%lp-tl5182051995%_
                                           (cons _%lp-hd5181951992%_
                                                 _%body5182151986%_))))
                                      (let ((_%body5182251998%_
                                             (reverse _%body5182151986%_)))
                                        (let ((_%g5179852001%_
                                               _%body5182251998%_)
                                              (_%g5179952003%_
                                               _%tl5181051960%_)
                                              (_%g5180052004%_
                                               _%tl5181351970%_)
                                              (_%g5180152005%_
                                               _%hd5181251967%_))
                                          (if (gx#identifier? _%g5180152005%_)
                                              (_%__kont9420894209%_
                                               _%g5179852001%_
                                               _%g5179952003%_
                                               _%g5180052004%_
                                               _%g5180152005%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_)))))))))
                        (_%loop5181751979%_ _%target5181451973%_ '()))))
                   (_%__match9448294483%_
                    (lambda (_%e5180251933%_
                             _%hd5180351937%_
                             _%tl5180451940%_
                             _%e5180551943%_
                             _%hd5180651947%_
                             _%tl5180751950%_
                             _%e5180851953%_
                             _%hd5180951957%_
                             _%tl5181051960%_)
                      (if (gx#stx-pair? _%hd5180951957%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5180951957%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (if (gx#stx-pair/null? _%tl5180751950%_)
                                  (let ((_%__splice9421094211%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5180751950%_
                                          '0)))
                                    (let ((_%tl5181651976%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '1)))
                                          (_%target5181451973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5181651976%_)
                                          (_%__match9449694497%_
                                           _%e5180251933%_
                                           _%hd5180351937%_
                                           _%tl5180451940%_
                                           _%e5180551943%_
                                           _%hd5180651947%_
                                           _%tl5180751950%_
                                           _%e5180851953%_
                                           _%hd5180951957%_
                                           _%tl5181051960%_
                                           _%e5181151963%_
                                           _%hd5181251967%_
                                           _%tl5181351970%_
                                           _%__splice9421094211%_
                                           _%target5181451973%_
                                           _%tl5181651976%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                   (_%__match9446494465%_
                    (lambda (_%e5176852043%_
                             _%hd5176952047%_
                             _%tl5177052050%_
                             _%e5177152053%_
                             _%hd5177252057%_
                             _%tl5177352060%_
                             _%e5177452063%_
                             _%hd5177552067%_
                             _%tl5177652070%_
                             _%e5177752073%_
                             _%hd5177852077%_
                             _%tl5177952080%_
                             _%e5178052083%_
                             _%hd5178152087%_
                             _%tl5178252090%_
                             _%e5178352093%_
                             _%hd5178452097%_
                             _%tl5178552100%_
                             _%e5178652103%_
                             _%hd5178752107%_
                             _%tl5178852110%_
                             _%__splice9420694207%_
                             _%target5178952113%_
                             _%tl5179152116%_)
                      (letrec ((_%loop5179252119%_
                                (lambda (_%hd5179052123%_ _%body5179652126%_)
                                  (if (gx#stx-pair? _%hd5179052123%_)
                                      (let ((_%e5179352128%_
                                             (gx#syntax-e _%hd5179052123%_)))
                                        (let ((_%lp-tl5179552135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5179352128%_)))
                                              (_%lp-hd5179452132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5179352128%_))))
                                          (_%loop5179252119%_
                                           _%lp-tl5179552135%_
                                           (cons _%lp-hd5179452132%_
                                                 _%body5179652126%_))))
                                      (let ((_%body5179752138%_
                                             (reverse _%body5179652126%_)))
                                        (let ((_%g5176352141%_
                                               _%body5179752138%_)
                                              (_%g5176452143%_
                                               _%hd5178752107%_)
                                              (_%g5176552144%_
                                               _%hd5178452097%_)
                                              (_%g5176652145%_
                                               _%hd5178152087%_)
                                              (_%g5176752146%_
                                               _%hd5177552067%_))
                                          (if (and (gx#identifier?
                                                    _%g5176752146%_)
                                                   (gx#identifier?
                                                    _%g5176452143%_)
                                                   (gx#identifier?
                                                    _%g5176552144%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5176552144%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5176552144%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5176552144%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5176552144%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9420494205%_
                                               _%g5176352141%_
                                               _%g5176452143%_
                                               _%g5176552144%_
                                               _%g5176652145%_
                                               _%g5176752146%_)
                                              (_%__match9448294483%_
                                               _%e5176852043%_
                                               _%hd5176952047%_
                                               _%tl5177052050%_
                                               _%e5177152053%_
                                               _%hd5177252057%_
                                               _%tl5177352060%_
                                               _%e5177452063%_
                                               _%hd5177552067%_
                                               _%tl5177652070%_))))))))
                        (_%loop5179252119%_ _%target5178952113%_ '()))))
                   (_%__match9440894409%_
                    (lambda (_%e5173952203%_
                             _%hd5174052207%_
                             _%tl5174152210%_
                             _%e5174252213%_
                             _%hd5174352217%_
                             _%tl5174452220%_
                             _%e5174552223%_
                             _%hd5174652227%_
                             _%tl5174752230%_
                             _%e5174852233%_
                             _%hd5174952237%_
                             _%tl5175052240%_
                             _%e5175152243%_
                             _%hd5175252247%_
                             _%tl5175352250%_
                             _%__splice9420294203%_
                             _%target5175452253%_
                             _%tl5175652256%_)
                      (letrec ((_%loop5175752259%_
                                (lambda (_%hd5175552263%_ _%body5176152266%_)
                                  (if (gx#stx-pair? _%hd5175552263%_)
                                      (let ((_%e5175852268%_
                                             (gx#syntax-e _%hd5175552263%_)))
                                        (let ((_%lp-tl5176052275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5175852268%_)))
                                              (_%lp-hd5175952272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5175852268%_))))
                                          (_%loop5175752259%_
                                           _%lp-tl5176052275%_
                                           (cons _%lp-hd5175952272%_
                                                 _%body5176152266%_))))
                                      (let ((_%body5176252278%_
                                             (reverse _%body5176152266%_)))
                                        (let ((_%g5173652281%_
                                               _%body5176252278%_)
                                              (_%g5173752283%_
                                               _%hd5175252247%_)
                                              (_%g5173852284%_
                                               _%hd5174652227%_))
                                          (if (gx#identifier? _%g5173852284%_)
                                              (_%__kont9420094201%_
                                               _%g5173652281%_
                                               _%g5173752283%_
                                               _%g5173852284%_)
                                              (_%__match9448294483%_
                                               _%e5173952203%_
                                               _%hd5174052207%_
                                               _%tl5174152210%_
                                               _%e5174252213%_
                                               _%hd5174352217%_
                                               _%tl5174452220%_
                                               _%e5174552223%_
                                               _%hd5174652227%_
                                               _%tl5174752230%_))))))))
                        (_%loop5175752259%_ _%target5175452253%_ '()))))
                   (_%__match9438894389%_
                    (lambda (_%e5173952203%_
                             _%hd5174052207%_
                             _%tl5174152210%_
                             _%e5174252213%_
                             _%hd5174352217%_
                             _%tl5174452220%_
                             _%e5174552223%_
                             _%hd5174652227%_
                             _%tl5174752230%_
                             _%e5174852233%_
                             _%hd5174952237%_
                             _%tl5175052240%_)
                      (if (gx#identifier? _%hd5174952237%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100854_|
                               _%hd5174952237%_)
                              (if (gx#stx-pair? _%tl5175052240%_)
                                  (let ((_%e5175152243%_
                                         (gx#syntax-e _%tl5175052240%_)))
                                    (let ((_%tl5175352250%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5175152243%_)))
                                          (_%hd5175252247%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5175152243%_))))
                                      (if (gx#stx-null? _%tl5175352250%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5174452220%_)
                                              (let ((_%__splice9420294203%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5174452220%_
                                                      '0)))
                                                (let ((_%tl5175652256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9420294203%_
                                                          '1)))
                                                      (_%target5175452253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9420294203%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5175652256%_)
                                                      (_%__match9440894409%_
                                                       _%e5173952203%_
                                                       _%hd5174052207%_
                                                       _%tl5174152210%_
                                                       _%e5174252213%_
                                                       _%hd5174352217%_
                                                       _%tl5174452220%_
                                                       _%e5174552223%_
                                                       _%hd5174652227%_
                                                       _%tl5174752230%_
                                                       _%e5174852233%_
                                                       _%hd5174952237%_
                                                       _%tl5175052240%_
                                                       _%e5175152243%_
                                                       _%hd5175252247%_
                                                       _%tl5175352250%_
                                                       _%__splice9420294203%_
                                                       _%target5175452253%_
                                                       _%tl5175652256%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5174652227%_)
                                                          (let ((_%e5181151963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5174652227%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5174652227%_)
                                                  (let ((_%e5181151963%_
                                                         (gx#syntax-e
                                                          _%hd5174652227%_)))
                                                    (let ((_%tl5181351970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5181151963%_)))
                                                          (_%hd5181251967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5181151963%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5163551844%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))
                                          (if (gx#stx-pair? _%tl5175352250%_)
                                              (let ((_%e5178352093%_
                                                     (gx#syntax-e
                                                      _%tl5175352250%_)))
                                                (let ((_%tl5178552100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178352093%_)))
                                                      (_%hd5178452097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178352093%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5178552100%_)
                                                      (let ((_%e5178652103%_
                                                             (gx#syntax-e
                                                              _%tl5178552100%_)))
                                                        (let ((_%tl5178852110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178652103%_)))
                      (_%hd5178752107%_
                       (let () (declare (not safe)) (##car _%e5178652103%_))))
                  (if (gx#stx-null? _%tl5178852110%_)
                      (if (gx#stx-pair/null? _%tl5174452220%_)
                          (let ((_%__splice9420694207%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5174452220%_
                                  '0)))
                            (let ((_%tl5179152116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9420694207%_ '1)))
                                  (_%target5178952113%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9420694207%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179152116%_)
                                  (_%__match9446494465%_
                                   _%e5173952203%_
                                   _%hd5174052207%_
                                   _%tl5174152210%_
                                   _%e5174252213%_
                                   _%hd5174352217%_
                                   _%tl5174452220%_
                                   _%e5174552223%_
                                   _%hd5174652227%_
                                   _%tl5174752230%_
                                   _%e5174852233%_
                                   _%hd5174952237%_
                                   _%tl5175052240%_
                                   _%e5175152243%_
                                   _%hd5175252247%_
                                   _%tl5175352250%_
                                   _%e5178352093%_
                                   _%hd5178452097%_
                                   _%tl5178552100%_
                                   _%e5178652103%_
                                   _%hd5178752107%_
                                   _%tl5178852110%_
                                   _%__splice9420694207%_
                                   _%target5178952113%_
                                   _%tl5179152116%_)
                                  (if (gx#stx-pair? _%hd5174652227%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5174652227%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))
                          (if (gx#stx-pair? _%hd5174652227%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5174652227%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                      (if (gx#stx-pair? _%hd5174652227%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5174652227%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (if (gx#stx-pair/null? _%tl5174452220%_)
                                  (let ((_%__splice9421094211%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5174452220%_
                                          '0)))
                                    (let ((_%tl5181651976%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '1)))
                                          (_%target5181451973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5181651976%_)
                                          (_%__match9449694497%_
                                           _%e5173952203%_
                                           _%hd5174052207%_
                                           _%tl5174152210%_
                                           _%e5174252213%_
                                           _%hd5174352217%_
                                           _%tl5174452220%_
                                           _%e5174552223%_
                                           _%hd5174652227%_
                                           _%tl5174752230%_
                                           _%e5181151963%_
                                           _%hd5181251967%_
                                           _%tl5181351970%_
                                           _%__splice9421094211%_
                                           _%target5181451973%_
                                           _%tl5181651976%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_))))))
              (if (gx#stx-pair? _%hd5174652227%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5174652227%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5174452220%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5174452220%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5173952203%_
                                   _%hd5174052207%_
                                   _%tl5174152210%_
                                   _%e5174252213%_
                                   _%hd5174352217%_
                                   _%tl5174452220%_
                                   _%e5174552223%_
                                   _%hd5174652227%_
                                   _%tl5174752230%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5174652227%_)
                                                  (let ((_%e5181151963%_
                                                         (gx#syntax-e
                                                          _%hd5174652227%_)))
                                                    (let ((_%tl5181351970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5181151963%_)))
                                                          (_%hd5181251967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5181151963%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5174452220%_)
                                                          (let ((_%__splice9421094211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5174452220%_ '0)))
                    (let ((_%tl5181651976%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '1)))
                          (_%target5181451973%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '0))))
                      (if (gx#stx-null? _%tl5181651976%_)
                          (_%__match9449694497%_
                           _%e5173952203%_
                           _%hd5174052207%_
                           _%tl5174152210%_
                           _%e5174252213%_
                           _%hd5174352217%_
                           _%tl5174452220%_
                           _%e5174552223%_
                           _%hd5174652227%_
                           _%tl5174752230%_
                           _%e5181151963%_
                           _%hd5181251967%_
                           _%tl5181351970%_
                           _%__splice9421094211%_
                           _%target5181451973%_
                           _%tl5181651976%_)
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))))
                                  (if (gx#stx-pair? _%hd5174652227%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5174652227%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5174452220%_)
                                              (let ((_%__splice9421094211%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5174452220%_
                                                      '0)))
                                                (let ((_%tl5181651976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '1)))
                                                      (_%target5181451973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5181651976%_)
                                                      (_%__match9449694497%_
                                                       _%e5173952203%_
                                                       _%hd5174052207%_
                                                       _%tl5174152210%_
                                                       _%e5174252213%_
                                                       _%hd5174352217%_
                                                       _%tl5174452220%_
                                                       _%e5174552223%_
                                                       _%hd5174652227%_
                                                       _%tl5174752230%_
                                                       _%e5181151963%_
                                                       _%hd5181251967%_
                                                       _%tl5181351970%_
                                                       _%__splice9421094211%_
                                                       _%target5181451973%_
                                                       _%tl5181651976%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5163551844%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                              (if (gx#stx-pair? _%hd5174652227%_)
                                  (let ((_%e5181151963%_
                                         (gx#syntax-e _%hd5174652227%_)))
                                    (let ((_%tl5181351970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5181151963%_)))
                                          (_%hd5181251967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5181151963%_))))
                                      (if (gx#stx-pair/null? _%tl5174452220%_)
                                          (let ((_%__splice9421094211%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5174452220%_
                                                  '0)))
                                            (let ((_%tl5181651976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9421094211%_
                                                      '1)))
                                                  (_%target5181451973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9421094211%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5181651976%_)
                                                  (_%__match9449694497%_
                                                   _%e5173952203%_
                                                   _%hd5174052207%_
                                                   _%tl5174152210%_
                                                   _%e5174252213%_
                                                   _%hd5174352217%_
                                                   _%tl5174452220%_
                                                   _%e5174552223%_
                                                   _%hd5174652227%_
                                                   _%tl5174752230%_
                                                   _%e5181151963%_
                                                   _%hd5181251967%_
                                                   _%tl5181351970%_
                                                   _%__splice9421094211%_
                                                   _%target5181451973%_
                                                   _%tl5181651976%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                          (if (gx#stx-pair? _%hd5174652227%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5174652227%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (if (gx#stx-pair/null? _%tl5174452220%_)
                                      (let ((_%__splice9421094211%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5174452220%_
                                              '0)))
                                        (let ((_%tl5181651976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9421094211%_
                                                  '1)))
                                              (_%target5181451973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9421094211%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5181651976%_)
                                              (_%__match9449694497%_
                                               _%e5173952203%_
                                               _%hd5174052207%_
                                               _%tl5174152210%_
                                               _%e5174252213%_
                                               _%hd5174352217%_
                                               _%tl5174452220%_
                                               _%e5174552223%_
                                               _%hd5174652227%_
                                               _%tl5174752230%_
                                               _%e5181151963%_
                                               _%hd5181251967%_
                                               _%tl5181351970%_
                                               _%__splice9421094211%_
                                               _%target5181451973%_
                                               _%tl5181651976%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_))))))
                   (_%__match9436494365%_
                    (lambda (_%e5171252323%_
                             _%hd5171352327%_
                             _%tl5171452330%_
                             _%e5171552333%_
                             _%hd5171652337%_
                             _%tl5171752340%_
                             _%e5171852343%_
                             _%hd5171952347%_
                             _%tl5172052350%_
                             _%e5172152353%_
                             _%hd5172252357%_
                             _%tl5172352360%_
                             _%e5172452363%_
                             _%hd5172552367%_
                             _%tl5172652370%_
                             _%__splice9419894199%_
                             _%target5172752373%_
                             _%tl5172952376%_)
                      (letrec ((_%loop5173052379%_
                                (lambda (_%hd5172852383%_ _%body5173452386%_)
                                  (if (gx#stx-pair? _%hd5172852383%_)
                                      (let ((_%e5173152388%_
                                             (gx#syntax-e _%hd5172852383%_)))
                                        (let ((_%lp-tl5173352395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5173152388%_)))
                                              (_%lp-hd5173252392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5173152388%_))))
                                          (_%loop5173052379%_
                                           _%lp-tl5173352395%_
                                           (cons _%lp-hd5173252392%_
                                                 _%body5173452386%_))))
                                      (let ((_%body5173552398%_
                                             (reverse _%body5173452386%_)))
                                        (let ((_%g5170852401%_
                                               _%body5173552398%_)
                                              (_%g5170952403%_
                                               _%hd5172552367%_)
                                              (_%g5171052404%_
                                               _%hd5172252357%_)
                                              (_%g5171152405%_
                                               _%hd5171952347%_))
                                          (if (and (gx#identifier?
                                                    _%g5171152405%_)
                                                   (gx#identifier?
                                                    _%g5170952403%_)
                                                   (gx#identifier?
                                                    _%g5171052404%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5171052404%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5171052404%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5171052404%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5171052404%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9419694197%_
                                               _%g5170852401%_
                                               _%g5170952403%_
                                               _%g5171052404%_
                                               _%g5171152405%_)
                                              (_%__match9438894389%_
                                               _%e5171252323%_
                                               _%hd5171352327%_
                                               _%tl5171452330%_
                                               _%e5171552333%_
                                               _%hd5171652337%_
                                               _%tl5171752340%_
                                               _%e5171852343%_
                                               _%hd5171952347%_
                                               _%tl5172052350%_
                                               _%e5172152353%_
                                               _%hd5172252357%_
                                               _%tl5172352360%_))))))))
                        (_%loop5173052379%_ _%target5172752373%_ '()))))
                   (_%__match9432494325%_
                    (lambda (_%e5167552474%_
                             _%hd5167652478%_
                             _%tl5167752481%_
                             _%e5167852484%_
                             _%hd5167952488%_
                             _%tl5168052491%_
                             _%e5168152494%_
                             _%hd5168252498%_
                             _%tl5168352501%_
                             _%e5168452504%_
                             _%hd5168552508%_
                             _%tl5168652511%_
                             _%e5168752514%_
                             _%hd5168852518%_
                             _%tl5168952521%_
                             _%e5169052524%_
                             _%hd5169152528%_
                             _%tl5169252531%_
                             _%e5169352534%_
                             _%hd5169452538%_
                             _%tl5169552541%_
                             _%e5169652544%_
                             _%hd5169752548%_
                             _%tl5169852551%_
                             _%__splice9419494195%_
                             _%target5169952554%_
                             _%tl5170152557%_)
                      (letrec ((_%loop5170252560%_
                                (lambda (_%hd5170052564%_ _%body5170652567%_)
                                  (if (gx#stx-pair? _%hd5170052564%_)
                                      (let ((_%e5170352569%_
                                             (gx#syntax-e _%hd5170052564%_)))
                                        (let ((_%lp-tl5170552576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5170352569%_)))
                                              (_%lp-hd5170452573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5170352569%_))))
                                          (_%loop5170252560%_
                                           _%lp-tl5170552576%_
                                           (cons _%lp-hd5170452573%_
                                                 _%body5170652567%_))))
                                      (let ((_%body5170752579%_
                                             (reverse _%body5170652567%_)))
                                        (let ((_%g5166952582%_
                                               _%body5170752579%_)
                                              (_%g5167052584%_
                                               _%hd5169752548%_)
                                              (_%g5167152585%_
                                               _%hd5169452538%_)
                                              (_%g5167252586%_
                                               _%hd5169152528%_)
                                              (_%g5167352587%_
                                               _%hd5168552508%_)
                                              (_%g5167452588%_
                                               _%hd5168252498%_))
                                          (if (and (gx#identifier?
                                                    _%g5167452588%_)
                                                   (gx#identifier?
                                                    _%g5167052584%_)
                                                   (gx#identifier?
                                                    _%g5167152585%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5167152585%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5167152585%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5167152585%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5167152585%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9419294193%_
                                               _%g5166952582%_
                                               _%g5167052584%_
                                               _%g5167152585%_
                                               _%g5167252586%_
                                               _%g5167352587%_
                                               _%g5167452588%_)
                                              (_%__match9438894389%_
                                               _%e5167552474%_
                                               _%hd5167652478%_
                                               _%tl5167752481%_
                                               _%e5167852484%_
                                               _%hd5167952488%_
                                               _%tl5168052491%_
                                               _%e5168152494%_
                                               _%hd5168252498%_
                                               _%tl5168352501%_
                                               _%e5168452504%_
                                               _%hd5168552508%_
                                               _%tl5168652511%_))))))))
                        (_%loop5170252560%_ _%target5169952554%_ '()))))
                   (_%__match9429294293%_
                    (lambda (_%e5167552474%_
                             _%hd5167652478%_
                             _%tl5167752481%_
                             _%e5167852484%_
                             _%hd5167952488%_
                             _%tl5168052491%_
                             _%e5168152494%_
                             _%hd5168252498%_
                             _%tl5168352501%_
                             _%e5168452504%_
                             _%hd5168552508%_
                             _%tl5168652511%_
                             _%e5168752514%_
                             _%hd5168852518%_
                             _%tl5168952521%_)
                      (if (gx#identifier? _%hd5168852518%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g100855_|
                               _%hd5168852518%_)
                              (if (gx#stx-pair? _%tl5168952521%_)
                                  (let ((_%e5169052524%_
                                         (gx#syntax-e _%tl5168952521%_)))
                                    (let ((_%tl5169252531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5169052524%_)))
                                          (_%hd5169152528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5169052524%_))))
                                      (if (gx#stx-pair? _%tl5169252531%_)
                                          (let ((_%e5169352534%_
                                                 (gx#syntax-e
                                                  _%tl5169252531%_)))
                                            (let ((_%tl5169552541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5169352534%_)))
                                                  (_%hd5169452538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5169352534%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5169552541%_)
                                                  (let ((_%e5169652544%_
                                                         (gx#syntax-e
                                                          _%tl5169552541%_)))
                                                    (let ((_%tl5169852551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5169652544%_)))
                                                          (_%hd5169752548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5169652544%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5169852551%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5168052491%_)
                                                              (let ((_%__splice9419494195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5168052491%_
                              '0)))
                        (let ((_%tl5170152557%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9419494195%_ '1)))
                              (_%target5169952554%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9419494195%_ '0))))
                          (if (gx#stx-null? _%tl5170152557%_)
                              (_%__match9432494325%_
                               _%e5167552474%_
                               _%hd5167652478%_
                               _%tl5167752481%_
                               _%e5167852484%_
                               _%hd5167952488%_
                               _%tl5168052491%_
                               _%e5168152494%_
                               _%hd5168252498%_
                               _%tl5168352501%_
                               _%e5168452504%_
                               _%hd5168552508%_
                               _%tl5168652511%_
                               _%e5168752514%_
                               _%hd5168852518%_
                               _%tl5168952521%_
                               _%e5169052524%_
                               _%hd5169152528%_
                               _%tl5169252531%_
                               _%e5169352534%_
                               _%hd5169452538%_
                               _%tl5169552541%_
                               _%e5169652544%_
                               _%hd5169752548%_
                               _%tl5169852551%_
                               _%__splice9419494195%_
                               _%target5169952554%_
                               _%tl5170152557%_)
                              (if (gx#stx-pair? _%hd5168252498%_)
                                  (let ((_%e5181151963%_
                                         (gx#syntax-e _%hd5168252498%_)))
                                    (let ((_%tl5181351970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5181151963%_)))
                                          (_%hd5181251967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5181151963%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))))
                      (if (gx#stx-pair? _%hd5168252498%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5168252498%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                  (if (gx#stx-pair? _%hd5168252498%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5168252498%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (if (gx#stx-pair/null? _%tl5168052491%_)
                              (let ((_%__splice9421094211%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5168052491%_
                                      '0)))
                                (let ((_%tl5181651976%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '1)))
                                      (_%target5181451973%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5181651976%_)
                                      (_%__match9449694497%_
                                       _%e5167552474%_
                                       _%hd5167652478%_
                                       _%tl5167752481%_
                                       _%e5167852484%_
                                       _%hd5167952488%_
                                       _%tl5168052491%_
                                       _%e5168152494%_
                                       _%hd5168252498%_
                                       _%tl5168352501%_
                                       _%e5181151963%_
                                       _%hd5181251967%_
                                       _%tl5181351970%_
                                       _%__splice9421094211%_
                                       _%target5181451973%_
                                       _%tl5181651976%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5168552508%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100854_|
                                                           _%hd5168552508%_)
                                                          (if (gx#stx-null?
                                                               _%tl5169552541%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5168052491%_)
                          (let ((_%__splice9420694207%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5168052491%_
                                  '0)))
                            (let ((_%tl5179152116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9420694207%_ '1)))
                                  (_%target5178952113%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9420694207%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179152116%_)
                                  (_%__match9446494465%_
                                   _%e5167552474%_
                                   _%hd5167652478%_
                                   _%tl5167752481%_
                                   _%e5167852484%_
                                   _%hd5167952488%_
                                   _%tl5168052491%_
                                   _%e5168152494%_
                                   _%hd5168252498%_
                                   _%tl5168352501%_
                                   _%e5168452504%_
                                   _%hd5168552508%_
                                   _%tl5168652511%_
                                   _%e5168752514%_
                                   _%hd5168852518%_
                                   _%tl5168952521%_
                                   _%e5169052524%_
                                   _%hd5169152528%_
                                   _%tl5169252531%_
                                   _%e5169352534%_
                                   _%hd5169452538%_
                                   _%tl5169552541%_
                                   _%__splice9420694207%_
                                   _%target5178952113%_
                                   _%tl5179152116%_)
                                  (if (gx#stx-pair? _%hd5168252498%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5168252498%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))
                          (if (gx#stx-pair? _%hd5168252498%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5168252498%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                      (if (gx#stx-pair? _%hd5168252498%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5168252498%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (if (gx#stx-pair/null? _%tl5168052491%_)
                                  (let ((_%__splice9421094211%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5168052491%_
                                          '0)))
                                    (let ((_%tl5181651976%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '1)))
                                          (_%target5181451973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5181651976%_)
                                          (_%__match9449694497%_
                                           _%e5167552474%_
                                           _%hd5167652478%_
                                           _%tl5167752481%_
                                           _%e5167852484%_
                                           _%hd5167952488%_
                                           _%tl5168052491%_
                                           _%e5168152494%_
                                           _%hd5168252498%_
                                           _%tl5168352501%_
                                           _%e5181151963%_
                                           _%hd5181251967%_
                                           _%tl5181351970%_
                                           _%__splice9421094211%_
                                           _%target5181451973%_
                                           _%tl5181651976%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                  (if (gx#stx-pair? _%hd5168252498%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5168252498%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (if (gx#stx-pair/null? _%tl5168052491%_)
                              (let ((_%__splice9421094211%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5168052491%_
                                      '0)))
                                (let ((_%tl5181651976%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '1)))
                                      (_%target5181451973%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5181651976%_)
                                      (_%__match9449694497%_
                                       _%e5167552474%_
                                       _%hd5167652478%_
                                       _%tl5167752481%_
                                       _%e5167852484%_
                                       _%hd5167952488%_
                                       _%tl5168052491%_
                                       _%e5168152494%_
                                       _%hd5168252498%_
                                       _%tl5168352501%_
                                       _%e5181151963%_
                                       _%hd5181251967%_
                                       _%tl5181351970%_
                                       _%__splice9421094211%_
                                       _%target5181451973%_
                                       _%tl5181651976%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
              (if (gx#stx-pair? _%hd5168252498%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5168252498%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5168052491%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5168052491%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5167552474%_
                                   _%hd5167652478%_
                                   _%tl5167752481%_
                                   _%e5167852484%_
                                   _%hd5167952488%_
                                   _%tl5168052491%_
                                   _%e5168152494%_
                                   _%hd5168252498%_
                                   _%tl5168352501%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5168252498%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5168252498%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5168052491%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5168052491%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5167552474%_
                       _%hd5167652478%_
                       _%tl5167752481%_
                       _%e5167852484%_
                       _%hd5167952488%_
                       _%tl5168052491%_
                       _%e5168152494%_
                       _%hd5168252498%_
                       _%tl5168352501%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))))
                                  (if (gx#stx-null? _%tl5168952521%_)
                                      (if (gx#stx-pair/null? _%tl5168052491%_)
                                          (let ((_%__splice9419894199%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5168052491%_
                                                  '0)))
                                            (let ((_%tl5172952376%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9419894199%_
                                                      '1)))
                                                  (_%target5172752373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9419894199%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5172952376%_)
                                                  (_%__match9436494365%_
                                                   _%e5167552474%_
                                                   _%hd5167652478%_
                                                   _%tl5167752481%_
                                                   _%e5167852484%_
                                                   _%hd5167952488%_
                                                   _%tl5168052491%_
                                                   _%e5168152494%_
                                                   _%hd5168252498%_
                                                   _%tl5168352501%_
                                                   _%e5168452504%_
                                                   _%hd5168552508%_
                                                   _%tl5168652511%_
                                                   _%e5168752514%_
                                                   _%hd5168852518%_
                                                   _%tl5168952521%_
                                                   _%__splice9419894199%_
                                                   _%target5172752373%_
                                                   _%tl5172952376%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5168252498%_)
                                                      (let ((_%e5181151963%_
                                                             (gx#syntax-e
                                                              _%hd5168252498%_)))
                                                        (let ((_%tl5181351970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5181151963%_)))
                      (_%hd5181251967%_
                       (let () (declare (not safe)) (##car _%e5181151963%_))))
                  (let () (declare (not safe)) (_%g5163551844%_))))
              (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5168252498%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5168252498%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                      (if (gx#stx-pair? _%hd5168252498%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5168252498%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5168052491%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5168052491%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5167552474%_
                                                           _%hd5167652478%_
                                                           _%tl5167752481%_
                                                           _%e5167852484%_
                                                           _%hd5167952488%_
                                                           _%tl5168052491%_
                                                           _%e5168152494%_
                                                           _%hd5168252498%_
                                                           _%tl5168352501%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                              (if (gx#stx-null? _%tl5168952521%_)
                                  (if (gx#stx-pair/null? _%tl5168052491%_)
                                      (let ((_%__splice9419894199%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5168052491%_
                                              '0)))
                                        (let ((_%tl5172952376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9419894199%_
                                                  '1)))
                                              (_%target5172752373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9419894199%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5172952376%_)
                                              (_%__match9436494365%_
                                               _%e5167552474%_
                                               _%hd5167652478%_
                                               _%tl5167752481%_
                                               _%e5167852484%_
                                               _%hd5167952488%_
                                               _%tl5168052491%_
                                               _%e5168152494%_
                                               _%hd5168252498%_
                                               _%tl5168352501%_
                                               _%e5168452504%_
                                               _%hd5168552508%_
                                               _%tl5168652511%_
                                               _%e5168752514%_
                                               _%hd5168852518%_
                                               _%tl5168952521%_
                                               _%__splice9419894199%_
                                               _%target5172752373%_
                                               _%tl5172952376%_)
                                              (if (gx#stx-pair?
                                                   _%hd5168252498%_)
                                                  (let ((_%e5181151963%_
                                                         (gx#syntax-e
                                                          _%hd5168252498%_)))
                                                    (let ((_%tl5181351970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5181151963%_)))
                                                          (_%hd5181251967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5181151963%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5163551844%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))))
                                      (if (gx#stx-pair? _%hd5168252498%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5168252498%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                  (if (gx#identifier? _%hd5168552508%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100854_|
                                           _%hd5168552508%_)
                                          (if (gx#stx-pair? _%tl5168952521%_)
                                              (let ((_%e5178352093%_
                                                     (gx#syntax-e
                                                      _%tl5168952521%_)))
                                                (let ((_%tl5178552100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178352093%_)))
                                                      (_%hd5178452097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178352093%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5178552100%_)
                                                      (let ((_%e5178652103%_
                                                             (gx#syntax-e
                                                              _%tl5178552100%_)))
                                                        (let ((_%tl5178852110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5178652103%_)))
                      (_%hd5178752107%_
                       (let () (declare (not safe)) (##car _%e5178652103%_))))
                  (if (gx#stx-null? _%tl5178852110%_)
                      (if (gx#stx-pair/null? _%tl5168052491%_)
                          (let ((_%__splice9420694207%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5168052491%_
                                  '0)))
                            (let ((_%tl5179152116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9420694207%_ '1)))
                                  (_%target5178952113%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9420694207%_
                                      '0))))
                              (if (gx#stx-null? _%tl5179152116%_)
                                  (_%__match9446494465%_
                                   _%e5167552474%_
                                   _%hd5167652478%_
                                   _%tl5167752481%_
                                   _%e5167852484%_
                                   _%hd5167952488%_
                                   _%tl5168052491%_
                                   _%e5168152494%_
                                   _%hd5168252498%_
                                   _%tl5168352501%_
                                   _%e5168452504%_
                                   _%hd5168552508%_
                                   _%tl5168652511%_
                                   _%e5168752514%_
                                   _%hd5168852518%_
                                   _%tl5168952521%_
                                   _%e5178352093%_
                                   _%hd5178452097%_
                                   _%tl5178552100%_
                                   _%e5178652103%_
                                   _%hd5178752107%_
                                   _%tl5178852110%_
                                   _%__splice9420694207%_
                                   _%target5178952113%_
                                   _%tl5179152116%_)
                                  (if (gx#stx-pair? _%hd5168252498%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5168252498%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))
                          (if (gx#stx-pair? _%hd5168252498%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5168252498%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                      (if (gx#stx-pair? _%hd5168252498%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5168252498%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (if (gx#stx-pair/null? _%tl5168052491%_)
                                  (let ((_%__splice9421094211%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5168052491%_
                                          '0)))
                                    (let ((_%tl5181651976%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '1)))
                                          (_%target5181451973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5181651976%_)
                                          (_%__match9449694497%_
                                           _%e5167552474%_
                                           _%hd5167652478%_
                                           _%tl5167752481%_
                                           _%e5167852484%_
                                           _%hd5167952488%_
                                           _%tl5168052491%_
                                           _%e5168152494%_
                                           _%hd5168252498%_
                                           _%tl5168352501%_
                                           _%e5181151963%_
                                           _%hd5181251967%_
                                           _%tl5181351970%_
                                           _%__splice9421094211%_
                                           _%target5181451973%_
                                           _%tl5181651976%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_))))))
              (if (gx#stx-pair? _%hd5168252498%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5168252498%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5168052491%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5168052491%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5167552474%_
                                   _%hd5167652478%_
                                   _%tl5167752481%_
                                   _%e5167852484%_
                                   _%hd5167952488%_
                                   _%tl5168052491%_
                                   _%e5168152494%_
                                   _%hd5168252498%_
                                   _%tl5168352501%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5168252498%_)
                                                  (let ((_%e5181151963%_
                                                         (gx#syntax-e
                                                          _%hd5168252498%_)))
                                                    (let ((_%tl5181351970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5181151963%_)))
                                                          (_%hd5181251967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5181151963%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5168052491%_)
                                                          (let ((_%__splice9421094211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5168052491%_ '0)))
                    (let ((_%tl5181651976%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '1)))
                          (_%target5181451973%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '0))))
                      (if (gx#stx-null? _%tl5181651976%_)
                          (_%__match9449694497%_
                           _%e5167552474%_
                           _%hd5167652478%_
                           _%tl5167752481%_
                           _%e5167852484%_
                           _%hd5167952488%_
                           _%tl5168052491%_
                           _%e5168152494%_
                           _%hd5168252498%_
                           _%tl5168352501%_
                           _%e5181151963%_
                           _%hd5181251967%_
                           _%tl5181351970%_
                           _%__splice9421094211%_
                           _%target5181451973%_
                           _%tl5181651976%_)
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))
                                          (if (gx#stx-pair? _%hd5168252498%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5168252498%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5168052491%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5168052491%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5167552474%_
                       _%hd5167652478%_
                       _%tl5167752481%_
                       _%e5167852484%_
                       _%hd5167952488%_
                       _%tl5168052491%_
                       _%e5168152494%_
                       _%hd5168252498%_
                       _%tl5168352501%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                      (if (gx#stx-pair? _%hd5168252498%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5168252498%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5168052491%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5168052491%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5167552474%_
                                                           _%hd5167652478%_
                                                           _%tl5167752481%_
                                                           _%e5167852484%_
                                                           _%hd5167952488%_
                                                           _%tl5168052491%_
                                                           _%e5168152494%_
                                                           _%hd5168252498%_
                                                           _%tl5168352501%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))))
                          (if (gx#stx-null? _%tl5168952521%_)
                              (if (gx#stx-pair/null? _%tl5168052491%_)
                                  (let ((_%__splice9419894199%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5168052491%_
                                          '0)))
                                    (let ((_%tl5172952376%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9419894199%_
                                              '1)))
                                          (_%target5172752373%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9419894199%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5172952376%_)
                                          (_%__match9436494365%_
                                           _%e5167552474%_
                                           _%hd5167652478%_
                                           _%tl5167752481%_
                                           _%e5167852484%_
                                           _%hd5167952488%_
                                           _%tl5168052491%_
                                           _%e5168152494%_
                                           _%hd5168252498%_
                                           _%tl5168352501%_
                                           _%e5168452504%_
                                           _%hd5168552508%_
                                           _%tl5168652511%_
                                           _%e5168752514%_
                                           _%hd5168852518%_
                                           _%tl5168952521%_
                                           _%__splice9419894199%_
                                           _%target5172752373%_
                                           _%tl5172952376%_)
                                          (if (gx#stx-pair? _%hd5168252498%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5168252498%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))))
                                  (if (gx#stx-pair? _%hd5168252498%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5168252498%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                              (if (gx#identifier? _%hd5168552508%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100854_|
                                       _%hd5168552508%_)
                                      (if (gx#stx-pair? _%tl5168952521%_)
                                          (let ((_%e5178352093%_
                                                 (gx#syntax-e
                                                  _%tl5168952521%_)))
                                            (let ((_%tl5178552100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178352093%_)))
                                                  (_%hd5178452097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178352093%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5178552100%_)
                                                  (let ((_%e5178652103%_
                                                         (gx#syntax-e
                                                          _%tl5178552100%_)))
                                                    (let ((_%tl5178852110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5178652103%_)))
                                                          (_%hd5178752107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5178652103%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5178852110%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5168052491%_)
                                                              (let ((_%__splice9420694207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5168052491%_
                              '0)))
                        (let ((_%tl5179152116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9420694207%_ '1)))
                              (_%target5178952113%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9420694207%_ '0))))
                          (if (gx#stx-null? _%tl5179152116%_)
                              (_%__match9446494465%_
                               _%e5167552474%_
                               _%hd5167652478%_
                               _%tl5167752481%_
                               _%e5167852484%_
                               _%hd5167952488%_
                               _%tl5168052491%_
                               _%e5168152494%_
                               _%hd5168252498%_
                               _%tl5168352501%_
                               _%e5168452504%_
                               _%hd5168552508%_
                               _%tl5168652511%_
                               _%e5168752514%_
                               _%hd5168852518%_
                               _%tl5168952521%_
                               _%e5178352093%_
                               _%hd5178452097%_
                               _%tl5178552100%_
                               _%e5178652103%_
                               _%hd5178752107%_
                               _%tl5178852110%_
                               _%__splice9420694207%_
                               _%target5178952113%_
                               _%tl5179152116%_)
                              (if (gx#stx-pair? _%hd5168252498%_)
                                  (let ((_%e5181151963%_
                                         (gx#syntax-e _%hd5168252498%_)))
                                    (let ((_%tl5181351970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5181151963%_)))
                                          (_%hd5181251967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5181151963%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))))
                      (if (gx#stx-pair? _%hd5168252498%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5168252498%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                  (if (gx#stx-pair? _%hd5168252498%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5168252498%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (if (gx#stx-pair/null? _%tl5168052491%_)
                              (let ((_%__splice9421094211%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5168052491%_
                                      '0)))
                                (let ((_%tl5181651976%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '1)))
                                      (_%target5181451973%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5181651976%_)
                                      (_%__match9449694497%_
                                       _%e5167552474%_
                                       _%hd5167652478%_
                                       _%tl5167752481%_
                                       _%e5167852484%_
                                       _%hd5167952488%_
                                       _%tl5168052491%_
                                       _%e5168152494%_
                                       _%hd5168252498%_
                                       _%tl5168352501%_
                                       _%e5181151963%_
                                       _%hd5181251967%_
                                       _%tl5181351970%_
                                       _%__splice9421094211%_
                                       _%target5181451973%_
                                       _%tl5181651976%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5168252498%_)
                                                      (let ((_%e5181151963%_
                                                             (gx#syntax-e
                                                              _%hd5168252498%_)))
                                                        (let ((_%tl5181351970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5181151963%_)))
                      (_%hd5181251967%_
                       (let () (declare (not safe)) (##car _%e5181151963%_))))
                  (if (gx#stx-pair/null? _%tl5168052491%_)
                      (let ((_%__splice9421094211%_
                             (gx#syntax-split-splice->vector
                              _%tl5168052491%_
                              '0)))
                        (let ((_%tl5181651976%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '1)))
                              (_%target5181451973%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '0))))
                          (if (gx#stx-null? _%tl5181651976%_)
                              (_%__match9449694497%_
                               _%e5167552474%_
                               _%hd5167652478%_
                               _%tl5167752481%_
                               _%e5167852484%_
                               _%hd5167952488%_
                               _%tl5168052491%_
                               _%e5168152494%_
                               _%hd5168252498%_
                               _%tl5168352501%_
                               _%e5181151963%_
                               _%hd5181251967%_
                               _%tl5181351970%_
                               _%__splice9421094211%_
                               _%target5181451973%_
                               _%tl5181651976%_)
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5168252498%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5168252498%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5168052491%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5168052491%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5167552474%_
                       _%hd5167652478%_
                       _%tl5167752481%_
                       _%e5167852484%_
                       _%hd5167952488%_
                       _%tl5168052491%_
                       _%e5168152494%_
                       _%hd5168252498%_
                       _%tl5168352501%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                      (if (gx#stx-pair? _%hd5168252498%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5168252498%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5168052491%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5168052491%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5167552474%_
                                                           _%hd5167652478%_
                                                           _%tl5167752481%_
                                                           _%e5167852484%_
                                                           _%hd5167952488%_
                                                           _%tl5168052491%_
                                                           _%e5168152494%_
                                                           _%hd5168252498%_
                                                           _%tl5168352501%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                  (if (gx#stx-pair? _%hd5168252498%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5168252498%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5168052491%_)
                                              (let ((_%__splice9421094211%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5168052491%_
                                                      '0)))
                                                (let ((_%tl5181651976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '1)))
                                                      (_%target5181451973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5181651976%_)
                                                      (_%__match9449694497%_
                                                       _%e5167552474%_
                                                       _%hd5167652478%_
                                                       _%tl5167752481%_
                                                       _%e5167852484%_
                                                       _%hd5167952488%_
                                                       _%tl5168052491%_
                                                       _%e5168152494%_
                                                       _%hd5168252498%_
                                                       _%tl5168352501%_
                                                       _%e5181151963%_
                                                       _%hd5181251967%_
                                                       _%tl5181351970%_
                                                       _%__splice9421094211%_
                                                       _%target5181451973%_
                                                       _%tl5181651976%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5163551844%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))))
                   (_%__match9426294263%_
                    (lambda (_%e5164252648%_
                             _%hd5164352652%_
                             _%tl5164452655%_
                             _%e5164552658%_
                             _%hd5164652662%_
                             _%tl5164752665%_
                             _%e5164852668%_
                             _%hd5164952672%_
                             _%tl5165052675%_
                             _%e5165152678%_
                             _%hd5165252682%_
                             _%tl5165352685%_
                             _%e5165452688%_
                             _%hd5165552692%_
                             _%tl5165652695%_
                             _%e5165752698%_
                             _%hd5165852702%_
                             _%tl5165952705%_
                             _%__splice9419094191%_
                             _%target5166052708%_
                             _%tl5166252711%_)
                      (letrec ((_%loop5166352714%_
                                (lambda (_%hd5166152718%_ _%body5166752721%_)
                                  (if (gx#stx-pair? _%hd5166152718%_)
                                      (let ((_%e5166452723%_
                                             (gx#syntax-e _%hd5166152718%_)))
                                        (let ((_%lp-tl5166652730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5166452723%_)))
                                              (_%lp-hd5166552727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5166452723%_))))
                                          (_%loop5166352714%_
                                           _%lp-tl5166652730%_
                                           (cons _%lp-hd5166552727%_
                                                 _%body5166752721%_))))
                                      (let ((_%body5166852733%_
                                             (reverse _%body5166752721%_)))
                                        (let ((_%g5163752736%_
                                               _%body5166852733%_)
                                              (_%g5163852738%_
                                               _%hd5165852702%_)
                                              (_%g5163952739%_
                                               _%hd5165552692%_)
                                              (_%g5164052740%_
                                               _%hd5165252682%_)
                                              (_%g5164152741%_
                                               _%hd5164952672%_))
                                          (if (and (gx#identifier?
                                                    _%g5164152741%_)
                                                   (gx#identifier?
                                                    _%g5163952739%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5163952739%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5163952739%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5163952739%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5163952739%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5163952739%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9418894189%_
                                               _%g5163752736%_
                                               _%g5163852738%_
                                               _%g5163952739%_
                                               _%g5164052740%_
                                               _%g5164152741%_)
                                              (_%__match9429294293%_
                                               _%e5164252648%_
                                               _%hd5164352652%_
                                               _%tl5164452655%_
                                               _%e5164552658%_
                                               _%hd5164652662%_
                                               _%tl5164752665%_
                                               _%e5164852668%_
                                               _%hd5164952672%_
                                               _%tl5165052675%_
                                               _%e5165152678%_
                                               _%hd5165252682%_
                                               _%tl5165352685%_
                                               _%e5165452688%_
                                               _%hd5165552692%_
                                               _%tl5165652695%_))))))))
                        (_%loop5166352714%_ _%target5166052708%_ '())))))
              (if (gx#stx-pair? _%__stx9418594186%_)
                  (let ((_%e5164252648%_ (gx#syntax-e _%__stx9418594186%_)))
                    (let ((_%tl5164452655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5164252648%_)))
                          (_%hd5164352652%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5164252648%_))))
                      (if (gx#stx-pair? _%tl5164452655%_)
                          (let ((_%e5164552658%_
                                 (gx#syntax-e _%tl5164452655%_)))
                            (let ((_%tl5164752665%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5164552658%_)))
                                  (_%hd5164652662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5164552658%_))))
                              (if (gx#stx-pair? _%hd5164652662%_)
                                  (let ((_%e5164852668%_
                                         (gx#syntax-e _%hd5164652662%_)))
                                    (let ((_%tl5165052675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5164852668%_)))
                                          (_%hd5164952672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5164852668%_))))
                                      (if (gx#stx-pair? _%tl5165052675%_)
                                          (let ((_%e5165152678%_
                                                 (gx#syntax-e
                                                  _%tl5165052675%_)))
                                            (let ((_%tl5165352685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5165152678%_)))
                                                  (_%hd5165252682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5165152678%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5165352685%_)
                                                  (let ((_%e5165452688%_
                                                         (gx#syntax-e
                                                          _%tl5165352685%_)))
                                                    (let ((_%tl5165652695%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5165452688%_)))
                                                          (_%hd5165552692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5165452688%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5165652695%_)
                                                          (let ((_%e5165752698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5165652695%_)))
                    (let ((_%tl5165952705%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5165752698%_)))
                          (_%hd5165852702%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5165752698%_))))
                      (if (gx#stx-null? _%tl5165952705%_)
                          (if (gx#stx-pair/null? _%tl5164752665%_)
                              (let ((_%__splice9419094191%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5164752665%_
                                      '0)))
                                (let ((_%tl5166252711%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9419094191%_
                                          '1)))
                                      (_%target5166052708%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9419094191%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5166252711%_)
                                      (_%__match9426294263%_
                                       _%e5164252648%_
                                       _%hd5164352652%_
                                       _%tl5164452655%_
                                       _%e5164552658%_
                                       _%hd5164652662%_
                                       _%tl5164752665%_
                                       _%e5164852668%_
                                       _%hd5164952672%_
                                       _%tl5165052675%_
                                       _%e5165152678%_
                                       _%hd5165252682%_
                                       _%tl5165352685%_
                                       _%e5165452688%_
                                       _%hd5165552692%_
                                       _%tl5165652695%_
                                       _%e5165752698%_
                                       _%hd5165852702%_
                                       _%tl5165952705%_
                                       _%__splice9419094191%_
                                       _%target5166052708%_
                                       _%tl5166252711%_)
                                      (if (gx#stx-pair? _%hd5164952672%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5164952672%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))))
                              (if (gx#stx-pair? _%hd5164952672%_)
                                  (let ((_%e5181151963%_
                                         (gx#syntax-e _%hd5164952672%_)))
                                    (let ((_%tl5181351970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5181151963%_)))
                                          (_%hd5181251967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5181151963%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                          (if (gx#identifier? _%hd5165552692%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g100855_|
                                   _%hd5165552692%_)
                                  (if (gx#stx-pair? _%tl5165952705%_)
                                      (let ((_%e5169352534%_
                                             (gx#syntax-e _%tl5165952705%_)))
                                        (let ((_%tl5169552541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5169352534%_)))
                                              (_%hd5169452538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5169352534%_))))
                                          (if (gx#stx-pair? _%tl5169552541%_)
                                              (let ((_%e5169652544%_
                                                     (gx#syntax-e
                                                      _%tl5169552541%_)))
                                                (let ((_%tl5169852551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5169652544%_)))
                                                      (_%hd5169752548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5169652544%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5169852551%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5164752665%_)
                                                          (let ((_%__splice9419494195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5164752665%_ '0)))
                    (let ((_%tl5170152557%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9419494195%_ '1)))
                          (_%target5169952554%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9419494195%_ '0))))
                      (if (gx#stx-null? _%tl5170152557%_)
                          (_%__match9432494325%_
                           _%e5164252648%_
                           _%hd5164352652%_
                           _%tl5164452655%_
                           _%e5164552658%_
                           _%hd5164652662%_
                           _%tl5164752665%_
                           _%e5164852668%_
                           _%hd5164952672%_
                           _%tl5165052675%_
                           _%e5165152678%_
                           _%hd5165252682%_
                           _%tl5165352685%_
                           _%e5165452688%_
                           _%hd5165552692%_
                           _%tl5165652695%_
                           _%e5165752698%_
                           _%hd5165852702%_
                           _%tl5165952705%_
                           _%e5169352534%_
                           _%hd5169452538%_
                           _%tl5169552541%_
                           _%e5169652544%_
                           _%hd5169752548%_
                           _%tl5169852551%_
                           _%__splice9419494195%_
                           _%target5169952554%_
                           _%tl5170152557%_)
                          (if (gx#stx-pair? _%hd5164952672%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5164952672%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_))))))
                  (if (gx#stx-pair? _%hd5164952672%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
              (if (gx#stx-pair? _%hd5164952672%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5164752665%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5164752665%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5164252648%_
                                   _%hd5164352652%_
                                   _%tl5164452655%_
                                   _%e5164552658%_
                                   _%hd5164652662%_
                                   _%tl5164752665%_
                                   _%e5164852668%_
                                   _%hd5164952672%_
                                   _%tl5165052675%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5165252682%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g100854_|
                                                       _%hd5165252682%_)
                                                      (if (gx#stx-null?
                                                           _%tl5169552541%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5164752665%_)
                                                              (let ((_%__splice9420694207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5164752665%_
                              '0)))
                        (let ((_%tl5179152116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9420694207%_ '1)))
                              (_%target5178952113%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9420694207%_ '0))))
                          (if (gx#stx-null? _%tl5179152116%_)
                              (_%__match9446494465%_
                               _%e5164252648%_
                               _%hd5164352652%_
                               _%tl5164452655%_
                               _%e5164552658%_
                               _%hd5164652662%_
                               _%tl5164752665%_
                               _%e5164852668%_
                               _%hd5164952672%_
                               _%tl5165052675%_
                               _%e5165152678%_
                               _%hd5165252682%_
                               _%tl5165352685%_
                               _%e5165452688%_
                               _%hd5165552692%_
                               _%tl5165652695%_
                               _%e5165752698%_
                               _%hd5165852702%_
                               _%tl5165952705%_
                               _%e5169352534%_
                               _%hd5169452538%_
                               _%tl5169552541%_
                               _%__splice9420694207%_
                               _%target5178952113%_
                               _%tl5179152116%_)
                              (if (gx#stx-pair? _%hd5164952672%_)
                                  (let ((_%e5181151963%_
                                         (gx#syntax-e _%hd5164952672%_)))
                                    (let ((_%tl5181351970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5181151963%_)))
                                          (_%hd5181251967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5181151963%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))))
                      (if (gx#stx-pair? _%hd5164952672%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5164952672%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                  (if (gx#stx-pair? _%hd5164952672%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (if (gx#stx-pair/null? _%tl5164752665%_)
                              (let ((_%__splice9421094211%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5164752665%_
                                      '0)))
                                (let ((_%tl5181651976%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '1)))
                                      (_%target5181451973%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9421094211%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5181651976%_)
                                      (_%__match9449694497%_
                                       _%e5164252648%_
                                       _%hd5164352652%_
                                       _%tl5164452655%_
                                       _%e5164552658%_
                                       _%hd5164652662%_
                                       _%tl5164752665%_
                                       _%e5164852668%_
                                       _%hd5164952672%_
                                       _%tl5165052675%_
                                       _%e5181151963%_
                                       _%hd5181251967%_
                                       _%tl5181351970%_
                                       _%__splice9421094211%_
                                       _%target5181451973%_
                                       _%tl5181651976%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
              (if (gx#stx-pair? _%hd5164952672%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5164752665%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5164752665%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5164252648%_
                                   _%hd5164352652%_
                                   _%tl5164452655%_
                                   _%e5164552658%_
                                   _%hd5164652662%_
                                   _%tl5164752665%_
                                   _%e5164852668%_
                                   _%hd5164952672%_
                                   _%tl5165052675%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5164952672%_)
                                                      (let ((_%e5181151963%_
                                                             (gx#syntax-e
                                                              _%hd5164952672%_)))
                                                        (let ((_%tl5181351970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5181151963%_)))
                      (_%hd5181251967%_
                       (let () (declare (not safe)) (##car _%e5181151963%_))))
                  (if (gx#stx-pair/null? _%tl5164752665%_)
                      (let ((_%__splice9421094211%_
                             (gx#syntax-split-splice->vector
                              _%tl5164752665%_
                              '0)))
                        (let ((_%tl5181651976%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '1)))
                              (_%target5181451973%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '0))))
                          (if (gx#stx-null? _%tl5181651976%_)
                              (_%__match9449694497%_
                               _%e5164252648%_
                               _%hd5164352652%_
                               _%tl5164452655%_
                               _%e5164552658%_
                               _%hd5164652662%_
                               _%tl5164752665%_
                               _%e5164852668%_
                               _%hd5164952672%_
                               _%tl5165052675%_
                               _%e5181151963%_
                               _%hd5181251967%_
                               _%tl5181351970%_
                               _%__splice9421094211%_
                               _%target5181451973%_
                               _%tl5181651976%_)
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5164952672%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5164952672%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5164752665%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5164752665%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5164252648%_
                                                           _%hd5164352652%_
                                                           _%tl5164452655%_
                                                           _%e5164552658%_
                                                           _%hd5164652662%_
                                                           _%tl5164752665%_
                                                           _%e5164852668%_
                                                           _%hd5164952672%_
                                                           _%tl5165052675%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                  (if (gx#identifier? _%hd5165252682%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100854_|
                                           _%hd5165252682%_)
                                          (if (gx#stx-pair? _%tl5165952705%_)
                                              (let ((_%e5178652103%_
                                                     (gx#syntax-e
                                                      _%tl5165952705%_)))
                                                (let ((_%tl5178852110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5178652103%_)))
                                                      (_%hd5178752107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5178652103%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5178852110%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5164752665%_)
                                                          (let ((_%__splice9420694207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5164752665%_ '0)))
                    (let ((_%tl5179152116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9420694207%_ '1)))
                          (_%target5178952113%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9420694207%_ '0))))
                      (if (gx#stx-null? _%tl5179152116%_)
                          (_%__match9446494465%_
                           _%e5164252648%_
                           _%hd5164352652%_
                           _%tl5164452655%_
                           _%e5164552658%_
                           _%hd5164652662%_
                           _%tl5164752665%_
                           _%e5164852668%_
                           _%hd5164952672%_
                           _%tl5165052675%_
                           _%e5165152678%_
                           _%hd5165252682%_
                           _%tl5165352685%_
                           _%e5165452688%_
                           _%hd5165552692%_
                           _%tl5165652695%_
                           _%e5165752698%_
                           _%hd5165852702%_
                           _%tl5165952705%_
                           _%e5178652103%_
                           _%hd5178752107%_
                           _%tl5178852110%_
                           _%__splice9420694207%_
                           _%target5178952113%_
                           _%tl5179152116%_)
                          (if (gx#stx-pair? _%hd5164952672%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5164952672%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_))))))
                  (if (gx#stx-pair? _%hd5164952672%_)
                      (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                        (let ((_%tl5181351970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5181151963%_)))
                              (_%hd5181251967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5181151963%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
              (if (gx#stx-pair? _%hd5164952672%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (if (gx#stx-pair/null? _%tl5164752665%_)
                          (let ((_%__splice9421094211%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5164752665%_
                                  '0)))
                            (let ((_%tl5181651976%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9421094211%_ '1)))
                                  (_%target5181451973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9421094211%_
                                      '0))))
                              (if (gx#stx-null? _%tl5181651976%_)
                                  (_%__match9449694497%_
                                   _%e5164252648%_
                                   _%hd5164352652%_
                                   _%tl5164452655%_
                                   _%e5164552658%_
                                   _%hd5164652662%_
                                   _%tl5164752665%_
                                   _%e5164852668%_
                                   _%hd5164952672%_
                                   _%tl5165052675%_
                                   _%e5181151963%_
                                   _%hd5181251967%_
                                   _%tl5181351970%_
                                   _%__splice9421094211%_
                                   _%target5181451973%_
                                   _%tl5181651976%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5164952672%_)
                                                  (let ((_%e5181151963%_
                                                         (gx#syntax-e
                                                          _%hd5164952672%_)))
                                                    (let ((_%tl5181351970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5181151963%_)))
                                                          (_%hd5181251967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5181151963%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5164752665%_)
                                                          (let ((_%__splice9421094211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5164752665%_ '0)))
                    (let ((_%tl5181651976%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '1)))
                          (_%target5181451973%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9421094211%_ '0))))
                      (if (gx#stx-null? _%tl5181651976%_)
                          (_%__match9449694497%_
                           _%e5164252648%_
                           _%hd5164352652%_
                           _%tl5164452655%_
                           _%e5164552658%_
                           _%hd5164652662%_
                           _%tl5164752665%_
                           _%e5164852668%_
                           _%hd5164952672%_
                           _%tl5165052675%_
                           _%e5181151963%_
                           _%hd5181251967%_
                           _%tl5181351970%_
                           _%__splice9421094211%_
                           _%target5181451973%_
                           _%tl5181651976%_)
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_))))
                                          (if (gx#stx-pair? _%hd5164952672%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5164952672%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5164752665%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5164752665%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5164252648%_
                       _%hd5164352652%_
                       _%tl5164452655%_
                       _%e5164552658%_
                       _%hd5164652662%_
                       _%tl5164752665%_
                       _%e5164852668%_
                       _%hd5164952672%_
                       _%tl5165052675%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                      (if (gx#stx-pair? _%hd5164952672%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5164952672%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5164752665%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5164752665%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5164252648%_
                                                           _%hd5164352652%_
                                                           _%tl5164452655%_
                                                           _%e5164552658%_
                                                           _%hd5164652662%_
                                                           _%tl5164752665%_
                                                           _%e5164852668%_
                                                           _%hd5164952672%_
                                                           _%tl5165052675%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                              (if (gx#identifier? _%hd5165252682%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100854_|
                                       _%hd5165252682%_)
                                      (if (gx#stx-pair? _%tl5165952705%_)
                                          (let ((_%e5178652103%_
                                                 (gx#syntax-e
                                                  _%tl5165952705%_)))
                                            (let ((_%tl5178852110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5178652103%_)))
                                                  (_%hd5178752107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5178652103%_))))
                                              (if (gx#stx-null?
                                                   _%tl5178852110%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5164752665%_)
                                                      (let ((_%__splice9420694207%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5164752665%_
                                                              '0)))
                                                        (let ((_%tl5179152116%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9420694207%_ '1)))
                      (_%target5178952113%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9420694207%_ '0))))
                  (if (gx#stx-null? _%tl5179152116%_)
                      (_%__match9446494465%_
                       _%e5164252648%_
                       _%hd5164352652%_
                       _%tl5164452655%_
                       _%e5164552658%_
                       _%hd5164652662%_
                       _%tl5164752665%_
                       _%e5164852668%_
                       _%hd5164952672%_
                       _%tl5165052675%_
                       _%e5165152678%_
                       _%hd5165252682%_
                       _%tl5165352685%_
                       _%e5165452688%_
                       _%hd5165552692%_
                       _%tl5165652695%_
                       _%e5165752698%_
                       _%hd5165852702%_
                       _%tl5165952705%_
                       _%e5178652103%_
                       _%hd5178752107%_
                       _%tl5178852110%_
                       _%__splice9420694207%_
                       _%target5178952113%_
                       _%tl5179152116%_)
                      (if (gx#stx-pair? _%hd5164952672%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5164952672%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                          (let () (declare (not safe)) (_%g5163551844%_))))))
              (if (gx#stx-pair? _%hd5164952672%_)
                  (let ((_%e5181151963%_ (gx#syntax-e _%hd5164952672%_)))
                    (let ((_%tl5181351970%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5181151963%_)))
                          (_%hd5181251967%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5181151963%_))))
                      (let () (declare (not safe)) (_%g5163551844%_))))
                  (let () (declare (not safe)) (_%g5163551844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5164952672%_)
                                                      (let ((_%e5181151963%_
                                                             (gx#syntax-e
                                                              _%hd5164952672%_)))
                                                        (let ((_%tl5181351970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5181151963%_)))
                      (_%hd5181251967%_
                       (let () (declare (not safe)) (##car _%e5181151963%_))))
                  (if (gx#stx-pair/null? _%tl5164752665%_)
                      (let ((_%__splice9421094211%_
                             (gx#syntax-split-splice->vector
                              _%tl5164752665%_
                              '0)))
                        (let ((_%tl5181651976%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '1)))
                              (_%target5181451973%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '0))))
                          (if (gx#stx-null? _%tl5181651976%_)
                              (_%__match9449694497%_
                               _%e5164252648%_
                               _%hd5164352652%_
                               _%tl5164452655%_
                               _%e5164552658%_
                               _%hd5164652662%_
                               _%tl5164752665%_
                               _%e5164852668%_
                               _%hd5164952672%_
                               _%tl5165052675%_
                               _%e5181151963%_
                               _%hd5181251967%_
                               _%tl5181351970%_
                               _%__splice9421094211%_
                               _%target5181451973%_
                               _%tl5181651976%_)
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5164952672%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5164952672%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5164752665%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5164752665%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5164252648%_
                       _%hd5164352652%_
                       _%tl5164452655%_
                       _%e5164552658%_
                       _%hd5164652662%_
                       _%tl5164752665%_
                       _%e5164852668%_
                       _%hd5164952672%_
                       _%tl5165052675%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))
                                      (if (gx#stx-pair? _%hd5164952672%_)
                                          (let ((_%e5181151963%_
                                                 (gx#syntax-e
                                                  _%hd5164952672%_)))
                                            (let ((_%tl5181351970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5181151963%_)))
                                                  (_%hd5181251967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5181151963%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5164752665%_)
                                                  (let ((_%__splice9421094211%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5164752665%_
                                                          '0)))
                                                    (let ((_%tl5181651976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '1)))
                                                          (_%target5181451973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9421094211%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5181651976%_)
                                                          (_%__match9449694497%_
                                                           _%e5164252648%_
                                                           _%hd5164352652%_
                                                           _%tl5164452655%_
                                                           _%e5164552658%_
                                                           _%hd5164652662%_
                                                           _%tl5164752665%_
                                                           _%e5164852668%_
                                                           _%hd5164952672%_
                                                           _%tl5165052675%_
                                                           _%e5181151963%_
                                                           _%hd5181251967%_
                                                           _%tl5181351970%_
                                                           _%__splice9421094211%_
                                                           _%target5181451973%_
                                                           _%tl5181651976%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5163551844%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                  (if (gx#stx-pair? _%hd5164952672%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5164952672%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5164752665%_)
                                              (let ((_%__splice9421094211%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5164752665%_
                                                      '0)))
                                                (let ((_%tl5181651976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '1)))
                                                      (_%target5181451973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9421094211%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5181651976%_)
                                                      (_%__match9449694497%_
                                                       _%e5164252648%_
                                                       _%hd5164352652%_
                                                       _%tl5164452655%_
                                                       _%e5164552658%_
                                                       _%hd5164652662%_
                                                       _%tl5164752665%_
                                                       _%e5164852668%_
                                                       _%hd5164952672%_
                                                       _%tl5165052675%_
                                                       _%e5181151963%_
                                                       _%hd5181251967%_
                                                       _%tl5181351970%_
                                                       _%__splice9421094211%_
                                                       _%target5181451973%_
                                                       _%tl5181651976%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5163551844%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))))
                  (if (gx#stx-null? _%tl5165652695%_)
                      (if (gx#stx-pair/null? _%tl5164752665%_)
                          (let ((_%__splice9419894199%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5164752665%_
                                  '0)))
                            (let ((_%tl5172952376%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9419894199%_ '1)))
                                  (_%target5172752373%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9419894199%_
                                      '0))))
                              (if (gx#stx-null? _%tl5172952376%_)
                                  (_%__match9436494365%_
                                   _%e5164252648%_
                                   _%hd5164352652%_
                                   _%tl5164452655%_
                                   _%e5164552658%_
                                   _%hd5164652662%_
                                   _%tl5164752665%_
                                   _%e5164852668%_
                                   _%hd5164952672%_
                                   _%tl5165052675%_
                                   _%e5165152678%_
                                   _%hd5165252682%_
                                   _%tl5165352685%_
                                   _%e5165452688%_
                                   _%hd5165552692%_
                                   _%tl5165652695%_
                                   _%__splice9419894199%_
                                   _%target5172752373%_
                                   _%tl5172952376%_)
                                  (if (gx#stx-pair? _%hd5164952672%_)
                                      (let ((_%e5181151963%_
                                             (gx#syntax-e _%hd5164952672%_)))
                                        (let ((_%tl5181351970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5181151963%_)))
                                              (_%hd5181251967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5181151963%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))
                          (if (gx#stx-pair? _%hd5164952672%_)
                              (let ((_%e5181151963%_
                                     (gx#syntax-e _%hd5164952672%_)))
                                (let ((_%tl5181351970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5181151963%_)))
                                      (_%hd5181251967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5181151963%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_))))
                              (let () (declare (not safe)) (_%g5163551844%_))))
                      (if (gx#stx-pair? _%hd5164952672%_)
                          (let ((_%e5181151963%_
                                 (gx#syntax-e _%hd5164952672%_)))
                            (let ((_%tl5181351970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5181151963%_)))
                                  (_%hd5181251967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5181151963%_))))
                              (if (gx#stx-pair/null? _%tl5164752665%_)
                                  (let ((_%__splice9421094211%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5164752665%_
                                          '0)))
                                    (let ((_%tl5181651976%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '1)))
                                          (_%target5181451973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9421094211%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5181651976%_)
                                          (_%__match9449694497%_
                                           _%e5164252648%_
                                           _%hd5164352652%_
                                           _%tl5164452655%_
                                           _%e5164552658%_
                                           _%hd5164652662%_
                                           _%tl5164752665%_
                                           _%e5164852668%_
                                           _%hd5164952672%_
                                           _%tl5165052675%_
                                           _%e5181151963%_
                                           _%hd5181251967%_
                                           _%tl5181351970%_
                                           _%__splice9421094211%_
                                           _%target5181451973%_
                                           _%tl5181651976%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5163551844%_)))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5164952672%_)
                                                      (let ((_%e5181151963%_
                                                             (gx#syntax-e
                                                              _%hd5164952672%_)))
                                                        (let ((_%tl5181351970%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5181151963%_)))
                      (_%hd5181251967%_
                       (let () (declare (not safe)) (##car _%e5181151963%_))))
                  (if (gx#stx-pair/null? _%tl5164752665%_)
                      (let ((_%__splice9421094211%_
                             (gx#syntax-split-splice->vector
                              _%tl5164752665%_
                              '0)))
                        (let ((_%tl5181651976%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '1)))
                              (_%target5181451973%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9421094211%_ '0))))
                          (if (gx#stx-null? _%tl5181651976%_)
                              (_%__match9449694497%_
                               _%e5164252648%_
                               _%hd5164352652%_
                               _%tl5164452655%_
                               _%e5164552658%_
                               _%hd5164652662%_
                               _%tl5164752665%_
                               _%e5164852668%_
                               _%hd5164952672%_
                               _%tl5165052675%_
                               _%e5181151963%_
                               _%hd5181251967%_
                               _%tl5181351970%_
                               _%__splice9421094211%_
                               _%target5181451973%_
                               _%tl5181651976%_)
                              (let ()
                                (declare (not safe))
                                (_%g5163551844%_)))))
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5164952672%_)
                                              (let ((_%e5181151963%_
                                                     (gx#syntax-e
                                                      _%hd5164952672%_)))
                                                (let ((_%tl5181351970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5181151963%_)))
                                                      (_%hd5181251967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5181151963%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5164752665%_)
                                                      (let ((_%__splice9421094211%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5164752665%_
                                                              '0)))
                                                        (let ((_%tl5181651976%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '1)))
                      (_%target5181451973%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9421094211%_ '0))))
                  (if (gx#stx-null? _%tl5181651976%_)
                      (_%__match9449694497%_
                       _%e5164252648%_
                       _%hd5164352652%_
                       _%tl5164452655%_
                       _%e5164552658%_
                       _%hd5164652662%_
                       _%tl5164752665%_
                       _%e5164852668%_
                       _%hd5164952672%_
                       _%tl5165052675%_
                       _%e5181151963%_
                       _%hd5181251967%_
                       _%tl5181351970%_
                       _%__splice9421094211%_
                       _%target5181451973%_
                       _%tl5181651976%_)
                      (let () (declare (not safe)) (_%g5163551844%_)))))
              (let () (declare (not safe)) (_%g5163551844%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5163551844%_))))))
                                  (if (gx#stx-null? _%hd5164652662%_)
                                      (if (gx#stx-pair/null? _%tl5164752665%_)
                                          (let ((_%__splice9421494215%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5164752665%_
                                                  '0)))
                                            (let ((_%tl5183251874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9421494215%_
                                                      '1)))
                                                  (_%target5183051871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9421494215%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5183251874%_)
                                                  (_%__match9451894519%_
                                                   _%e5164252648%_
                                                   _%hd5164352652%_
                                                   _%tl5164452655%_
                                                   _%e5164552658%_
                                                   _%hd5164652662%_
                                                   _%tl5164752665%_
                                                   _%__splice9421494215%_
                                                   _%target5183051871%_
                                                   _%tl5183251874%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5163551844%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5163551844%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5163551844%_))))))
                          (let () (declare (not safe)) (_%g5163551844%_)))))
                  (let () (declare (not safe)) (_%g5163551844%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx52804%_)
        (let* ((_%g5280852842%_
                (lambda (_%g5280952838%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5280952838%_)))
               (_%g5280752963%_
                (lambda (_%g5280952846%_)
                  (if (gx#stx-pair? _%g5280952846%_)
                      (let ((_%e5281352849%_ (gx#syntax-e _%g5280952846%_)))
                        (let ((_%hd5281452853%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5281352849%_)))
                              (_%tl5281552856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5281352849%_))))
                          (if (gx#stx-pair? _%tl5281552856%_)
                              (let ((_%e5281652859%_
                                     (gx#syntax-e _%tl5281552856%_)))
                                (let ((_%hd5281752863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5281652859%_)))
                                      (_%tl5281852866%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5281652859%_))))
                                  (if (gx#stx-pair? _%hd5281752863%_)
                                      (let ((_%e5281952869%_
                                             (gx#syntax-e _%hd5281752863%_)))
                                        (let ((_%hd5282052873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5281952869%_)))
                                              (_%tl5282152876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5281952869%_))))
                                          (if (gx#stx-pair? _%tl5282152876%_)
                                              (let ((_%e5282252879%_
                                                     (gx#syntax-e
                                                      _%tl5282152876%_)))
                                                (let ((_%hd5282352883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5282252879%_)))
                                                      (_%tl5282452886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5282252879%_))))
                                                  (if (gx#identifier?
                                                       _%hd5282352883%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100856_|
                                                           _%hd5282352883%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5282452886%_)
                                                              (let ((_%e5282552889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5282452886%_)))
                        (let ((_%hd5282652893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5282552889%_)))
                              (_%tl5282752896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5282552889%_))))
                          (if (gx#stx-null? _%tl5282752896%_)
                              (if (gx#stx-pair/null? _%tl5281852866%_)
                                  (let ((_g100857_
                                         (gx#syntax-split-splice
                                          _%tl5281852866%_
                                          '0)))
                                    (begin
                                      (let ((_g100858_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g100857_)
                                                   (##values-length _g100857_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g100858_ 2)))
                                            (error "Context expects 2 values"
                                                   _g100858_)))
                                      (let ((_%target5282852899%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100857_ 0)))
                                            (_%tl5283052902%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g100857_ 1))))
                                        (if (gx#stx-null? _%tl5283052902%_)
                                            (letrec ((_%loop5283152905%_
                                                      (lambda (_%hd5282952909%_
                                                               _%body5283552912%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5282952909%_)
                                                            (let ((_%e5283252914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5282952909%_)))
                      (let ((_%lp-hd5283352918%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5283252914%_)))
                            (_%lp-tl5283452921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5283252914%_))))
                        (_%loop5283152905%_
                         _%lp-tl5283452921%_
                         (cons _%lp-hd5283352918%_ _%body5283552912%_))))
                    (let ((_%body5283652924%_ (reverse _%body5283552912%_)))
                      ((lambda (_%g5281052927%_
                                _%g5281152929%_
                                _%g5281252930%_)
                         (if (gx#identifier? _%g5281252930%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g5281152929%_
                                               (cons _%g5281252930%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g5295452957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g5295552960%_)
                            (cons _%g5295452957%_ _%g5295552960%_))
                          '()
                          _%g5281052927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g5281252930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5281152929%_ (cons _%g5281252930%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g5280852842%_ _%g5280952846%_)))
                       _%body5283652924%_
                       _%hd5282652893%_
                       _%hd5282052873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5283152905%_
                                               _%target5282852899%_
                                               '()))
                                            (_%g5280852842%_
                                             _%g5280952846%_)))))
                                  (_%g5280852842%_ _%g5280952846%_))
                              (_%g5280852842%_ _%g5280952846%_))))
                      (_%g5280852842%_ _%g5280952846%_))
                  (_%g5280852842%_ _%g5280952846%_))
              (_%g5280852842%_ _%g5280952846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5280852842%_
                                               _%g5280952846%_))))
                                      (_%g5280852842%_ _%g5280952846%_))))
                              (_%g5280852842%_ _%g5280952846%_))))
                      (_%g5280852842%_ _%g5280952846%_)))))
          (_%g5280752963%_ _%$stx52804%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass53721%_ _%slot53723%_)
        (let ((_%$e53725%_
               (let ((__obj100653 _%klass53721%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100653
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100653 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100653
                      'slot-types)))))
          (if _%$e53725%_
              ((lambda (_%slot-types53729%_)
                 (agetq _%slot53723%_ _%slot-types53729%_))
               _%$e53725%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass53702%_ _%slot53704%_)
        (let ((_%$e53706%_
               (let ((__obj100654 _%klass53702%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100654
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100654 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100654
                      'slot-defaults)))))
          (if _%$e53706%_
              ((lambda (_%slot-defaults53710%_)
                 (let ((_%$e53713%_
                        (agetq _%slot53704%_ _%slot-defaults53710%_)))
                   (if _%$e53713%_
                       (gx#syntax-local-introduce _%$e53713%_)
                       '#f)))
               _%$e53706%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass53683%_ _%slot53685%_)
        (let ((_%$e53687%_
               (let ((__obj100655 _%klass53683%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj100655
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj100655 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj100655
                      'slot-defaults)))))
          (if _%$e53687%_
              ((lambda (_%slot-defaults53691%_)
                 (let ((_%$e53694%_
                        (agetq _%slot53685%_ _%slot-defaults53691%_)))
                   (if _%$e53694%_
                       (gx#syntax-local-introduce _%$e53694%_)
                       '#f)))
               _%$e53687%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53452%_ _%slot53454%_)
        (let ((_%contract5345553457%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53452%_
                _%slot53454%_)))
          (if _%contract5345553457%_
              (let* ((_%contract53460%_ _%contract5345553457%_)
                     (_%__stx9452194522%_ _%contract53460%_)
                     (_%g5346553502%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9452194522%_))))
                (let ((_%__kont9452494525%_
                       (lambda (_%g5346753652%_ _%g5346853654%_)
                         (not (gx#free-identifier=?
                               _%g5346853654%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9452694527%_
                       (lambda (_%g5347553592%_
                                _%g5347653594%_
                                _%g5347753595%_)
                         (not (gx#free-identifier=?
                               _%g5347653594%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9452894529%_ (lambda (_%g5349053529%_) '#f)))
                  (let* ((_%__match9457494575%_
                          (lambda (_%e5347853552%_
                                   _%hd5347953556%_
                                   _%tl5348053559%_
                                   _%e5348153562%_
                                   _%hd5348253566%_
                                   _%tl5348353569%_
                                   _%e5348453572%_
                                   _%hd5348553576%_
                                   _%tl5348653579%_
                                   _%e5348753582%_
                                   _%hd5348853586%_
                                   _%tl5348953589%_)
                            (let ((_%g5347553592%_ _%hd5348853586%_)
                                  (_%g5347653594%_ _%hd5348553576%_)
                                  (_%g5347753595%_ _%hd5348253566%_))
                              (if (and (gx#identifier? _%g5347653594%_)
                                       (or (gx#free-identifier=?
                                            _%g5347653594%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5347653594%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5347653594%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5347653594%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9452694527%_
                                   _%g5347553592%_
                                   _%g5347653594%_
                                   _%g5347753595%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5346553502%_))))))
                         (_%__match9454494545%_
                          (lambda (_%e5346953632%_
                                   _%hd5347053636%_
                                   _%tl5347153639%_
                                   _%e5347253642%_
                                   _%hd5347353646%_
                                   _%tl5347453649%_)
                            (let ((_%g5346753652%_ _%hd5347353646%_)
                                  (_%g5346853654%_ _%hd5347053636%_))
                              (if (and (gx#identifier? _%g5346853654%_)
                                       (or (gx#free-identifier=?
                                            _%g5346853654%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5346853654%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5346853654%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5346853654%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9452494525%_
                                   _%g5346753652%_
                                   _%g5346853654%_)
                                  (if (gx#identifier? _%hd5347053636%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100859_|
                                           _%hd5347053636%_)
                                          (_%__kont9452894529%_
                                           _%hd5347353646%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5346553502%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5346553502%_))))))))
                    (if (gx#stx-pair? _%__stx9452194522%_)
                        (let ((_%e5346953632%_
                               (gx#syntax-e _%__stx9452194522%_)))
                          (let ((_%tl5347153639%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5346953632%_)))
                                (_%hd5347053636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5346953632%_))))
                            (if (gx#stx-pair? _%tl5347153639%_)
                                (let ((_%e5347253642%_
                                       (gx#syntax-e _%tl5347153639%_)))
                                  (let ((_%tl5347453649%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5347253642%_)))
                                        (_%hd5347353646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5347253642%_))))
                                    (if (gx#stx-null? _%tl5347453649%_)
                                        (_%__match9454494545%_
                                         _%e5346953632%_
                                         _%hd5347053636%_
                                         _%tl5347153639%_
                                         _%e5347253642%_
                                         _%hd5347353646%_
                                         _%tl5347453649%_)
                                        (if (gx#identifier? _%hd5347053636%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100859_|
                                                 _%hd5347053636%_)
                                                (if (gx#stx-pair?
                                                     _%tl5347453649%_)
                                                    (let ((_%e5348453572%_
                                                           (gx#syntax-e
                                                            _%tl5347453649%_)))
                                                      (let ((_%tl5348653579%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5348453572%_)))
                    (_%hd5348553576%_
                     (let () (declare (not safe)) (##car _%e5348453572%_))))
                (if (gx#stx-pair? _%tl5348653579%_)
                    (let ((_%e5348753582%_ (gx#syntax-e _%tl5348653579%_)))
                      (let ((_%tl5348953589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5348753582%_)))
                            (_%hd5348853586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5348753582%_))))
                        (if (gx#stx-null? _%tl5348953589%_)
                            (_%__match9457494575%_
                             _%e5346953632%_
                             _%hd5347053636%_
                             _%tl5347153639%_
                             _%e5347253642%_
                             _%hd5347353646%_
                             _%tl5347453649%_
                             _%e5348453572%_
                             _%hd5348553576%_
                             _%tl5348653579%_
                             _%e5348753582%_
                             _%hd5348853586%_
                             _%tl5348953589%_)
                            (let () (declare (not safe)) (_%g5346553502%_)))))
                    (let () (declare (not safe)) (_%g5346553502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5346553502%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5346553502%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5346553502%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5346553502%_)))))
                        (let () (declare (not safe)) (_%g5346553502%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53221%_ _%slot53223%_)
        (let ((_%contract5322453226%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53221%_
                _%slot53223%_)))
          (if _%contract5322453226%_
              (let* ((_%contract53229%_ _%contract5322453226%_)
                     (_%__stx9459594596%_ _%contract53229%_)
                     (_%g5323453271%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9459594596%_))))
                (let ((_%__kont9459894599%_
                       (lambda (_%g5323653421%_ _%g5323753423%_)
                         (not (gx#free-identifier=?
                               _%g5323753423%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9460094601%_
                       (lambda (_%g5324453361%_
                                _%g5324553363%_
                                _%g5324653364%_)
                         '#t))
                      (_%__kont9460294603%_ (lambda (_%g5325953298%_) '#t)))
                  (let* ((_%__match9464894649%_
                          (lambda (_%e5324753321%_
                                   _%hd5324853325%_
                                   _%tl5324953328%_
                                   _%e5325053331%_
                                   _%hd5325153335%_
                                   _%tl5325253338%_
                                   _%e5325353341%_
                                   _%hd5325453345%_
                                   _%tl5325553348%_
                                   _%e5325653351%_
                                   _%hd5325753355%_
                                   _%tl5325853358%_)
                            (let ((_%g5324453361%_ _%hd5325753355%_)
                                  (_%g5324553363%_ _%hd5325453345%_)
                                  (_%g5324653364%_ _%hd5325153335%_))
                              (if (and (gx#identifier? _%g5324553363%_)
                                       (or (gx#free-identifier=?
                                            _%g5324553363%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5324553363%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5324553363%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5324553363%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9460094601%_
                                   _%g5324453361%_
                                   _%g5324553363%_
                                   _%g5324653364%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5323453271%_))))))
                         (_%__match9461894619%_
                          (lambda (_%e5323853401%_
                                   _%hd5323953405%_
                                   _%tl5324053408%_
                                   _%e5324153411%_
                                   _%hd5324253415%_
                                   _%tl5324353418%_)
                            (let ((_%g5323653421%_ _%hd5324253415%_)
                                  (_%g5323753423%_ _%hd5323953405%_))
                              (if (and (gx#identifier? _%g5323753423%_)
                                       (or (gx#free-identifier=?
                                            _%g5323753423%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5323753423%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5323753423%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5323753423%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9459894599%_
                                   _%g5323653421%_
                                   _%g5323753423%_)
                                  (if (gx#identifier? _%hd5323953405%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g100860_|
                                           _%hd5323953405%_)
                                          (_%__kont9460294603%_
                                           _%hd5324253415%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5323453271%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5323453271%_))))))))
                    (if (gx#stx-pair? _%__stx9459594596%_)
                        (let ((_%e5323853401%_
                               (gx#syntax-e _%__stx9459594596%_)))
                          (let ((_%tl5324053408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5323853401%_)))
                                (_%hd5323953405%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5323853401%_))))
                            (if (gx#stx-pair? _%tl5324053408%_)
                                (let ((_%e5324153411%_
                                       (gx#syntax-e _%tl5324053408%_)))
                                  (let ((_%tl5324353418%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5324153411%_)))
                                        (_%hd5324253415%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5324153411%_))))
                                    (if (gx#stx-null? _%tl5324353418%_)
                                        (_%__match9461894619%_
                                         _%e5323853401%_
                                         _%hd5323953405%_
                                         _%tl5324053408%_
                                         _%e5324153411%_
                                         _%hd5324253415%_
                                         _%tl5324353418%_)
                                        (if (gx#identifier? _%hd5323953405%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g100860_|
                                                 _%hd5323953405%_)
                                                (if (gx#stx-pair?
                                                     _%tl5324353418%_)
                                                    (let ((_%e5325353341%_
                                                           (gx#syntax-e
                                                            _%tl5324353418%_)))
                                                      (let ((_%tl5325553348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5325353341%_)))
                    (_%hd5325453345%_
                     (let () (declare (not safe)) (##car _%e5325353341%_))))
                (if (gx#stx-pair? _%tl5325553348%_)
                    (let ((_%e5325653351%_ (gx#syntax-e _%tl5325553348%_)))
                      (let ((_%tl5325853358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5325653351%_)))
                            (_%hd5325753355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5325653351%_))))
                        (if (gx#stx-null? _%tl5325853358%_)
                            (_%__match9464894649%_
                             _%e5323853401%_
                             _%hd5323953405%_
                             _%tl5324053408%_
                             _%e5324153411%_
                             _%hd5324253415%_
                             _%tl5324353418%_
                             _%e5325353341%_
                             _%hd5325453345%_
                             _%tl5325553348%_
                             _%e5325653351%_
                             _%hd5325753355%_
                             _%tl5325853358%_)
                            (let () (declare (not safe)) (_%g5323453271%_)))))
                    (let () (declare (not safe)) (_%g5323453271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5323453271%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5323453271%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5323453271%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5323453271%_)))))
                        (let () (declare (not safe)) (_%g5323453271%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53208%_)
        (if (gx#identifier? _%id53208%_)
            (let* ((_%str53211%_ (symbol->string (gx#stx-e _%id53208%_)))
                   (_%index5321353215%_ (string-index _%str53211%_ '#\.)))
              (if _%index5321353215%_
                  (let ((_%index53218%_ _%index5321353215%_))
                    (if (let () (declare (not safe)) (##fx> _%index53218%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53211%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53201%_ _%id53203%_)
        (let ((_%parts53205%_
               (string-split (symbol->string (gx#stx-e _%id53203%_)) '#\.)))
          (if (find string-empty? _%parts53205%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53201%_
               _%id53203%_)
              (cons (gx#stx-identifier _%id53203%_ (car _%parts53205%_))
                    (map string->symbol (cdr _%parts53205%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53087%_ _%klass-or-id53089%_ _%slot53090%_)
        (let* ((_%klass53092%_
                (if (gx#identifier? _%klass-or-id53089%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53087%_
                       _%klass-or-id53089%_))
                    _%klass-or-id53089%_))
               (_%$e53097%_
                (agetq _%slot53090%_
                       (let ((__obj100656 _%klass53092%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100656
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100656
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj100656
                              'unchecked-accessors))))))
          (if _%$e53097%_
              _%$e53097%_
              (let ((_%$e53105%_
                     (agetq _%slot53090%_
                            (let ((_%$e53101%_
                                   (let ((__obj100657 _%klass53092%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100657
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100657
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100657
                                          'slot-offsets)))))
                              (if _%$e53101%_ _%$e53101%_ '())))))
                (if _%$e53105%_
                    ((lambda (_%offset53109%_)
                       (let* ((_%g5311253131%_
                               (lambda (_%g5311353127%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5311353127%_)))
                              (_%g5311153195%_
                               (lambda (_%g5311353135%_)
                                 (if (gx#stx-pair? _%g5311353135%_)
                                     (let ((_%e5311753138%_
                                            (gx#syntax-e _%g5311353135%_)))
                                       (let ((_%hd5311853142%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5311753138%_)))
                                             (_%tl5311953145%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5311753138%_))))
                                         (if (gx#stx-pair? _%tl5311953145%_)
                                             (let ((_%e5312053148%_
                                                    (gx#syntax-e
                                                     _%tl5311953145%_)))
                                               (let ((_%hd5312153152%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5312053148%_)))
                                                     (_%tl5312253155%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5312053148%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5312253155%_)
                                                     (let ((_%e5312353158%_
                                                            (gx#syntax-e
                                                             _%tl5312253155%_)))
                                                       (let ((_%hd5312453162%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5312353158%_)))
                     (_%tl5312553165%_
                      (let () (declare (not safe)) (##cdr _%e5312353158%_))))
                 (if (gx#stx-null? _%tl5312553165%_)
                     ((lambda (_%g5311453168%_ _%g5311553170%_ _%g5311653171%_)
                        (gx#stx-wrap-source
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##unchecked-structure-ref)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       (cons _%g5311453168%_
                                                             (cons _%g5311653171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g5311553170%_ '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx53087%_)))
                      _%hd5312453162%_
                      _%hd5312153152%_
                      _%hd5311853142%_)
                     (_%g5311253131%_ _%g5311353135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5311253131%_
                                                      _%g5311353135%_))))
                                             (_%g5311253131%_
                                              _%g5311353135%_))))
                                     (_%g5311253131%_ _%g5311353135%_)))))
                         (_%g5311153195%_
                          (list (let ((__obj100658 _%klass53092%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100658
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100658
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100658
                                       'type-descriptor)))
                                _%slot53090%_
                                _%offset53109%_))))
                     _%$e53105%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53087%_
                     _%klass53092%_
                     _%slot53090%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx52968%_
               _%klass-or-id52970%_
               _%slot52971%_
               _%checked?52972%_)
        (let* ((_%klass52974%_
                (if (gx#identifier? _%klass-or-id52970%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx52968%_
                       _%klass-or-id52970%_))
                    _%klass-or-id52970%_))
               (_%mutators52977%_
                (if _%checked?52972%_
                    (let ((__obj100659 _%klass52974%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100659
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100659
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100659
                           'mutators)))
                    (let ((__obj100660 _%klass52974%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj100660
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj100660
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj100660
                           'unchecked-mutators)))))
               (_%$e52982%_ (agetq _%slot52971%_ _%mutators52977%_)))
          (if _%$e52982%_
              _%$e52982%_
              (let ((_%$e52990%_
                     (agetq _%slot52971%_
                            (let ((_%$e52986%_
                                   (let ((__obj100661 _%klass52974%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj100661
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj100661
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj100661
                                          'slot-offsets)))))
                              (if _%$e52986%_ _%$e52986%_ '())))))
                (if _%$e52990%_
                    ((lambda (_%offset52994%_)
                       (let* ((_%g5299753016%_
                               (lambda (_%g5299853012%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5299853012%_)))
                              (_%g5299653081%_
                               (lambda (_%g5299853020%_)
                                 (if (gx#stx-pair? _%g5299853020%_)
                                     (let ((_%e5300253023%_
                                            (gx#syntax-e _%g5299853020%_)))
                                       (let ((_%hd5300353027%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5300253023%_)))
                                             (_%tl5300453030%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5300253023%_))))
                                         (if (gx#stx-pair? _%tl5300453030%_)
                                             (let ((_%e5300553033%_
                                                    (gx#syntax-e
                                                     _%tl5300453030%_)))
                                               (let ((_%hd5300653037%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5300553033%_)))
                                                     (_%tl5300753040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5300553033%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5300753040%_)
                                                     (let ((_%e5300853043%_
                                                            (gx#syntax-e
                                                             _%tl5300753040%_)))
                                                       (let ((_%hd5300953047%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5300853043%_)))
                     (_%tl5301053050%_
                      (let () (declare (not safe)) (##cdr _%e5300853043%_))))
                 (if (gx#stx-null? _%tl5301053050%_)
                     ((lambda (_%g5299953053%_ _%g5300053055%_ _%g5300153056%_)
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
                                                             (cons _%g5299953053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g5300153056%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g5300053055%_ '()))
                                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (gx#stx-source _%stx52968%_)))
                      _%hd5300953047%_
                      _%hd5300653037%_
                      _%hd5300353027%_)
                     (_%g5299753016%_ _%g5299853020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5299753016%_
                                                      _%g5299853020%_))))
                                             (_%g5299753016%_
                                              _%g5299853020%_))))
                                     (_%g5299753016%_ _%g5299853020%_)))))
                         (_%g5299653081%_
                          (list (let ((__obj100662 _%klass52974%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100662
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100662
                                         '3
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/mop~MOP-2#runtime-type-info::t
                                       __obj100662
                                       'type-descriptor)))
                                _%slot52971%_
                                _%offset52994%_))))
                     _%$e52990%_)
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx52968%_
                     _%klass52974%_
                     _%slot52971%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx53734%_)
        (letrec ((_%expand-body53737%_
                  (lambda (_%klass54635%_
                           _%var54637%_
                           _%Type54638%_
                           _%body54639%_
                           _%checked?54640%_)
                    (let* ((_%g5464254686%_
                            (lambda (_%g5464354682%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5464354682%_)))
                           (_%g5464154841%_
                            (lambda (_%g5464354690%_)
                              (if (gx#stx-pair? _%g5464354690%_)
                                  (let ((_%e5465154693%_
                                         (gx#syntax-e _%g5464354690%_)))
                                    (let ((_%hd5465254697%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5465154693%_)))
                                          (_%tl5465354700%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5465154693%_))))
                                      (if (gx#stx-pair? _%tl5465354700%_)
                                          (let ((_%e5465454703%_
                                                 (gx#syntax-e
                                                  _%tl5465354700%_)))
                                            (let ((_%hd5465554707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5465454703%_)))
                                                  (_%tl5465654710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5465454703%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5465654710%_)
                                                  (let ((_%e5465754713%_
                                                         (gx#syntax-e
                                                          _%tl5465654710%_)))
                                                    (let ((_%hd5465854717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5465754713%_)))
                                                          (_%tl5465954720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5465754713%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5465954720%_)
                                                          (let ((_%e5466054723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5465954720%_)))
                    (let ((_%hd5466154727%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5466054723%_)))
                          (_%tl5466254730%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5466054723%_))))
                      (if (gx#stx-pair? _%tl5466254730%_)
                          (let ((_%e5466354733%_
                                 (gx#syntax-e _%tl5466254730%_)))
                            (let ((_%hd5466454737%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5466354733%_)))
                                  (_%tl5466554740%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5466354733%_))))
                              (if (gx#stx-pair? _%tl5466554740%_)
                                  (let ((_%e5466654743%_
                                         (gx#syntax-e _%tl5466554740%_)))
                                    (let ((_%hd5466754747%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5466654743%_)))
                                          (_%tl5466854750%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5466654743%_))))
                                      (if (gx#stx-pair? _%tl5466854750%_)
                                          (let ((_%e5466954753%_
                                                 (gx#syntax-e
                                                  _%tl5466854750%_)))
                                            (let ((_%hd5467054757%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5466954753%_)))
                                                  (_%tl5467154760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5466954753%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5467054757%_)
                                                  (let ((_g100861_
                                                         (gx#syntax-split-splice
                                                          _%hd5467054757%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100862_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100861_)
                           (##values-length _g100861_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100862_ 2)))
                    (error "Context expects 2 values" _g100862_)))
              (let ((_%target5467254763%_
                     (let () (declare (not safe)) (##values-ref _g100861_ 0)))
                    (_%tl5467454766%_
                     (let () (declare (not safe)) (##values-ref _g100861_ 1))))
                (if (gx#stx-null? _%tl5467454766%_)
                    (letrec ((_%loop5467554769%_
                              (lambda (_%hd5467354773%_ _%body5467954776%_)
                                (if (gx#stx-pair? _%hd5467354773%_)
                                    (let ((_%e5467654778%_
                                           (gx#syntax-e _%hd5467354773%_)))
                                      (let ((_%lp-hd5467754782%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5467654778%_)))
                                            (_%lp-tl5467854785%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5467654778%_))))
                                        (_%loop5467554769%_
                                         _%lp-tl5467854785%_
                                         (cons _%lp-hd5467754782%_
                                               _%body5467954776%_))))
                                    (let ((_%body5468054788%_
                                           (reverse _%body5467954776%_)))
                                      (if (gx#stx-null? _%tl5467154760%_)
                                          ((lambda (_%g5464454791%_
                                                    _%g5464554793%_
                                                    _%g5464654794%_
                                                    _%g5464754795%_
                                                    _%g5464854796%_
                                                    _%g5464954797%_
                                                    _%g5465054798%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5464854796%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5464954797%_ '()))
                                         (cons _%g5464854796%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5465054798%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5464854796%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5464754795%_ '()))
                               (cons _%g5464654794%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5464554793%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5483254835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5483354838%_)
                      (cons _%g5483254835%_ _%g5483354838%_))
                    '()
                    _%g5464454791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5468054788%_
                                           _%hd5466754747%_
                                           _%hd5466454737%_
                                           _%hd5466154727%_
                                           _%hd5465854717%_
                                           _%hd5465554707%_
                                           _%hd5465254697%_)
                                          (_%g5464254686%_
                                           _%g5464354690%_)))))))
                      (_%loop5467554769%_ _%target5467254763%_ '()))
                    (_%g5464254686%_ _%g5464354690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5464254686%_
                                                   _%g5464354690%_))))
                                          (_%g5464254686%_ _%g5464354690%_))))
                                  (_%g5464254686%_ _%g5464354690%_))))
                          (_%g5464254686%_ _%g5464354690%_))))
                  (_%g5464254686%_ _%g5464354690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5464254686%_
                                                   _%g5464354690%_))))
                                          (_%g5464254686%_ _%g5464354690%_))))
                                  (_%g5464254686%_ _%g5464354690%_)))))
                      (_%g5464154841%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj100663 _%klass54635%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100663
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100663
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj100663
                                    'type-descriptor)))
                             _%var54637%_
                             _%klass54635%_
                             _%checked?54640%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body54639%_)))))
                 (_%expand53739%_
                  (lambda (_%var54527%_
                           _%Type54529%_
                           _%body54530%_
                           _%checked?54531%_
                           _%checked-mutators?54532%_
                           _%maybe?54533%_)
                    (let* ((_%klass54535%_
                            (gx#syntax-local-value _%Type54529%_ false))
                           (_%expr-body54542%_
                            (_%expand-body53737%_
                             _%klass54535%_
                             _%var54527%_
                             _%Type54529%_
                             _%body54530%_
                             (let ((_%$e54538%_ _%checked?54531%_))
                               (if _%$e54538%_
                                   _%$e54538%_
                                   _%checked-mutators?54532%_)))))
                      (if _%checked?54531%_
                          (let* ((_%g5454754566%_
                                  (lambda (_%g5454854562%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5454854562%_)))
                                 (_%g5454654628%_
                                  (lambda (_%g5454854570%_)
                                    (if (gx#stx-pair? _%g5454854570%_)
                                        (let ((_%e5455254573%_
                                               (gx#syntax-e _%g5454854570%_)))
                                          (let ((_%hd5455354577%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5455254573%_)))
                                                (_%tl5455454580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5455254573%_))))
                                            (if (gx#stx-pair? _%tl5455454580%_)
                                                (let ((_%e5455554583%_
                                                       (gx#syntax-e
                                                        _%tl5455454580%_)))
                                                  (let ((_%hd5455654587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5455554583%_)))
                                                        (_%tl5455754590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5455554583%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5455754590%_)
                                                        (let ((_%e5455854593%_
                                                               (gx#syntax-e
                                                                _%tl5455754590%_)))
                                                          (let ((_%hd5455954597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5455854593%_)))
                        (_%tl5456054600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5455854593%_))))
                    (if (gx#stx-null? _%tl5456054600%_)
                        ((lambda (_%g5454954603%_
                                  _%g5455054605%_
                                  _%g5455154606%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g5455054605%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g5455154606%_ '())))
                                       (cons _%g5454954603%_ '()))))
                         _%hd5455954597%_
                         _%hd5455654587%_
                         _%hd5455354577%_)
                        (_%g5454754566%_ _%g5454854570%_))))
                (_%g5454754566%_ _%g5454854570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5454754566%_
                                                 _%g5454854570%_))))
                                        (_%g5454754566%_ _%g5454854570%_)))))
                            (_%g5454654628%_
                             (list (let ((_%instance?54632%_
                                          (let ((__obj100664 _%klass54535%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj100664
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj100664
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj100664
                                                 'predicate)))))
                                     (if _%maybe?54533%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?54632%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?54632%_))
                                   _%var54527%_
                                   _%expr-body54542%_)))
                          _%expr-body54542%_)))))
          (let* ((_%__stx9466994670%_ _%stx53734%_)
                 (_%g5374553888%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9466994670%_))))
            (let ((_%__kont9467294673%_
                   (lambda (_%g5374754455%_
                            _%g5374854457%_
                            _%g5374954458%_
                            _%g5375054459%_)
                     (let* ((_%g5448454492%_
                             (lambda (_%g5448554488%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5448554488%_)))
                            (_%g5448354519%_
                             (lambda (_%g5448554496%_)
                               ((lambda (_%g5448654499%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g5375054459%_
                                                    (cons _%g5374954458%_
                                                          (cons _%g5448654499%_
                                                                '())))
                                              (foldr (lambda (_%g5451054513%_
                                                              _%g5451154516%_)
                                                       (cons _%g5451054513%_
                                                             _%g5451154516%_))
                                                     '()
                                                     _%g5374754455%_))))
                                _%g5448554496%_))))
                       (_%g5448354519%_
                        (let ((__obj100665
                               (gx#syntax-local-value _%g5374854457%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100665
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100665
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100665
                               'identifier)))))))
                  (_%__kont9467694677%_
                   (lambda (_%g5377554335%_ _%g5377654337%_ _%g5377754338%_)
                     (_%expand53739%_
                      _%g5377754338%_
                      _%g5377654337%_
                      (foldr (lambda (_%g5436154364%_ _%g5436254367%_)
                               (cons _%g5436154364%_ _%g5436254367%_))
                             '()
                             _%g5377554335%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9468094681%_
                   (lambda (_%g5380254215%_ _%g5380354217%_ _%g5380454218%_)
                     (_%expand53739%_
                      _%g5380454218%_
                      _%g5380354217%_
                      (foldr (lambda (_%g5424154244%_ _%g5424254247%_)
                               (cons _%g5424154244%_ _%g5424254247%_))
                             '()
                             _%g5380254215%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9468494685%_
                   (lambda (_%g5382954095%_ _%g5383054097%_ _%g5383154098%_)
                     (_%expand53739%_
                      _%g5383154098%_
                      _%g5383054097%_
                      (foldr (lambda (_%g5412154124%_ _%g5412254127%_)
                               (cons _%g5412154124%_ _%g5412254127%_))
                             '()
                             _%g5382954095%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9468894689%_
                   (lambda (_%g5385653973%_ _%g5385753975%_ _%g5385853976%_)
                     (_%expand53739%_
                      _%g5385853976%_
                      _%g5385753975%_
                      (foldr (lambda (_%g5400154004%_ _%g5400254007%_)
                               (cons _%g5400154004%_ _%g5400254007%_))
                             '()
                             _%g5385653973%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9490894909%_
                      (lambda (_%e5385953895%_
                               _%hd5386053899%_
                               _%tl5386153902%_
                               _%e5386253905%_
                               _%hd5386353909%_
                               _%tl5386453912%_
                               _%e5386553915%_
                               _%hd5386653919%_
                               _%tl5386753922%_
                               _%e5386853925%_
                               _%hd5386953929%_
                               _%tl5387053932%_
                               _%e5387153935%_
                               _%hd5387253939%_
                               _%tl5387353942%_
                               _%__splice9469094691%_
                               _%target5387453945%_
                               _%tl5387653948%_)
                        (letrec ((_%loop5387753951%_
                                  (lambda (_%hd5387553955%_ _%body5388153958%_)
                                    (if (gx#stx-pair? _%hd5387553955%_)
                                        (let ((_%e5387853960%_
                                               (gx#syntax-e _%hd5387553955%_)))
                                          (let ((_%lp-tl5388053967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5387853960%_)))
                                                (_%lp-hd5387953964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5387853960%_))))
                                            (_%loop5387753951%_
                                             _%lp-tl5388053967%_
                                             (cons _%lp-hd5387953964%_
                                                   _%body5388153958%_))))
                                        (let ((_%body5388253970%_
                                               (reverse _%body5388153958%_)))
                                          (let ((_%g5385653973%_
                                                 _%body5388253970%_)
                                                (_%g5385753975%_
                                                 _%hd5387253939%_)
                                                (_%g5385853976%_
                                                 _%hd5386653919%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5385753975%_))
                                                (_%__kont9468894689%_
                                                 _%g5385653973%_
                                                 _%g5385753975%_
                                                 _%g5385853976%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))))))))
                          (_%loop5387753951%_ _%target5387453945%_ '()))))
                     (_%__match9486494865%_
                      (lambda (_%e5383254017%_
                               _%hd5383354021%_
                               _%tl5383454024%_
                               _%e5383554027%_
                               _%hd5383654031%_
                               _%tl5383754034%_
                               _%e5383854037%_
                               _%hd5383954041%_
                               _%tl5384054044%_
                               _%e5384154047%_
                               _%hd5384254051%_
                               _%tl5384354054%_
                               _%e5384454057%_
                               _%hd5384554061%_
                               _%tl5384654064%_
                               _%__splice9468694687%_
                               _%target5384754067%_
                               _%tl5384954070%_)
                        (letrec ((_%loop5385054073%_
                                  (lambda (_%hd5384854077%_ _%body5385454080%_)
                                    (if (gx#stx-pair? _%hd5384854077%_)
                                        (let ((_%e5385154082%_
                                               (gx#syntax-e _%hd5384854077%_)))
                                          (let ((_%lp-tl5385354089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5385154082%_)))
                                                (_%lp-hd5385254086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5385154082%_))))
                                            (_%loop5385054073%_
                                             _%lp-tl5385354089%_
                                             (cons _%lp-hd5385254086%_
                                                   _%body5385454080%_))))
                                        (let ((_%body5385554092%_
                                               (reverse _%body5385454080%_)))
                                          (let ((_%g5382954095%_
                                                 _%body5385554092%_)
                                                (_%g5383054097%_
                                                 _%hd5384554061%_)
                                                (_%g5383154098%_
                                                 _%hd5383954041%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5383054097%_))
                                                (_%__kont9468494685%_
                                                 _%g5382954095%_
                                                 _%g5383054097%_
                                                 _%g5383154098%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))))))))
                          (_%loop5385054073%_ _%target5384754067%_ '()))))
                     (_%__match9482094821%_
                      (lambda (_%e5380554137%_
                               _%hd5380654141%_
                               _%tl5380754144%_
                               _%e5380854147%_
                               _%hd5380954151%_
                               _%tl5381054154%_
                               _%e5381154157%_
                               _%hd5381254161%_
                               _%tl5381354164%_
                               _%e5381454167%_
                               _%hd5381554171%_
                               _%tl5381654174%_
                               _%e5381754177%_
                               _%hd5381854181%_
                               _%tl5381954184%_
                               _%__splice9468294683%_
                               _%target5382054187%_
                               _%tl5382254190%_)
                        (letrec ((_%loop5382354193%_
                                  (lambda (_%hd5382154197%_ _%body5382754200%_)
                                    (if (gx#stx-pair? _%hd5382154197%_)
                                        (let ((_%e5382454202%_
                                               (gx#syntax-e _%hd5382154197%_)))
                                          (let ((_%lp-tl5382654209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5382454202%_)))
                                                (_%lp-hd5382554206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5382454202%_))))
                                            (_%loop5382354193%_
                                             _%lp-tl5382654209%_
                                             (cons _%lp-hd5382554206%_
                                                   _%body5382754200%_))))
                                        (let ((_%body5382854212%_
                                               (reverse _%body5382754200%_)))
                                          (let ((_%g5380254215%_
                                                 _%body5382854212%_)
                                                (_%g5380354217%_
                                                 _%hd5381854181%_)
                                                (_%g5380454218%_
                                                 _%hd5381254161%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5380354217%_))
                                                (_%__kont9468094681%_
                                                 _%g5380254215%_
                                                 _%g5380354217%_
                                                 _%g5380454218%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))))))))
                          (_%loop5382354193%_ _%target5382054187%_ '()))))
                     (_%__match9477694777%_
                      (lambda (_%e5377854257%_
                               _%hd5377954261%_
                               _%tl5378054264%_
                               _%e5378154267%_
                               _%hd5378254271%_
                               _%tl5378354274%_
                               _%e5378454277%_
                               _%hd5378554281%_
                               _%tl5378654284%_
                               _%e5378754287%_
                               _%hd5378854291%_
                               _%tl5378954294%_
                               _%e5379054297%_
                               _%hd5379154301%_
                               _%tl5379254304%_
                               _%__splice9467894679%_
                               _%target5379354307%_
                               _%tl5379554310%_)
                        (letrec ((_%loop5379654313%_
                                  (lambda (_%hd5379454317%_ _%body5380054320%_)
                                    (if (gx#stx-pair? _%hd5379454317%_)
                                        (let ((_%e5379754322%_
                                               (gx#syntax-e _%hd5379454317%_)))
                                          (let ((_%lp-tl5379954329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5379754322%_)))
                                                (_%lp-hd5379854326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5379754322%_))))
                                            (_%loop5379654313%_
                                             _%lp-tl5379954329%_
                                             (cons _%lp-hd5379854326%_
                                                   _%body5380054320%_))))
                                        (let ((_%body5380154332%_
                                               (reverse _%body5380054320%_)))
                                          (let ((_%g5377554335%_
                                                 _%body5380154332%_)
                                                (_%g5377654337%_
                                                 _%hd5379154301%_)
                                                (_%g5377754338%_
                                                 _%hd5378554281%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5377654337%_))
                                                (_%__kont9467694677%_
                                                 _%g5377554335%_
                                                 _%g5377654337%_
                                                 _%g5377754338%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))))))))
                          (_%loop5379654313%_ _%target5379354307%_ '()))))
                     (_%__match9475694757%_
                      (lambda (_%e5377854257%_
                               _%hd5377954261%_
                               _%tl5378054264%_
                               _%e5378154267%_
                               _%hd5378254271%_
                               _%tl5378354274%_
                               _%e5378454277%_
                               _%hd5378554281%_
                               _%tl5378654284%_
                               _%e5378754287%_
                               _%hd5378854291%_
                               _%tl5378954294%_)
                        (if (gx#identifier? _%hd5378854291%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100863_|
                                 _%hd5378854291%_)
                                (if (gx#stx-pair? _%tl5378954294%_)
                                    (let ((_%e5379054297%_
                                           (gx#syntax-e _%tl5378954294%_)))
                                      (let ((_%tl5379254304%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5379054297%_)))
                                            (_%hd5379154301%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5379054297%_))))
                                        (if (gx#stx-null? _%tl5379254304%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5378354274%_)
                                                (let ((_%__splice9467894679%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5378354274%_
                                                        '0)))
                                                  (let ((_%tl5379554310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9467894679%_
                                                            '1)))
                                                        (_%target5379354307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9467894679%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5379554310%_)
                                                        (_%__match9477694777%_
                                                         _%e5377854257%_
                                                         _%hd5377954261%_
                                                         _%tl5378054264%_
                                                         _%e5378154267%_
                                                         _%hd5378254271%_
                                                         _%tl5378354274%_
                                                         _%e5378454277%_
                                                         _%hd5378554281%_
                                                         _%tl5378654284%_
                                                         _%e5378754287%_
                                                         _%hd5378854291%_
                                                         _%tl5378954294%_
                                                         _%e5379054297%_
                                                         _%hd5379154301%_
                                                         _%tl5379254304%_
                                                         _%__splice9467894679%_
                                                         _%target5379354307%_
                                                         _%tl5379554310%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5374553888%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5374553888%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5374553888%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100864_|
                                     _%hd5378854291%_)
                                    (if (gx#stx-pair? _%tl5378954294%_)
                                        (let ((_%e5381754177%_
                                               (gx#syntax-e _%tl5378954294%_)))
                                          (let ((_%tl5381954184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5381754177%_)))
                                                (_%hd5381854181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5381754177%_))))
                                            (if (gx#stx-null? _%tl5381954184%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5378354274%_)
                                                    (let ((_%__splice9468294683%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5378354274%_
                                                            '0)))
                                                      (let ((_%tl5382254190%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9468294683%_ '1)))
                    (_%target5382054187%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9468294683%_ '0))))
                (if (gx#stx-null? _%tl5382254190%_)
                    (_%__match9482094821%_
                     _%e5377854257%_
                     _%hd5377954261%_
                     _%tl5378054264%_
                     _%e5378154267%_
                     _%hd5378254271%_
                     _%tl5378354274%_
                     _%e5378454277%_
                     _%hd5378554281%_
                     _%tl5378654284%_
                     _%e5378754287%_
                     _%hd5378854291%_
                     _%tl5378954294%_
                     _%e5381754177%_
                     _%hd5381854181%_
                     _%tl5381954184%_
                     _%__splice9468294683%_
                     _%target5382054187%_
                     _%tl5382254190%_)
                    (let () (declare (not safe)) (_%g5374553888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5374553888%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5374553888%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100865_|
                                         _%hd5378854291%_)
                                        (if (gx#stx-pair? _%tl5378954294%_)
                                            (let ((_%e5384454057%_
                                                   (gx#syntax-e
                                                    _%tl5378954294%_)))
                                              (let ((_%tl5384654064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5384454057%_)))
                                                    (_%hd5384554061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5384454057%_))))
                                                (if (gx#stx-null?
                                                     _%tl5384654064%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5378354274%_)
                                                        (let ((_%__splice9468694687%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5378354274%_
                                                                '0)))
                                                          (let ((_%tl5384954070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9468694687%_ '1)))
                        (_%target5384754067%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9468694687%_ '0))))
                    (if (gx#stx-null? _%tl5384954070%_)
                        (_%__match9486494865%_
                         _%e5377854257%_
                         _%hd5377954261%_
                         _%tl5378054264%_
                         _%e5378154267%_
                         _%hd5378254271%_
                         _%tl5378354274%_
                         _%e5378454277%_
                         _%hd5378554281%_
                         _%tl5378654284%_
                         _%e5378754287%_
                         _%hd5378854291%_
                         _%tl5378954294%_
                         _%e5384454057%_
                         _%hd5384554061%_
                         _%tl5384654064%_
                         _%__splice9468694687%_
                         _%target5384754067%_
                         _%tl5384954070%_)
                        (let () (declare (not safe)) (_%g5374553888%_)))))
                (let () (declare (not safe)) (_%g5374553888%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5374553888%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5374553888%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100866_|
                                             _%hd5378854291%_)
                                            (if (gx#stx-pair? _%tl5378954294%_)
                                                (let ((_%e5387153935%_
                                                       (gx#syntax-e
                                                        _%tl5378954294%_)))
                                                  (let ((_%tl5387353942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5387153935%_)))
                                                        (_%hd5387253939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5387153935%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5387353942%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5378354274%_)
                                                            (let ((_%__splice9469094691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5378354274%_
                            '0)))
                      (let ((_%tl5387653948%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9469094691%_ '1)))
                            (_%target5387453945%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9469094691%_ '0))))
                        (if (gx#stx-null? _%tl5387653948%_)
                            (_%__match9490894909%_
                             _%e5377854257%_
                             _%hd5377954261%_
                             _%tl5378054264%_
                             _%e5378154267%_
                             _%hd5378254271%_
                             _%tl5378354274%_
                             _%e5378454277%_
                             _%hd5378554281%_
                             _%tl5378654284%_
                             _%e5378754287%_
                             _%hd5378854291%_
                             _%tl5378954294%_
                             _%e5387153935%_
                             _%hd5387253939%_
                             _%tl5387353942%_
                             _%__splice9469094691%_
                             _%target5387453945%_
                             _%tl5387653948%_)
                            (let () (declare (not safe)) (_%g5374553888%_)))))
                    (let () (declare (not safe)) (_%g5374553888%_)))
                (let () (declare (not safe)) (_%g5374553888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5374553888%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5374553888%_))))))
                            (let () (declare (not safe)) (_%g5374553888%_)))))
                     (_%__match9473294733%_
                      (lambda (_%e5375154377%_
                               _%hd5375254381%_
                               _%tl5375354384%_
                               _%e5375454387%_
                               _%hd5375554391%_
                               _%tl5375654394%_
                               _%e5375754397%_
                               _%hd5375854401%_
                               _%tl5375954404%_
                               _%e5376054407%_
                               _%hd5376154411%_
                               _%tl5376254414%_
                               _%e5376354417%_
                               _%hd5376454421%_
                               _%tl5376554424%_
                               _%__splice9467494675%_
                               _%target5376654427%_
                               _%tl5376854430%_)
                        (letrec ((_%loop5376954433%_
                                  (lambda (_%hd5376754437%_ _%body5377354440%_)
                                    (if (gx#stx-pair? _%hd5376754437%_)
                                        (let ((_%e5377054442%_
                                               (gx#syntax-e _%hd5376754437%_)))
                                          (let ((_%lp-tl5377254449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5377054442%_)))
                                                (_%lp-hd5377154446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5377054442%_))))
                                            (_%loop5376954433%_
                                             _%lp-tl5377254449%_
                                             (cons _%lp-hd5377154446%_
                                                   _%body5377354440%_))))
                                        (let ((_%body5377454452%_
                                               (reverse _%body5377354440%_)))
                                          (let ((_%g5374754455%_
                                                 _%body5377454452%_)
                                                (_%g5374854457%_
                                                 _%hd5376454421%_)
                                                (_%g5374954458%_
                                                 _%hd5376154411%_)
                                                (_%g5375054459%_
                                                 _%hd5375854401%_))
                                            (if (let ((__tmp100867
                                                       (gx#syntax-local-value
                                                        _%g5374854457%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100867))
                                                (_%__kont9467294673%_
                                                 _%g5374754455%_
                                                 _%g5374854457%_
                                                 _%g5374954458%_
                                                 _%g5375054459%_)
                                                (_%__match9475694757%_
                                                 _%e5375154377%_
                                                 _%hd5375254381%_
                                                 _%tl5375354384%_
                                                 _%e5375454387%_
                                                 _%hd5375554391%_
                                                 _%tl5375654394%_
                                                 _%e5375754397%_
                                                 _%hd5375854401%_
                                                 _%tl5375954404%_
                                                 _%e5376054407%_
                                                 _%hd5376154411%_
                                                 _%tl5376254414%_))))))))
                          (_%loop5376954433%_ _%target5376654427%_ '())))))
                (if (gx#stx-pair? _%__stx9466994670%_)
                    (let ((_%e5375154377%_ (gx#syntax-e _%__stx9466994670%_)))
                      (let ((_%tl5375354384%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5375154377%_)))
                            (_%hd5375254381%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5375154377%_))))
                        (if (gx#stx-pair? _%tl5375354384%_)
                            (let ((_%e5375454387%_
                                   (gx#syntax-e _%tl5375354384%_)))
                              (let ((_%tl5375654394%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5375454387%_)))
                                    (_%hd5375554391%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5375454387%_))))
                                (if (gx#stx-pair? _%hd5375554391%_)
                                    (let ((_%e5375754397%_
                                           (gx#syntax-e _%hd5375554391%_)))
                                      (let ((_%tl5375954404%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5375754397%_)))
                                            (_%hd5375854401%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5375754397%_))))
                                        (if (gx#stx-pair? _%tl5375954404%_)
                                            (let ((_%e5376054407%_
                                                   (gx#syntax-e
                                                    _%tl5375954404%_)))
                                              (let ((_%tl5376254414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5376054407%_)))
                                                    (_%hd5376154411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5376054407%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5376254414%_)
                                                    (let ((_%e5376354417%_
                                                           (gx#syntax-e
                                                            _%tl5376254414%_)))
                                                      (let ((_%tl5376554424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5376354417%_)))
                    (_%hd5376454421%_
                     (let () (declare (not safe)) (##car _%e5376354417%_))))
                (if (gx#stx-null? _%tl5376554424%_)
                    (if (gx#stx-pair/null? _%tl5375654394%_)
                        (let ((_%__splice9467494675%_
                               (gx#syntax-split-splice->vector
                                _%tl5375654394%_
                                '0)))
                          (let ((_%tl5376854430%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9467494675%_ '1)))
                                (_%target5376654427%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9467494675%_ '0))))
                            (if (gx#stx-null? _%tl5376854430%_)
                                (_%__match9473294733%_
                                 _%e5375154377%_
                                 _%hd5375254381%_
                                 _%tl5375354384%_
                                 _%e5375454387%_
                                 _%hd5375554391%_
                                 _%tl5375654394%_
                                 _%e5375754397%_
                                 _%hd5375854401%_
                                 _%tl5375954404%_
                                 _%e5376054407%_
                                 _%hd5376154411%_
                                 _%tl5376254414%_
                                 _%e5376354417%_
                                 _%hd5376454421%_
                                 _%tl5376554424%_
                                 _%__splice9467494675%_
                                 _%target5376654427%_
                                 _%tl5376854430%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5374553888%_)))))
                        (let () (declare (not safe)) (_%g5374553888%_)))
                    (let () (declare (not safe)) (_%g5374553888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5374553888%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5374553888%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5374553888%_)))))
                            (let () (declare (not safe)) (_%g5374553888%_)))))
                    (let () (declare (not safe)) (_%g5374553888%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx54851%_)
        (letrec ((_%expand-body54854%_
                  (lambda (_%var55845%_
                           _%Interface55847%_
                           _%body55848%_
                           _%checked?55849%_)
                    (let* ((_%type55851%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx54851%_
                               _%Interface55847%_)))
                           (_%g5585455898%_
                            (lambda (_%g5585555894%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5585555894%_)))
                           (_%g5585356054%_
                            (lambda (_%g5585555902%_)
                              (if (gx#stx-pair? _%g5585555902%_)
                                  (let ((_%e5586355905%_
                                         (gx#syntax-e _%g5585555902%_)))
                                    (let ((_%hd5586455909%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5586355905%_)))
                                          (_%tl5586555912%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5586355905%_))))
                                      (if (gx#stx-pair? _%tl5586555912%_)
                                          (let ((_%e5586655915%_
                                                 (gx#syntax-e
                                                  _%tl5586555912%_)))
                                            (let ((_%hd5586755919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5586655915%_)))
                                                  (_%tl5586855922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5586655915%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5586855922%_)
                                                  (let ((_%e5586955925%_
                                                         (gx#syntax-e
                                                          _%tl5586855922%_)))
                                                    (let ((_%hd5587055929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5586955925%_)))
                                                          (_%tl5587155932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5586955925%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5587155932%_)
                                                          (let ((_%e5587255935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5587155932%_)))
                    (let ((_%hd5587355939%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5587255935%_)))
                          (_%tl5587455942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5587255935%_))))
                      (if (gx#stx-pair? _%tl5587455942%_)
                          (let ((_%e5587555945%_
                                 (gx#syntax-e _%tl5587455942%_)))
                            (let ((_%hd5587655949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5587555945%_)))
                                  (_%tl5587755952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5587555945%_))))
                              (if (gx#stx-pair? _%tl5587755952%_)
                                  (let ((_%e5587855955%_
                                         (gx#syntax-e _%tl5587755952%_)))
                                    (let ((_%hd5587955959%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5587855955%_)))
                                          (_%tl5588055962%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5587855955%_))))
                                      (if (gx#stx-pair? _%tl5588055962%_)
                                          (let ((_%e5588155965%_
                                                 (gx#syntax-e
                                                  _%tl5588055962%_)))
                                            (let ((_%hd5588255969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5588155965%_)))
                                                  (_%tl5588355972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5588155965%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5588255969%_)
                                                  (let ((_g100868_
                                                         (gx#syntax-split-splice
                                                          _%hd5588255969%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g100869_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g100868_)
                           (##values-length _g100868_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100869_ 2)))
                    (error "Context expects 2 values" _g100869_)))
              (let ((_%target5588455975%_
                     (let () (declare (not safe)) (##values-ref _g100868_ 0)))
                    (_%tl5588655978%_
                     (let () (declare (not safe)) (##values-ref _g100868_ 1))))
                (if (gx#stx-null? _%tl5588655978%_)
                    (letrec ((_%loop5588755981%_
                              (lambda (_%hd5588555985%_ _%body5589155988%_)
                                (if (gx#stx-pair? _%hd5588555985%_)
                                    (let ((_%e5588855990%_
                                           (gx#syntax-e _%hd5588555985%_)))
                                      (let ((_%lp-hd5588955994%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5588855990%_)))
                                            (_%lp-tl5589055997%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5588855990%_))))
                                        (_%loop5588755981%_
                                         _%lp-tl5589055997%_
                                         (cons _%lp-hd5588955994%_
                                               _%body5589155988%_))))
                                    (let ((_%body5589256000%_
                                           (reverse _%body5589155988%_)))
                                      (if (gx#stx-null? _%tl5588355972%_)
                                          ((lambda (_%g5585656003%_
                                                    _%g5585756005%_
                                                    _%g5585856006%_
                                                    _%g5585956007%_
                                                    _%g5586056008%_
                                                    _%g5586156009%_
                                                    _%g5586256010%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g5585956007%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g5586056008%_ '()))
                                         (cons _%g5585956007%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g5586256010%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g5585956007%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g5586156009%_ '()))
                               (cons _%g5585856006%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g5585756005%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5604556048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5604656051%_)
                      (cons _%g5604556048%_ _%g5604656051%_))
                    '()
                    _%g5585656003%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5589256000%_
                                           _%hd5587955959%_
                                           _%hd5587655949%_
                                           _%hd5587355939%_
                                           _%hd5587055929%_
                                           _%hd5586755919%_
                                           _%hd5586455909%_)
                                          (_%g5585455898%_
                                           _%g5585555902%_)))))))
                      (_%loop5588755981%_ _%target5588455975%_ '()))
                    (_%g5585455898%_ _%g5585555902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5585455898%_
                                                   _%g5585555902%_))))
                                          (_%g5585455898%_ _%g5585555902%_))))
                                  (_%g5585455898%_ _%g5585555902%_))))
                          (_%g5585455898%_ _%g5585555902%_))))
                  (_%g5585455898%_ _%g5585555902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5585455898%_
                                                   _%g5585555902%_))))
                                          (_%g5585455898%_ _%g5585555902%_))))
                                  (_%g5585455898%_ _%g5585555902%_)))))
                      (_%g5585356054%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type55851%_
                             (let ((__obj100666 _%type55851%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj100666
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj100666
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj100666
                                    'type-descriptor)))
                             _%var55845%_
                             _%checked?55849%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55848%_)))))
                 (_%expand54856%_
                  (lambda (_%var55644%_
                           _%Interface55646%_
                           _%body55647%_
                           _%checked?55648%_
                           _%checked-methods?55649%_
                           _%maybe?55650%_)
                    (let* ((_%g5565255660%_
                            (lambda (_%g5565355656%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5565355656%_)))
                           (_%g5565155837%_
                            (lambda (_%g5565355664%_)
                              ((lambda (_%g5565455667%_)
                                 (if _%checked?55648%_
                                     (if _%maybe?55650%_
                                         (let* ((_%g5567955694%_
                                                 (lambda (_%g5568055690%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5568055690%_)))
                                                (_%g5567855740%_
                                                 (lambda (_%g5568055698%_)
                                                   (if (gx#stx-pair?
                                                        _%g5568055698%_)
                                                       (let ((_%e5568355701%_
                                                              (gx#syntax-e
                                                               _%g5568055698%_)))
                                                         (let ((_%hd5568455705%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5568355701%_)))
                       (_%tl5568555708%_
                        (let () (declare (not safe)) (##cdr _%e5568355701%_))))
                   (if (gx#stx-pair? _%tl5568555708%_)
                       (let ((_%e5568655711%_ (gx#syntax-e _%tl5568555708%_)))
                         (let ((_%hd5568755715%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5568655711%_)))
                               (_%tl5568855718%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5568655711%_))))
                           (if (gx#stx-null? _%tl5568855718%_)
                               ((lambda (_%g5568155721%_ _%g5568255723%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5568255723%_
                                                    (cons (cons _%g5568155721%_
                                                                (cons _%g5568255723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g5568255723%_
                                                                (cons _%g5565455667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g5568255723%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5568755715%_
                                _%hd5568455705%_)
                               (_%g5567955694%_ _%g5568055698%_))))
                       (_%g5567955694%_ _%g5568055698%_))))
               (_%g5567955694%_ _%g5568055698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5567855740%_
                                            (list _%var55644%_
                                                  _%Interface55646%_)))
                                         (let* ((_%g5574455759%_
                                                 (lambda (_%g5574555755%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5574555755%_)))
                                                (_%g5574355803%_
                                                 (lambda (_%g5574555763%_)
                                                   (if (gx#stx-pair?
                                                        _%g5574555763%_)
                                                       (let ((_%e5574855766%_
                                                              (gx#syntax-e
                                                               _%g5574555763%_)))
                                                         (let ((_%hd5574955770%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5574855766%_)))
                       (_%tl5575055773%_
                        (let () (declare (not safe)) (##cdr _%e5574855766%_))))
                   (if (gx#stx-pair? _%tl5575055773%_)
                       (let ((_%e5575155776%_ (gx#syntax-e _%tl5575055773%_)))
                         (let ((_%hd5575255780%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5575155776%_)))
                               (_%tl5575355783%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5575155776%_))))
                           (if (gx#stx-null? _%tl5575355783%_)
                               ((lambda (_%g5574655786%_ _%g5574755788%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g5574755788%_
                                                    (cons (cons _%g5574655786%_
                                                                (cons _%g5574755788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g5565455667%_ '()))))
                                _%hd5575255780%_
                                _%hd5574955770%_)
                               (_%g5574455759%_ _%g5574555763%_))))
                       (_%g5574455759%_ _%g5574555763%_))))
               (_%g5574455759%_ _%g5574555763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5574355803%_
                                            (list _%var55644%_
                                                  _%Interface55646%_))))
                                     (if _%maybe?55650%_
                                         (let* ((_%g5580755815%_
                                                 (lambda (_%g5580855811%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5580855811%_)))
                                                (_%g5580655833%_
                                                 (lambda (_%g5580855819%_)
                                                   ((lambda (_%g5580955822%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g5580955822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g5565455667%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g5580955822%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5580855819%_))))
                                           (_%g5580655833%_ _%var55644%_))
                                         _%g5565455667%_)))
                               _%g5565355664%_))))
                      (_%g5565155837%_
                       (_%expand-body54854%_
                        _%var55644%_
                        _%Interface55646%_
                        _%body55647%_
                        (let ((_%$e55841%_ _%checked?55648%_))
                          (if _%$e55841%_
                              _%$e55841%_
                              _%checked-methods?55649%_))))))))
          (let* ((_%__stx9491194912%_ _%stx54851%_)
                 (_%g5486255005%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9491194912%_))))
            (let ((_%__kont9491494915%_
                   (lambda (_%g5486455572%_
                            _%g5486555574%_
                            _%g5486655575%_
                            _%g5486755576%_)
                     (let* ((_%g5560155609%_
                             (lambda (_%g5560255605%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5560255605%_)))
                            (_%g5560055636%_
                             (lambda (_%g5560255613%_)
                               ((lambda (_%g5560355616%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g5486755576%_
                                                    (cons _%g5486655575%_
                                                          (cons _%g5560355616%_
                                                                '())))
                                              (foldr (lambda (_%g5562755630%_
                                                              _%g5562855633%_)
                                                       (cons _%g5562755630%_
                                                             _%g5562855633%_))
                                                     '()
                                                     _%g5486455572%_))))
                                _%g5560255613%_))))
                       (_%g5560055636%_
                        (let ((__obj100667
                               (gx#syntax-local-value _%g5486555574%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj100667
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj100667
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj100667
                               'identifier)))))))
                  (_%__kont9491894919%_
                   (lambda (_%g5489255452%_ _%g5489355454%_ _%g5489455455%_)
                     (_%expand54856%_
                      _%g5489455455%_
                      _%g5489355454%_
                      (foldr (lambda (_%g5547855481%_ _%g5547955484%_)
                               (cons _%g5547855481%_ _%g5547955484%_))
                             '()
                             _%g5489255452%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9492294923%_
                   (lambda (_%g5491955332%_ _%g5492055334%_ _%g5492155335%_)
                     (_%expand54856%_
                      _%g5492155335%_
                      _%g5492055334%_
                      (foldr (lambda (_%g5535855361%_ _%g5535955364%_)
                               (cons _%g5535855361%_ _%g5535955364%_))
                             '()
                             _%g5491955332%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9492694927%_
                   (lambda (_%g5494655212%_ _%g5494755214%_ _%g5494855215%_)
                     (_%expand54856%_
                      _%g5494855215%_
                      _%g5494755214%_
                      (foldr (lambda (_%g5523855241%_ _%g5523955244%_)
                               (cons _%g5523855241%_ _%g5523955244%_))
                             '()
                             _%g5494655212%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9493094931%_
                   (lambda (_%g5497355090%_ _%g5497455092%_ _%g5497555093%_)
                     (_%expand54856%_
                      _%g5497555093%_
                      _%g5497455092%_
                      (foldr (lambda (_%g5511855121%_ _%g5511955124%_)
                               (cons _%g5511855121%_ _%g5511955124%_))
                             '()
                             _%g5497355090%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9515095151%_
                      (lambda (_%e5497655012%_
                               _%hd5497755016%_
                               _%tl5497855019%_
                               _%e5497955022%_
                               _%hd5498055026%_
                               _%tl5498155029%_
                               _%e5498255032%_
                               _%hd5498355036%_
                               _%tl5498455039%_
                               _%e5498555042%_
                               _%hd5498655046%_
                               _%tl5498755049%_
                               _%e5498855052%_
                               _%hd5498955056%_
                               _%tl5499055059%_
                               _%__splice9493294933%_
                               _%target5499155062%_
                               _%tl5499355065%_)
                        (letrec ((_%loop5499455068%_
                                  (lambda (_%hd5499255072%_ _%body5499855075%_)
                                    (if (gx#stx-pair? _%hd5499255072%_)
                                        (let ((_%e5499555077%_
                                               (gx#syntax-e _%hd5499255072%_)))
                                          (let ((_%lp-tl5499755084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5499555077%_)))
                                                (_%lp-hd5499655081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5499555077%_))))
                                            (_%loop5499455068%_
                                             _%lp-tl5499755084%_
                                             (cons _%lp-hd5499655081%_
                                                   _%body5499855075%_))))
                                        (let ((_%body5499955087%_
                                               (reverse _%body5499855075%_)))
                                          (let ((_%g5497355090%_
                                                 _%body5499955087%_)
                                                (_%g5497455092%_
                                                 _%hd5498955056%_)
                                                (_%g5497555093%_
                                                 _%hd5498355036%_))
                                            (if (and (gx#identifier?
                                                      _%g5497555093%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5497455092%_)))
                                                (_%__kont9493094931%_
                                                 _%g5497355090%_
                                                 _%g5497455092%_
                                                 _%g5497555093%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))))))))
                          (_%loop5499455068%_ _%target5499155062%_ '()))))
                     (_%__match9510695107%_
                      (lambda (_%e5494955134%_
                               _%hd5495055138%_
                               _%tl5495155141%_
                               _%e5495255144%_
                               _%hd5495355148%_
                               _%tl5495455151%_
                               _%e5495555154%_
                               _%hd5495655158%_
                               _%tl5495755161%_
                               _%e5495855164%_
                               _%hd5495955168%_
                               _%tl5496055171%_
                               _%e5496155174%_
                               _%hd5496255178%_
                               _%tl5496355181%_
                               _%__splice9492894929%_
                               _%target5496455184%_
                               _%tl5496655187%_)
                        (letrec ((_%loop5496755190%_
                                  (lambda (_%hd5496555194%_ _%body5497155197%_)
                                    (if (gx#stx-pair? _%hd5496555194%_)
                                        (let ((_%e5496855199%_
                                               (gx#syntax-e _%hd5496555194%_)))
                                          (let ((_%lp-tl5497055206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5496855199%_)))
                                                (_%lp-hd5496955203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5496855199%_))))
                                            (_%loop5496755190%_
                                             _%lp-tl5497055206%_
                                             (cons _%lp-hd5496955203%_
                                                   _%body5497155197%_))))
                                        (let ((_%body5497255209%_
                                               (reverse _%body5497155197%_)))
                                          (let ((_%g5494655212%_
                                                 _%body5497255209%_)
                                                (_%g5494755214%_
                                                 _%hd5496255178%_)
                                                (_%g5494855215%_
                                                 _%hd5495655158%_))
                                            (if (and (gx#identifier?
                                                      _%g5494855215%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5494755214%_)))
                                                (_%__kont9492694927%_
                                                 _%g5494655212%_
                                                 _%g5494755214%_
                                                 _%g5494855215%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))))))))
                          (_%loop5496755190%_ _%target5496455184%_ '()))))
                     (_%__match9506295063%_
                      (lambda (_%e5492255254%_
                               _%hd5492355258%_
                               _%tl5492455261%_
                               _%e5492555264%_
                               _%hd5492655268%_
                               _%tl5492755271%_
                               _%e5492855274%_
                               _%hd5492955278%_
                               _%tl5493055281%_
                               _%e5493155284%_
                               _%hd5493255288%_
                               _%tl5493355291%_
                               _%e5493455294%_
                               _%hd5493555298%_
                               _%tl5493655301%_
                               _%__splice9492494925%_
                               _%target5493755304%_
                               _%tl5493955307%_)
                        (letrec ((_%loop5494055310%_
                                  (lambda (_%hd5493855314%_ _%body5494455317%_)
                                    (if (gx#stx-pair? _%hd5493855314%_)
                                        (let ((_%e5494155319%_
                                               (gx#syntax-e _%hd5493855314%_)))
                                          (let ((_%lp-tl5494355326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5494155319%_)))
                                                (_%lp-hd5494255323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5494155319%_))))
                                            (_%loop5494055310%_
                                             _%lp-tl5494355326%_
                                             (cons _%lp-hd5494255323%_
                                                   _%body5494455317%_))))
                                        (let ((_%body5494555329%_
                                               (reverse _%body5494455317%_)))
                                          (let ((_%g5491955332%_
                                                 _%body5494555329%_)
                                                (_%g5492055334%_
                                                 _%hd5493555298%_)
                                                (_%g5492155335%_
                                                 _%hd5492955278%_))
                                            (if (and (gx#identifier?
                                                      _%g5492155335%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5492055334%_)))
                                                (_%__kont9492294923%_
                                                 _%g5491955332%_
                                                 _%g5492055334%_
                                                 _%g5492155335%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))))))))
                          (_%loop5494055310%_ _%target5493755304%_ '()))))
                     (_%__match9501895019%_
                      (lambda (_%e5489555374%_
                               _%hd5489655378%_
                               _%tl5489755381%_
                               _%e5489855384%_
                               _%hd5489955388%_
                               _%tl5490055391%_
                               _%e5490155394%_
                               _%hd5490255398%_
                               _%tl5490355401%_
                               _%e5490455404%_
                               _%hd5490555408%_
                               _%tl5490655411%_
                               _%e5490755414%_
                               _%hd5490855418%_
                               _%tl5490955421%_
                               _%__splice9492094921%_
                               _%target5491055424%_
                               _%tl5491255427%_)
                        (letrec ((_%loop5491355430%_
                                  (lambda (_%hd5491155434%_ _%body5491755437%_)
                                    (if (gx#stx-pair? _%hd5491155434%_)
                                        (let ((_%e5491455439%_
                                               (gx#syntax-e _%hd5491155434%_)))
                                          (let ((_%lp-tl5491655446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5491455439%_)))
                                                (_%lp-hd5491555443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5491455439%_))))
                                            (_%loop5491355430%_
                                             _%lp-tl5491655446%_
                                             (cons _%lp-hd5491555443%_
                                                   _%body5491755437%_))))
                                        (let ((_%body5491855449%_
                                               (reverse _%body5491755437%_)))
                                          (let ((_%g5489255452%_
                                                 _%body5491855449%_)
                                                (_%g5489355454%_
                                                 _%hd5490855418%_)
                                                (_%g5489455455%_
                                                 _%hd5490255398%_))
                                            (if (and (gx#identifier?
                                                      _%g5489455455%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5489355454%_)))
                                                (_%__kont9491894919%_
                                                 _%g5489255452%_
                                                 _%g5489355454%_
                                                 _%g5489455455%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))))))))
                          (_%loop5491355430%_ _%target5491055424%_ '()))))
                     (_%__match9499894999%_
                      (lambda (_%e5489555374%_
                               _%hd5489655378%_
                               _%tl5489755381%_
                               _%e5489855384%_
                               _%hd5489955388%_
                               _%tl5490055391%_
                               _%e5490155394%_
                               _%hd5490255398%_
                               _%tl5490355401%_
                               _%e5490455404%_
                               _%hd5490555408%_
                               _%tl5490655411%_)
                        (if (gx#identifier? _%hd5490555408%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g100870_|
                                 _%hd5490555408%_)
                                (if (gx#stx-pair? _%tl5490655411%_)
                                    (let ((_%e5490755414%_
                                           (gx#syntax-e _%tl5490655411%_)))
                                      (let ((_%tl5490955421%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5490755414%_)))
                                            (_%hd5490855418%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5490755414%_))))
                                        (if (gx#stx-null? _%tl5490955421%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5490055391%_)
                                                (let ((_%__splice9492094921%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5490055391%_
                                                        '0)))
                                                  (let ((_%tl5491255427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9492094921%_
                                                            '1)))
                                                        (_%target5491055424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9492094921%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5491255427%_)
                                                        (_%__match9501895019%_
                                                         _%e5489555374%_
                                                         _%hd5489655378%_
                                                         _%tl5489755381%_
                                                         _%e5489855384%_
                                                         _%hd5489955388%_
                                                         _%tl5490055391%_
                                                         _%e5490155394%_
                                                         _%hd5490255398%_
                                                         _%tl5490355401%_
                                                         _%e5490455404%_
                                                         _%hd5490555408%_
                                                         _%tl5490655411%_
                                                         _%e5490755414%_
                                                         _%hd5490855418%_
                                                         _%tl5490955421%_
                                                         _%__splice9492094921%_
                                                         _%target5491055424%_
                                                         _%tl5491255427%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5486255005%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5486255005%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5486255005%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g100871_|
                                     _%hd5490555408%_)
                                    (if (gx#stx-pair? _%tl5490655411%_)
                                        (let ((_%e5493455294%_
                                               (gx#syntax-e _%tl5490655411%_)))
                                          (let ((_%tl5493655301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5493455294%_)))
                                                (_%hd5493555298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5493455294%_))))
                                            (if (gx#stx-null? _%tl5493655301%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5490055391%_)
                                                    (let ((_%__splice9492494925%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5490055391%_
                                                            '0)))
                                                      (let ((_%tl5493955307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9492494925%_ '1)))
                    (_%target5493755304%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9492494925%_ '0))))
                (if (gx#stx-null? _%tl5493955307%_)
                    (_%__match9506295063%_
                     _%e5489555374%_
                     _%hd5489655378%_
                     _%tl5489755381%_
                     _%e5489855384%_
                     _%hd5489955388%_
                     _%tl5490055391%_
                     _%e5490155394%_
                     _%hd5490255398%_
                     _%tl5490355401%_
                     _%e5490455404%_
                     _%hd5490555408%_
                     _%tl5490655411%_
                     _%e5493455294%_
                     _%hd5493555298%_
                     _%tl5493655301%_
                     _%__splice9492494925%_
                     _%target5493755304%_
                     _%tl5493955307%_)
                    (let () (declare (not safe)) (_%g5486255005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5486255005%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5486255005%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g100872_|
                                         _%hd5490555408%_)
                                        (if (gx#stx-pair? _%tl5490655411%_)
                                            (let ((_%e5496155174%_
                                                   (gx#syntax-e
                                                    _%tl5490655411%_)))
                                              (let ((_%tl5496355181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5496155174%_)))
                                                    (_%hd5496255178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5496155174%_))))
                                                (if (gx#stx-null?
                                                     _%tl5496355181%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5490055391%_)
                                                        (let ((_%__splice9492894929%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5490055391%_
                                                                '0)))
                                                          (let ((_%tl5496655187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9492894929%_ '1)))
                        (_%target5496455184%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9492894929%_ '0))))
                    (if (gx#stx-null? _%tl5496655187%_)
                        (_%__match9510695107%_
                         _%e5489555374%_
                         _%hd5489655378%_
                         _%tl5489755381%_
                         _%e5489855384%_
                         _%hd5489955388%_
                         _%tl5490055391%_
                         _%e5490155394%_
                         _%hd5490255398%_
                         _%tl5490355401%_
                         _%e5490455404%_
                         _%hd5490555408%_
                         _%tl5490655411%_
                         _%e5496155174%_
                         _%hd5496255178%_
                         _%tl5496355181%_
                         _%__splice9492894929%_
                         _%target5496455184%_
                         _%tl5496655187%_)
                        (let () (declare (not safe)) (_%g5486255005%_)))))
                (let () (declare (not safe)) (_%g5486255005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5486255005%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5486255005%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g100873_|
                                             _%hd5490555408%_)
                                            (if (gx#stx-pair? _%tl5490655411%_)
                                                (let ((_%e5498855052%_
                                                       (gx#syntax-e
                                                        _%tl5490655411%_)))
                                                  (let ((_%tl5499055059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5498855052%_)))
                                                        (_%hd5498955056%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5498855052%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5499055059%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5490055391%_)
                                                            (let ((_%__splice9493294933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5490055391%_
                            '0)))
                      (let ((_%tl5499355065%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9493294933%_ '1)))
                            (_%target5499155062%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9493294933%_ '0))))
                        (if (gx#stx-null? _%tl5499355065%_)
                            (_%__match9515095151%_
                             _%e5489555374%_
                             _%hd5489655378%_
                             _%tl5489755381%_
                             _%e5489855384%_
                             _%hd5489955388%_
                             _%tl5490055391%_
                             _%e5490155394%_
                             _%hd5490255398%_
                             _%tl5490355401%_
                             _%e5490455404%_
                             _%hd5490555408%_
                             _%tl5490655411%_
                             _%e5498855052%_
                             _%hd5498955056%_
                             _%tl5499055059%_
                             _%__splice9493294933%_
                             _%target5499155062%_
                             _%tl5499355065%_)
                            (let () (declare (not safe)) (_%g5486255005%_)))))
                    (let () (declare (not safe)) (_%g5486255005%_)))
                (let () (declare (not safe)) (_%g5486255005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5486255005%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5486255005%_))))))
                            (let () (declare (not safe)) (_%g5486255005%_)))))
                     (_%__match9497494975%_
                      (lambda (_%e5486855494%_
                               _%hd5486955498%_
                               _%tl5487055501%_
                               _%e5487155504%_
                               _%hd5487255508%_
                               _%tl5487355511%_
                               _%e5487455514%_
                               _%hd5487555518%_
                               _%tl5487655521%_
                               _%e5487755524%_
                               _%hd5487855528%_
                               _%tl5487955531%_
                               _%e5488055534%_
                               _%hd5488155538%_
                               _%tl5488255541%_
                               _%__splice9491694917%_
                               _%target5488355544%_
                               _%tl5488555547%_)
                        (letrec ((_%loop5488655550%_
                                  (lambda (_%hd5488455554%_ _%body5489055557%_)
                                    (if (gx#stx-pair? _%hd5488455554%_)
                                        (let ((_%e5488755559%_
                                               (gx#syntax-e _%hd5488455554%_)))
                                          (let ((_%lp-tl5488955566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5488755559%_)))
                                                (_%lp-hd5488855563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5488755559%_))))
                                            (_%loop5488655550%_
                                             _%lp-tl5488955566%_
                                             (cons _%lp-hd5488855563%_
                                                   _%body5489055557%_))))
                                        (let ((_%body5489155569%_
                                               (reverse _%body5489055557%_)))
                                          (let ((_%g5486455572%_
                                                 _%body5489155569%_)
                                                (_%g5486555574%_
                                                 _%hd5488155538%_)
                                                (_%g5486655575%_
                                                 _%hd5487855528%_)
                                                (_%g5486755576%_
                                                 _%hd5487555518%_))
                                            (if (let ((__tmp100874
                                                       (gx#syntax-local-value
                                                        _%g5486555574%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp100874))
                                                (_%__kont9491494915%_
                                                 _%g5486455572%_
                                                 _%g5486555574%_
                                                 _%g5486655575%_
                                                 _%g5486755576%_)
                                                (_%__match9499894999%_
                                                 _%e5486855494%_
                                                 _%hd5486955498%_
                                                 _%tl5487055501%_
                                                 _%e5487155504%_
                                                 _%hd5487255508%_
                                                 _%tl5487355511%_
                                                 _%e5487455514%_
                                                 _%hd5487555518%_
                                                 _%tl5487655521%_
                                                 _%e5487755524%_
                                                 _%hd5487855528%_
                                                 _%tl5487955531%_))))))))
                          (_%loop5488655550%_ _%target5488355544%_ '())))))
                (if (gx#stx-pair? _%__stx9491194912%_)
                    (let ((_%e5486855494%_ (gx#syntax-e _%__stx9491194912%_)))
                      (let ((_%tl5487055501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5486855494%_)))
                            (_%hd5486955498%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5486855494%_))))
                        (if (gx#stx-pair? _%tl5487055501%_)
                            (let ((_%e5487155504%_
                                   (gx#syntax-e _%tl5487055501%_)))
                              (let ((_%tl5487355511%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5487155504%_)))
                                    (_%hd5487255508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5487155504%_))))
                                (if (gx#stx-pair? _%hd5487255508%_)
                                    (let ((_%e5487455514%_
                                           (gx#syntax-e _%hd5487255508%_)))
                                      (let ((_%tl5487655521%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5487455514%_)))
                                            (_%hd5487555518%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5487455514%_))))
                                        (if (gx#stx-pair? _%tl5487655521%_)
                                            (let ((_%e5487755524%_
                                                   (gx#syntax-e
                                                    _%tl5487655521%_)))
                                              (let ((_%tl5487955531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5487755524%_)))
                                                    (_%hd5487855528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5487755524%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5487955531%_)
                                                    (let ((_%e5488055534%_
                                                           (gx#syntax-e
                                                            _%tl5487955531%_)))
                                                      (let ((_%tl5488255541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5488055534%_)))
                    (_%hd5488155538%_
                     (let () (declare (not safe)) (##car _%e5488055534%_))))
                (if (gx#stx-null? _%tl5488255541%_)
                    (if (gx#stx-pair/null? _%tl5487355511%_)
                        (let ((_%__splice9491694917%_
                               (gx#syntax-split-splice->vector
                                _%tl5487355511%_
                                '0)))
                          (let ((_%tl5488555547%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9491694917%_ '1)))
                                (_%target5488355544%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9491694917%_ '0))))
                            (if (gx#stx-null? _%tl5488555547%_)
                                (_%__match9497494975%_
                                 _%e5486855494%_
                                 _%hd5486955498%_
                                 _%tl5487055501%_
                                 _%e5487155504%_
                                 _%hd5487255508%_
                                 _%tl5487355511%_
                                 _%e5487455514%_
                                 _%hd5487555518%_
                                 _%tl5487655521%_
                                 _%e5487755524%_
                                 _%hd5487855528%_
                                 _%tl5487955531%_
                                 _%e5488055534%_
                                 _%hd5488155538%_
                                 _%tl5488255541%_
                                 _%__splice9491694917%_
                                 _%target5488355544%_
                                 _%tl5488555547%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5486255005%_)))))
                        (let () (declare (not safe)) (_%g5486255005%_)))
                    (let () (declare (not safe)) (_%g5486255005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5486255005%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5486255005%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5486255005%_)))))
                            (let () (declare (not safe)) (_%g5486255005%_)))))
                    (let () (declare (not safe)) (_%g5486255005%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56064%_)
        (let* ((_%__stx9515395154%_ _%stx56064%_)
               (_%g5606956129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9515395154%_))))
          (let ((_%__kont9515695157%_
                 (lambda (_%g5607156685%_ _%g5607256687%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5607256687%_ '()))
                               (foldr (lambda (_%g5670356706%_ _%g5670456709%_)
                                        (cons _%g5670356706%_ _%g5670456709%_))
                                      '()
                                      _%g5607156685%_)))))
                (_%__kont9516095161%_
                 (lambda (_%g5608856273%_ _%g5608956275%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5608956275%_)
                       (let* ((_%g5629556302%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56064%_
                                _%g5608956275%_))
                              (_%E5629756308%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5629556302%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5629856606%_
                               (lambda (_%parts56312%_ _%var56314%_)
                                 (let ((_%$e56316%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56314%_))))
                                   (if _%$e56316%_
                                       ((lambda (_%te56320%_)
                                          (let _%loop56323%_ ((_%parts56326%_
                                                               _%parts56312%_)
                                                              (_%type56328%_
                                                               (##direct-structure-ref
                                                                _%te56320%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object56329%_
                                                               _%var56314%_)
                                                              (_%checked-method?56330%_
                                                               (##direct-structure-ref
                                                                _%te56320%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?56331%_
                                                               '#f))
                                            (let* ((_%parts5633256340%_
                                                    _%parts56326%_)
                                                   (_%else5633456401%_
                                                    (lambda ()
                                                      (let* ((_%g5635256360%_
                                                              (lambda (_%g5635356356%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5635356356%_)))
                     (_%g5635156397%_
                      (lambda (_%g5635356364%_)
                        ((lambda (_%g5635456367%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g5635456367%_
                                       (foldr (lambda (_%g5638856391%_
                                                       _%g5638956394%_)
                                                (cons _%g5638856391%_
                                                      _%g5638956394%_))
                                              '()
                                              _%g5608856273%_))))
                         _%g5635356364%_))))
                (_%g5635156397%_ _%object56329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5633656580%_
                                                    (lambda (_%rest56405%_
                                                             _%part56407%_)
                                                      (if (and (not _%nil-check?56331%_)
                                                               (let ((__tmp100875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part56407%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp100875)))
                  (let ((_%str56411%_ (symbol->string _%part56407%_)))
                    (_%loop56323%_
                     (cons (let ((__tmp100876
                                  (substring
                                   _%str56411%_
                                   '1
                                   (string-length _%str56411%_))))
                             (declare (not safe))
                             (##string->symbol __tmp100876))
                           _%rest56405%_)
                     _%type56328%_
                     _%object56329%_
                     _%checked-method?56330%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type56328%_))
                      (let* ((_%g5641656431%_
                              (lambda (_%g5641756427%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5641756427%_)))
                             (_%g5641556500%_
                              (lambda (_%g5641756435%_)
                                (if (gx#stx-pair? _%g5641756435%_)
                                    (let ((_%e5642056438%_
                                           (gx#syntax-e _%g5641756435%_)))
                                      (let ((_%hd5642156442%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5642056438%_)))
                                            (_%tl5642256445%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5642056438%_))))
                                        (if (gx#stx-pair? _%tl5642256445%_)
                                            (let ((_%e5642356448%_
                                                   (gx#syntax-e
                                                    _%tl5642256445%_)))
                                              (let ((_%hd5642456452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5642356448%_)))
                                                    (_%tl5642556455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5642356448%_))))
                                                (if (gx#stx-null?
                                                     _%tl5642556455%_)
                                                    ((lambda (_%g5641856458%_
                                                              _%g5641956460%_)
                                                       (if (null? _%rest56405%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g5641856458%_
                                     (cons _%g5641956460%_ '()))
                               (foldr (lambda (_%g5647956482%_ _%g5648056485%_)
                                        (cons _%g5647956482%_ _%g5648056485%_))
                                      '()
                                      _%g5608856273%_)))
                   (let ((_%$e56488%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type56328%_
                           _%part56407%_)))
                     (if _%$e56488%_
                         ((lambda (_%slot-type56492%_)
                            (let ((_%slot-type56495%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx56064%_
                                      _%slot-type56492%_))))
                              (_%loop56323%_
                               _%rest56405%_
                               _%slot-type56495%_
                               (cons _%g5641856458%_
                                     (cons _%g5641956460%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type56328%_
                                _%part56407%_)
                               '#f)))
                          _%$e56488%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx56064%_
                          _%g5608956275%_
                          _%part56407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5642456452%_
                                                     _%hd5642156442%_)
                                                    (_%g5641656431%_
                                                     _%g5641756435%_))))
                                            (_%g5641656431%_
                                             _%g5641756435%_))))
                                    (_%g5641656431%_ _%g5641756435%_)))))
                        (_%g5641556500%_
                         (list (if _%nil-check?56331%_
                                   (cons 'check-nil!
                                         (cons _%object56329%_ '()))
                                   _%object56329%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx56064%_
                                _%type56328%_
                                _%part56407%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type56328%_))
                          (if (null? _%rest56405%_)
                              (let* ((_%g5650656521%_
                                      (lambda (_%g5650756517%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5650756517%_)))
                                     (_%g5650556574%_
                                      (lambda (_%g5650756525%_)
                                        (if (gx#stx-pair? _%g5650756525%_)
                                            (let ((_%e5651056528%_
                                                   (gx#syntax-e
                                                    _%g5650756525%_)))
                                              (let ((_%hd5651156532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5651056528%_)))
                                                    (_%tl5651256535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5651056528%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5651256535%_)
                                                    (let ((_%e5651356538%_
                                                           (gx#syntax-e
                                                            _%tl5651256535%_)))
                                                      (let ((_%hd5651456542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5651356538%_)))
                    (_%tl5651556545%_
                     (let () (declare (not safe)) (##cdr _%e5651356538%_))))
                (if (gx#stx-null? _%tl5651556545%_)
                    ((lambda (_%g5650856548%_ _%g5650956550%_)
                       (cons _%g5650856548%_
                             (cons _%g5650956550%_
                                   (foldr (lambda (_%g5656556568%_
                                                   _%g5656656571%_)
                                            (cons _%g5656556568%_
                                                  _%g5656656571%_))
                                          '()
                                          _%g5608856273%_))))
                     _%hd5651456542%_
                     _%hd5651156532%_)
                    (_%g5650656521%_ _%g5650756525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5650656521%_
                                                     _%g5650756525%_))))
                                            (_%g5650656521%_
                                             _%g5650756525%_)))))
                                (_%g5650556574%_
                                 (list (if _%nil-check?56331%_
                                           (cons 'check-nil!
                                                 (cons _%object56329%_ '()))
                                           _%object56329%_)
                                       (gx#stx-identifier
                                        _%g5608956275%_
                                        (if _%checked-method?56330%_ '"" '"&")
                                        (let ((__obj100668 _%type56328%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj100668
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj100668
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj100668
                                               'name)))
                                        '"-"
                                        _%part56407%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx56064%_
                               _%g5608956275%_
                               _%part56407%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx56064%_
                           _%type56328%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5633256340%_)
                                                  (let ((_%hd5633756584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5633256340%_)))
                                                        (_%tl5633856587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5633256340%_))))
                                                    (let* ((_%part56590%_
                                                            _%hd5633756584%_)
                                                           (_%rest56593%_
                                                            _%tl5633856587%_))
                                                      (_%K5633656580%_
                                                       _%rest56593%_
                                                       _%part56590%_)))
                                                  (_%else5633456401%_)))))
                                        _%$e56316%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5608956275%_
                                                   (foldr (lambda (_%g5659756600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5659856603%_)
                    (cons _%g5659756600%_ _%g5659856603%_))
                  '()
                  _%g5608856273%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5629556302%_)
                             (let ((_%hd5629956610%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5629556302%_)))
                                   (_%tl5630056613%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5629556302%_))))
                               (let* ((_%var56616%_ _%hd5629956610%_)
                                      (_%parts56619%_ _%tl5630056613%_))
                                 (_%K5629856606%_
                                  _%parts56619%_
                                  _%var56616%_)))
                             (_%E5629756308%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5608956275%_
                                   (foldr (lambda (_%g5662156624%_
                                                   _%g5662256627%_)
                                            (cons _%g5662156624%_
                                                  _%g5662256627%_))
                                          '()
                                          _%g5608856273%_))))))
                (_%__kont9516495165%_
                 (lambda (_%g5611156174%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5618956192%_ _%g5619056195%_)
                                  (cons _%g5618956192%_ _%g5619056195%_))
                                '()
                                _%g5611156174%_)))))
            (let* ((_%__match9524095241%_
                    (lambda (_%e5611256136%_
                             _%hd5611356140%_
                             _%tl5611456143%_
                             _%__splice9516695167%_
                             _%target5611556146%_
                             _%tl5611756149%_)
                      (letrec ((_%loop5611856152%_
                                (lambda (_%hd5611656156%_ _%arg5612256159%_)
                                  (if (gx#stx-pair? _%hd5611656156%_)
                                      (let ((_%e5611956161%_
                                             (gx#syntax-e _%hd5611656156%_)))
                                        (let ((_%lp-tl5612156168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5611956161%_)))
                                              (_%lp-hd5612056165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5611956161%_))))
                                          (_%loop5611856152%_
                                           _%lp-tl5612156168%_
                                           (cons _%lp-hd5612056165%_
                                                 _%arg5612256159%_))))
                                      (let ((_%arg5612356171%_
                                             (reverse _%arg5612256159%_)))
                                        (_%__kont9516495165%_
                                         _%arg5612356171%_))))))
                        (_%loop5611856152%_ _%target5611556146%_ '()))))
                   (_%__match9522695227%_
                    (lambda (_%e5609056205%_
                             _%hd5609156209%_
                             _%tl5609256212%_
                             _%e5609356215%_
                             _%hd5609456219%_
                             _%tl5609556222%_
                             _%e5609656225%_
                             _%hd5609756229%_
                             _%tl5609856232%_
                             _%e5609956235%_
                             _%hd5610056239%_
                             _%tl5610156242%_
                             _%__splice9516295163%_
                             _%target5610256245%_
                             _%tl5610456248%_)
                      (letrec ((_%loop5610556251%_
                                (lambda (_%hd5610356255%_ _%rand5610956258%_)
                                  (if (gx#stx-pair? _%hd5610356255%_)
                                      (let ((_%e5610656260%_
                                             (gx#syntax-e _%hd5610356255%_)))
                                        (let ((_%lp-tl5610856267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5610656260%_)))
                                              (_%lp-hd5610756264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5610656260%_))))
                                          (_%loop5610556251%_
                                           _%lp-tl5610856267%_
                                           (cons _%lp-hd5610756264%_
                                                 _%rand5610956258%_))))
                                      (let ((_%rand5611056270%_
                                             (reverse _%rand5610956258%_)))
                                        (_%__kont9516095161%_
                                         _%rand5611056270%_
                                         _%hd5610056239%_))))))
                        (_%loop5610556251%_ _%target5610256245%_ '()))))
                   (_%__match9520095201%_
                    (lambda (_%e5609056205%_
                             _%hd5609156209%_
                             _%tl5609256212%_
                             _%e5609356215%_
                             _%hd5609456219%_
                             _%tl5609556222%_)
                      (if (gx#stx-pair? _%hd5609456219%_)
                          (let ((_%e5609656225%_
                                 (gx#syntax-e _%hd5609456219%_)))
                            (let ((_%tl5609856232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5609656225%_)))
                                  (_%hd5609756229%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5609656225%_))))
                              (if (gx#identifier? _%hd5609756229%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g100877_|
                                       _%hd5609756229%_)
                                      (if (gx#stx-pair? _%tl5609856232%_)
                                          (let ((_%e5609956235%_
                                                 (gx#syntax-e
                                                  _%tl5609856232%_)))
                                            (let ((_%tl5610156242%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5609956235%_)))
                                                  (_%hd5610056239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5609956235%_))))
                                              (if (gx#stx-null?
                                                   _%tl5610156242%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5609556222%_)
                                                      (let ((_%__splice9516295163%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5609556222%_
                                                              '0)))
                                                        (let ((_%tl5610456248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9516295163%_ '1)))
                      (_%target5610256245%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9516295163%_ '0))))
                  (if (gx#stx-null? _%tl5610456248%_)
                      (_%__match9522695227%_
                       _%e5609056205%_
                       _%hd5609156209%_
                       _%tl5609256212%_
                       _%e5609356215%_
                       _%hd5609456219%_
                       _%tl5609556222%_
                       _%e5609656225%_
                       _%hd5609756229%_
                       _%tl5609856232%_
                       _%e5609956235%_
                       _%hd5610056239%_
                       _%tl5610156242%_
                       _%__splice9516295163%_
                       _%target5610256245%_
                       _%tl5610456248%_)
                      (if (gx#stx-pair/null? _%tl5609256212%_)
                          (let ((_%__splice9516695167%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5609256212%_
                                  '0)))
                            (let ((_%tl5611756149%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9516695167%_ '1)))
                                  (_%target5611556146%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9516695167%_
                                      '0))))
                              (if (gx#stx-null? _%tl5611756149%_)
                                  (_%__match9524095241%_
                                   _%e5609056205%_
                                   _%hd5609156209%_
                                   _%tl5609256212%_
                                   _%__splice9516695167%_
                                   _%target5611556146%_
                                   _%tl5611756149%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5606956129%_)))))
                          (let () (declare (not safe)) (_%g5606956129%_))))))
              (if (gx#stx-pair/null? _%tl5609256212%_)
                  (let ((_%__splice9516695167%_
                         (gx#syntax-split-splice->vector _%tl5609256212%_ '0)))
                    (let ((_%tl5611756149%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '1)))
                          (_%target5611556146%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '0))))
                      (if (gx#stx-null? _%tl5611756149%_)
                          (_%__match9524095241%_
                           _%e5609056205%_
                           _%hd5609156209%_
                           _%tl5609256212%_
                           _%__splice9516695167%_
                           _%target5611556146%_
                           _%tl5611756149%_)
                          (let () (declare (not safe)) (_%g5606956129%_)))))
                  (let () (declare (not safe)) (_%g5606956129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5609256212%_)
                                                      (let ((_%__splice9516695167%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5609256212%_
                                                              '0)))
                                                        (let ((_%tl5611756149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9516695167%_ '1)))
                      (_%target5611556146%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9516695167%_ '0))))
                  (if (gx#stx-null? _%tl5611756149%_)
                      (_%__match9524095241%_
                       _%e5609056205%_
                       _%hd5609156209%_
                       _%tl5609256212%_
                       _%__splice9516695167%_
                       _%target5611556146%_
                       _%tl5611756149%_)
                      (let () (declare (not safe)) (_%g5606956129%_)))))
              (let () (declare (not safe)) (_%g5606956129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5609256212%_)
                                              (let ((_%__splice9516695167%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5609256212%_
                                                      '0)))
                                                (let ((_%tl5611756149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9516695167%_
                                                          '1)))
                                                      (_%target5611556146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9516695167%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5611756149%_)
                                                      (_%__match9524095241%_
                                                       _%e5609056205%_
                                                       _%hd5609156209%_
                                                       _%tl5609256212%_
                                                       _%__splice9516695167%_
                                                       _%target5611556146%_
                                                       _%tl5611756149%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5606956129%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5606956129%_))))
                                      (if (gx#stx-pair/null? _%tl5609256212%_)
                                          (let ((_%__splice9516695167%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5609256212%_
                                                  '0)))
                                            (let ((_%tl5611756149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9516695167%_
                                                      '1)))
                                                  (_%target5611556146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9516695167%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5611756149%_)
                                                  (_%__match9524095241%_
                                                   _%e5609056205%_
                                                   _%hd5609156209%_
                                                   _%tl5609256212%_
                                                   _%__splice9516695167%_
                                                   _%target5611556146%_
                                                   _%tl5611756149%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5606956129%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5606956129%_))))
                                  (if (gx#stx-pair/null? _%tl5609256212%_)
                                      (let ((_%__splice9516695167%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5609256212%_
                                              '0)))
                                        (let ((_%tl5611756149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9516695167%_
                                                  '1)))
                                              (_%target5611556146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9516695167%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5611756149%_)
                                              (_%__match9524095241%_
                                               _%e5609056205%_
                                               _%hd5609156209%_
                                               _%tl5609256212%_
                                               _%__splice9516695167%_
                                               _%target5611556146%_
                                               _%tl5611756149%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5606956129%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5606956129%_))))))
                          (if (gx#stx-pair/null? _%tl5609256212%_)
                              (let ((_%__splice9516695167%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5609256212%_
                                      '0)))
                                (let ((_%tl5611756149%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '1)))
                                      (_%target5611556146%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5611756149%_)
                                      (_%__match9524095241%_
                                       _%e5609056205%_
                                       _%hd5609156209%_
                                       _%tl5609256212%_
                                       _%__splice9516695167%_
                                       _%target5611556146%_
                                       _%tl5611756149%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5606956129%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5606956129%_))))))
                   (_%__match9518895189%_
                    (lambda (_%e5607356637%_
                             _%hd5607456641%_
                             _%tl5607556644%_
                             _%e5607656647%_
                             _%hd5607756651%_
                             _%tl5607856654%_
                             _%__splice9515895159%_
                             _%target5607956657%_
                             _%tl5608156660%_)
                      (letrec ((_%loop5608256663%_
                                (lambda (_%hd5608056667%_ _%rand5608656670%_)
                                  (if (gx#stx-pair? _%hd5608056667%_)
                                      (let ((_%e5608356672%_
                                             (gx#syntax-e _%hd5608056667%_)))
                                        (let ((_%lp-tl5608556679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5608356672%_)))
                                              (_%lp-hd5608456676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5608356672%_))))
                                          (_%loop5608256663%_
                                           _%lp-tl5608556679%_
                                           (cons _%lp-hd5608456676%_
                                                 _%rand5608656670%_))))
                                      (let ((_%rand5608756682%_
                                             (reverse _%rand5608656670%_)))
                                        (let ((_%g5607156685%_
                                               _%rand5608756682%_)
                                              (_%g5607256687%_
                                               _%hd5607756651%_))
                                          (if (gx#identifier? _%g5607256687%_)
                                              (_%__kont9515695157%_
                                               _%g5607156685%_
                                               _%g5607256687%_)
                                              (_%__match9520095201%_
                                               _%e5607356637%_
                                               _%hd5607456641%_
                                               _%tl5607556644%_
                                               _%e5607656647%_
                                               _%hd5607756651%_
                                               _%tl5607856654%_))))))))
                        (_%loop5608256663%_ _%target5607956657%_ '())))))
              (if (gx#stx-pair? _%__stx9515395154%_)
                  (let ((_%e5607356637%_ (gx#syntax-e _%__stx9515395154%_)))
                    (let ((_%tl5607556644%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5607356637%_)))
                          (_%hd5607456641%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5607356637%_))))
                      (if (gx#stx-pair? _%tl5607556644%_)
                          (let ((_%e5607656647%_
                                 (gx#syntax-e _%tl5607556644%_)))
                            (let ((_%tl5607856654%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5607656647%_)))
                                  (_%hd5607756651%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5607656647%_))))
                              (if (gx#stx-pair/null? _%tl5607856654%_)
                                  (let ((_%__splice9515895159%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5607856654%_
                                          '0)))
                                    (let ((_%tl5608156660%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9515895159%_
                                              '1)))
                                          (_%target5607956657%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9515895159%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5608156660%_)
                                          (_%__match9518895189%_
                                           _%e5607356637%_
                                           _%hd5607456641%_
                                           _%tl5607556644%_
                                           _%e5607656647%_
                                           _%hd5607756651%_
                                           _%tl5607856654%_
                                           _%__splice9515895159%_
                                           _%target5607956657%_
                                           _%tl5608156660%_)
                                          (if (gx#stx-pair? _%hd5607756651%_)
                                              (let ((_%e5609656225%_
                                                     (gx#syntax-e
                                                      _%hd5607756651%_)))
                                                (let ((_%tl5609856232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5609656225%_)))
                                                      (_%hd5609756229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5609656225%_))))
                                                  (if (gx#identifier?
                                                       _%hd5609756229%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g100877_|
                                                           _%hd5609756229%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5609856232%_)
                                                              (let ((_%e5609956235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5609856232%_)))
                        (let ((_%tl5610156242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5609956235%_)))
                              (_%hd5610056239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5609956235%_))))
                          (if (gx#stx-pair/null? _%tl5607556644%_)
                              (let ((_%__splice9516695167%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5607556644%_
                                      '0)))
                                (let ((_%tl5611756149%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '1)))
                                      (_%target5611556146%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5611756149%_)
                                      (_%__match9524095241%_
                                       _%e5607356637%_
                                       _%hd5607456641%_
                                       _%tl5607556644%_
                                       _%__splice9516695167%_
                                       _%target5611556146%_
                                       _%tl5611756149%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5606956129%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5606956129%_)))))
                      (if (gx#stx-pair/null? _%tl5607556644%_)
                          (let ((_%__splice9516695167%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5607556644%_
                                  '0)))
                            (let ((_%tl5611756149%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9516695167%_ '1)))
                                  (_%target5611556146%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9516695167%_
                                      '0))))
                              (if (gx#stx-null? _%tl5611756149%_)
                                  (_%__match9524095241%_
                                   _%e5607356637%_
                                   _%hd5607456641%_
                                   _%tl5607556644%_
                                   _%__splice9516695167%_
                                   _%target5611556146%_
                                   _%tl5611756149%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5606956129%_)))))
                          (let () (declare (not safe)) (_%g5606956129%_))))
                  (if (gx#stx-pair/null? _%tl5607556644%_)
                      (let ((_%__splice9516695167%_
                             (gx#syntax-split-splice->vector
                              _%tl5607556644%_
                              '0)))
                        (let ((_%tl5611756149%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9516695167%_ '1)))
                              (_%target5611556146%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9516695167%_ '0))))
                          (if (gx#stx-null? _%tl5611756149%_)
                              (_%__match9524095241%_
                               _%e5607356637%_
                               _%hd5607456641%_
                               _%tl5607556644%_
                               _%__splice9516695167%_
                               _%target5611556146%_
                               _%tl5611756149%_)
                              (let ()
                                (declare (not safe))
                                (_%g5606956129%_)))))
                      (let () (declare (not safe)) (_%g5606956129%_))))
              (if (gx#stx-pair/null? _%tl5607556644%_)
                  (let ((_%__splice9516695167%_
                         (gx#syntax-split-splice->vector _%tl5607556644%_ '0)))
                    (let ((_%tl5611756149%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '1)))
                          (_%target5611556146%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '0))))
                      (if (gx#stx-null? _%tl5611756149%_)
                          (_%__match9524095241%_
                           _%e5607356637%_
                           _%hd5607456641%_
                           _%tl5607556644%_
                           _%__splice9516695167%_
                           _%target5611556146%_
                           _%tl5611756149%_)
                          (let () (declare (not safe)) (_%g5606956129%_)))))
                  (let () (declare (not safe)) (_%g5606956129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5607556644%_)
                                                  (let ((_%__splice9516695167%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5607556644%_
                                                          '0)))
                                                    (let ((_%tl5611756149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9516695167%_
                                                              '1)))
                                                          (_%target5611556146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9516695167%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5611756149%_)
                                                          (_%__match9524095241%_
                                                           _%e5607356637%_
                                                           _%hd5607456641%_
                                                           _%tl5607556644%_
                                                           _%__splice9516695167%_
                                                           _%target5611556146%_
                                                           _%tl5611756149%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5606956129%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5606956129%_)))))))
                                  (if (gx#stx-pair? _%hd5607756651%_)
                                      (let ((_%e5609656225%_
                                             (gx#syntax-e _%hd5607756651%_)))
                                        (let ((_%tl5609856232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5609656225%_)))
                                              (_%hd5609756229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5609656225%_))))
                                          (if (gx#identifier? _%hd5609756229%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g100877_|
                                                   _%hd5609756229%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5609856232%_)
                                                      (let ((_%e5609956235%_
                                                             (gx#syntax-e
                                                              _%tl5609856232%_)))
                                                        (let ((_%tl5610156242%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5609956235%_)))
                      (_%hd5610056239%_
                       (let () (declare (not safe)) (##car _%e5609956235%_))))
                  (if (gx#stx-pair/null? _%tl5607556644%_)
                      (let ((_%__splice9516695167%_
                             (gx#syntax-split-splice->vector
                              _%tl5607556644%_
                              '0)))
                        (let ((_%tl5611756149%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9516695167%_ '1)))
                              (_%target5611556146%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9516695167%_ '0))))
                          (if (gx#stx-null? _%tl5611756149%_)
                              (_%__match9524095241%_
                               _%e5607356637%_
                               _%hd5607456641%_
                               _%tl5607556644%_
                               _%__splice9516695167%_
                               _%target5611556146%_
                               _%tl5611756149%_)
                              (let ()
                                (declare (not safe))
                                (_%g5606956129%_)))))
                      (let () (declare (not safe)) (_%g5606956129%_)))))
              (if (gx#stx-pair/null? _%tl5607556644%_)
                  (let ((_%__splice9516695167%_
                         (gx#syntax-split-splice->vector _%tl5607556644%_ '0)))
                    (let ((_%tl5611756149%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '1)))
                          (_%target5611556146%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9516695167%_ '0))))
                      (if (gx#stx-null? _%tl5611756149%_)
                          (_%__match9524095241%_
                           _%e5607356637%_
                           _%hd5607456641%_
                           _%tl5607556644%_
                           _%__splice9516695167%_
                           _%target5611556146%_
                           _%tl5611756149%_)
                          (let () (declare (not safe)) (_%g5606956129%_)))))
                  (let () (declare (not safe)) (_%g5606956129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5607556644%_)
                                                      (let ((_%__splice9516695167%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5607556644%_
                                                              '0)))
                                                        (let ((_%tl5611756149%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9516695167%_ '1)))
                      (_%target5611556146%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9516695167%_ '0))))
                  (if (gx#stx-null? _%tl5611756149%_)
                      (_%__match9524095241%_
                       _%e5607356637%_
                       _%hd5607456641%_
                       _%tl5607556644%_
                       _%__splice9516695167%_
                       _%target5611556146%_
                       _%tl5611756149%_)
                      (let () (declare (not safe)) (_%g5606956129%_)))))
              (let () (declare (not safe)) (_%g5606956129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5607556644%_)
                                                  (let ((_%__splice9516695167%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5607556644%_
                                                          '0)))
                                                    (let ((_%tl5611756149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9516695167%_
                                                              '1)))
                                                          (_%target5611556146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9516695167%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5611756149%_)
                                                          (_%__match9524095241%_
                                                           _%e5607356637%_
                                                           _%hd5607456641%_
                                                           _%tl5607556644%_
                                                           _%__splice9516695167%_
                                                           _%target5611556146%_
                                                           _%tl5611756149%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5606956129%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5606956129%_))))))
                                      (if (gx#stx-pair/null? _%tl5607556644%_)
                                          (let ((_%__splice9516695167%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5607556644%_
                                                  '0)))
                                            (let ((_%tl5611756149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9516695167%_
                                                      '1)))
                                                  (_%target5611556146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9516695167%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5611756149%_)
                                                  (_%__match9524095241%_
                                                   _%e5607356637%_
                                                   _%hd5607456641%_
                                                   _%tl5607556644%_
                                                   _%__splice9516695167%_
                                                   _%target5611556146%_
                                                   _%tl5611756149%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5606956129%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5606956129%_)))))))
                          (if (gx#stx-pair/null? _%tl5607556644%_)
                              (let ((_%__splice9516695167%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5607556644%_
                                      '0)))
                                (let ((_%tl5611756149%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '1)))
                                      (_%target5611556146%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9516695167%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5611756149%_)
                                      (_%__match9524095241%_
                                       _%e5607356637%_
                                       _%hd5607456641%_
                                       _%tl5607556644%_
                                       _%__splice9516695167%_
                                       _%target5611556146%_
                                       _%tl5611756149%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5606956129%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5606956129%_))))))
                  (let () (declare (not safe)) (_%g5606956129%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx56719%_)
        (let* ((_%__stx9524395244%_ _%stx56719%_)
               (_%g5672356744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9524395244%_))))
          (let ((_%__kont9524695247%_
                 (lambda (_%g5672556812%_)
                   (let* ((_%g5682456831%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx56719%_
                            _%g5672556812%_))
                          (_%E5682656837%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5682456831%_
                                    '([var . parts]))
                             (void)))
                          (_%K5682757053%_
                           (lambda (_%parts56841%_ _%var56843%_)
                             (let ((_%$e56845%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var56843%_))))
                               (if _%$e56845%_
                                   ((lambda (_%te56849%_)
                                      (let _%loop56852%_ ((_%parts56855%_
                                                           _%parts56841%_)
                                                          (_%type56857%_
                                                           (##direct-structure-ref
                                                            _%te56849%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object56858%_
                                                           _%var56843%_)
                                                          (_%nil-check?56859%_
                                                           '#f))
                                        (let* ((_%parts5686056868%_
                                                _%parts56855%_)
                                               (_%else5686256880%_
                                                (lambda () _%object56858%_))
                                               (_%K5686457035%_
                                                (lambda (_%rest56884%_
                                                         _%part56886%_)
                                                  (if (and (not _%nil-check?56859%_)
                                                           (let ((__tmp100878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part56886%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100878)))
              (let ((_%str56890%_ (symbol->string _%part56886%_)))
                (_%loop56852%_
                 (cons (let ((__tmp100879
                              (substring
                               _%str56890%_
                               '1
                               (string-length _%str56890%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100879))
                       _%rest56884%_)
                 _%type56857%_
                 _%object56858%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type56857%_))
                  (let* ((_%g5689556910%_
                          (lambda (_%g5689656906%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5689656906%_)))
                         (_%g5689457027%_
                          (lambda (_%g5689656914%_)
                            (if (gx#stx-pair? _%g5689656914%_)
                                (let ((_%e5689956917%_
                                       (gx#syntax-e _%g5689656914%_)))
                                  (let ((_%hd5690056921%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5689956917%_)))
                                        (_%tl5690156924%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5689956917%_))))
                                    (if (gx#stx-pair? _%tl5690156924%_)
                                        (let ((_%e5690256927%_
                                               (gx#syntax-e _%tl5690156924%_)))
                                          (let ((_%hd5690356931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5690256927%_)))
                                                (_%tl5690456934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5690256927%_))))
                                            (if (gx#stx-null? _%tl5690456934%_)
                                                ((lambda (_%g5689756937%_
                                                          _%g5689856939%_)
                                                   (if (null? _%rest56884%_)
                                                       (let ((_%$e56969%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type56857%_
                                                               _%part56886%_)))
                                                         (if _%$e56969%_
                                                             ((lambda (_%slot-type56973%_)
                                                                (let* ((_%g5697656984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5697756980%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5697756980%_)))
                               (_%g5697557007%_
                                (lambda (_%g5697756988%_)
                                  ((lambda (_%g5697856991%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g5697856991%_
                                                             '()))
                                                 (cons (cons _%g5689756937%_
                                                             (cons _%g5689856939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5697756988%_))))
                          (_%g5697557007%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx56719%_
                              _%slot-type56973%_)))))
                      _%$e56969%_)
                     (if _%nil-check?56859%_
                         (cons _%g5689756937%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g5689856939%_ '()))
                                     '()))
                         (cons _%g5689756937%_ (cons _%g5689856939%_ '())))))
               (let ((_%$e57015%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type56857%_
                       _%part56886%_)))
                 (if _%$e57015%_
                     ((lambda (_%type57019%_)
                        (let ((_%type57022%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx56719%_
                                  _%type57019%_))))
                          (if _%nil-check?56859%_
                              (_%loop56852%_
                               _%rest56884%_
                               _%type57022%_
                               (cons _%g5689756937%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g5689856939%_ '()))
                                           '()))
                               '#f)
                              (_%loop56852%_
                               _%rest56884%_
                               _%type57022%_
                               (cons _%g5689756937%_
                                     (cons _%g5689856939%_ '()))
                               '#f))))
                      _%$e57015%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx56719%_
                      _%g5672556812%_
                      _%part56886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5690356931%_
                                                 _%hd5690056921%_)
                                                (_%g5689556910%_
                                                 _%g5689656914%_))))
                                        (_%g5689556910%_ _%g5689656914%_))))
                                (_%g5689556910%_ _%g5689656914%_)))))
                    (_%g5689457027%_
                     (list (if _%nil-check?56859%_
                               (cons 'check-nil! (cons _%object56858%_ '()))
                               _%object56858%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx56719%_
                            _%type56857%_
                            _%part56886%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type56857%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx56719%_
                       _%type56857%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5686056868%_)
                                              (let ((_%hd5686557039%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5686056868%_)))
                                                    (_%tl5686657042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5686056868%_))))
                                                (let* ((_%part57045%_
                                                        _%hd5686557039%_)
                                                       (_%rest57048%_
                                                        _%tl5686657042%_))
                                                  (_%K5686457035%_
                                                   _%rest57048%_
                                                   _%part57045%_)))
                                              (_%else5686256880%_)))))
                                    _%$e56845%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5672556812%_ '())))))))
                     (if (pair? _%g5682456831%_)
                         (let ((_%hd5682857057%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5682456831%_)))
                               (_%tl5682957060%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5682456831%_))))
                           (let* ((_%var57063%_ _%hd5682857057%_)
                                  (_%parts57066%_ _%tl5682957060%_))
                             (_%K5682757053%_ _%parts57066%_ _%var57063%_)))
                         (_%E5682656837%_)))))
                (_%__kont9524895249%_
                 (lambda (_%g5673256771%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5673256771%_ '())))))
            (let ((_%__match9526495265%_
                   (lambda (_%e5672656792%_
                            _%hd5672756796%_
                            _%tl5672856799%_
                            _%e5672956802%_
                            _%hd5673056806%_
                            _%tl5673156809%_)
                     (let ((_%g5672556812%_ _%hd5673056806%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5672556812%_)
                           (_%__kont9524695247%_ _%g5672556812%_)
                           (_%__kont9524895249%_ _%hd5673056806%_))))))
              (if (gx#stx-pair? _%__stx9524395244%_)
                  (let ((_%e5672656792%_ (gx#syntax-e _%__stx9524395244%_)))
                    (let ((_%tl5672856799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5672656792%_)))
                          (_%hd5672756796%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5672656792%_))))
                      (if (gx#stx-pair? _%tl5672856799%_)
                          (let ((_%e5672956802%_
                                 (gx#syntax-e _%tl5672856799%_)))
                            (let ((_%tl5673156809%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5672956802%_)))
                                  (_%hd5673056806%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5672956802%_))))
                              (if (gx#stx-null? _%tl5673156809%_)
                                  (_%__match9526495265%_
                                   _%e5672656792%_
                                   _%hd5672756796%_
                                   _%tl5672856799%_
                                   _%e5672956802%_
                                   _%hd5673056806%_
                                   _%tl5673156809%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5672356744%_)))))
                          (let () (declare (not safe)) (_%g5672356744%_)))))
                  (let () (declare (not safe)) (_%g5672356744%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57073%_)
        (let* ((_%__stx9528195282%_ _%stx57073%_)
               (_%g5707757106%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9528195282%_))))
          (let ((_%__kont9528495285%_
                 (lambda (_%g5707957198%_ _%g5708057200%_)
                   (let* ((_%g5721457221%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57073%_
                            _%g5708057200%_))
                          (_%E5721657227%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5721457221%_
                                    '([var . parts]))
                             (void)))
                          (_%K5721757457%_
                           (lambda (_%parts57231%_ _%var57233%_)
                             (let ((_%$e57235%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57233%_))))
                               (if _%$e57235%_
                                   ((lambda (_%te57239%_)
                                      (let _%loop57242%_ ((_%parts57245%_
                                                           _%parts57231%_)
                                                          (_%type57247%_
                                                           (##direct-structure-ref
                                                            _%te57239%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object57248%_
                                                           _%var57233%_)
                                                          (_%checked-mutator?57249%_
                                                           (##direct-structure-ref
                                                            _%te57239%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?57250%_
                                                           '#f))
                                        (let* ((_%parts5725157258%_
                                                _%parts57245%_)
                                               (_%E5725357264%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5725157258%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5725457439%_
                                                (lambda (_%rest57268%_
                                                         _%part57270%_)
                                                  (if (and (not _%nil-check?57250%_)
                                                           (let ((__tmp100880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part57270%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp100880)))
              (let ((_%str57274%_ (symbol->string _%part57270%_)))
                (_%loop57242%_
                 (cons (let ((__tmp100881
                              (substring
                               _%str57274%_
                               '1
                               (string-length _%str57274%_))))
                         (declare (not safe))
                         (##string->symbol __tmp100881))
                       _%rest57268%_)
                 _%type57247%_
                 _%object57248%_
                 _%checked-mutator?57249%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type57247%_))
                  (if (null? _%rest57268%_)
                      (let* ((_%g5728157296%_
                              (lambda (_%g5728257292%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5728257292%_)))
                             (_%g5728057353%_
                              (lambda (_%g5728257300%_)
                                (if (gx#stx-pair? _%g5728257300%_)
                                    (let ((_%e5728557303%_
                                           (gx#syntax-e _%g5728257300%_)))
                                      (let ((_%hd5728657307%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5728557303%_)))
                                            (_%tl5728757310%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5728557303%_))))
                                        (if (gx#stx-pair? _%tl5728757310%_)
                                            (let ((_%e5728857313%_
                                                   (gx#syntax-e
                                                    _%tl5728757310%_)))
                                              (let ((_%hd5728957317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5728857313%_)))
                                                    (_%tl5729057320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5728857313%_))))
                                                (if (gx#stx-null?
                                                     _%tl5729057320%_)
                                                    ((lambda (_%g5728357323%_
                                                              _%g5728457325%_)
                                                       (if _%nil-check?57250%_
                                                           (cons _%g5728357323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g5728457325%_ '()))
                               (cons _%g5707957198%_ '())))
                   (cons _%g5728357323%_
                         (cons _%g5728457325%_ (cons _%g5707957198%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5728957317%_
                                                     _%hd5728657307%_)
                                                    (_%g5728157296%_
                                                     _%g5728257300%_))))
                                            (_%g5728157296%_
                                             _%g5728257300%_))))
                                    (_%g5728157296%_ _%g5728257300%_)))))
                        (_%g5728057353%_
                         (list _%object57248%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx57073%_
                                _%type57247%_
                                _%part57270%_
                                (if _%checked-mutator?57249%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type57247%_
                                     _%part57270%_)
                                    '#f)))))
                      (let ((_%$e57357%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type57247%_
                              _%part57270%_)))
                        (if _%$e57357%_
                            ((lambda (_%type57361%_)
                               (let* ((_%type57364%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx57073%_
                                          _%type57361%_)))
                                      (_%g5736757382%_
                                       (lambda (_%g5736857378%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5736857378%_)))
                                      (_%g5736657429%_
                                       (lambda (_%g5736857386%_)
                                         (if (gx#stx-pair? _%g5736857386%_)
                                             (let ((_%e5737157389%_
                                                    (gx#syntax-e
                                                     _%g5736857386%_)))
                                               (let ((_%hd5737257393%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5737157389%_)))
                                                     (_%tl5737357396%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5737157389%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5737357396%_)
                                                     (let ((_%e5737457399%_
                                                            (gx#syntax-e
                                                             _%tl5737357396%_)))
                                                       (let ((_%hd5737557403%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5737457399%_)))
                     (_%tl5737657406%_
                      (let () (declare (not safe)) (##cdr _%e5737457399%_))))
                 (if (gx#stx-null? _%tl5737657406%_)
                     ((lambda (_%g5736957409%_ _%g5737057411%_)
                        (_%loop57242%_
                         _%rest57268%_
                         _%type57364%_
                         (cons _%g5736957409%_ (cons _%g5737057411%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type57364%_
                          _%part57270%_)
                         '#f))
                      _%hd5737557403%_
                      _%hd5737257393%_)
                     (_%g5736757382%_ _%g5736857386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5736757382%_
                                                      _%g5736857386%_))))
                                             (_%g5736757382%_
                                              _%g5736857386%_)))))
                                 (_%g5736657429%_
                                  (list (if _%nil-check?57250%_
                                            (cons 'check-nil!
                                                  (cons _%object57248%_ '()))
                                            _%object57248%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx57073%_
                                         _%type57364%_
                                         _%part57270%_)))))
                             _%$e57357%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx57073%_
                             _%g5708057200%_
                             _%part57270%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type57247%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx57073%_
                       _%type57247%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5725157258%_)
                                              (let ((_%hd5725557443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5725157258%_)))
                                                    (_%tl5725657446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5725157258%_))))
                                                (let* ((_%part57449%_
                                                        _%hd5725557443%_)
                                                       (_%rest57452%_
                                                        _%tl5725657446%_))
                                                  (_%K5725457439%_
                                                   _%rest57452%_
                                                   _%part57449%_)))
                                              (_%E5725357264%_)))))
                                    _%$e57235%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57073%_)))))))
                     (if (pair? _%g5721457221%_)
                         (let ((_%hd5721857461%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5721457221%_)))
                               (_%tl5721957464%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5721457221%_))))
                           (let* ((_%var57467%_ _%hd5721857461%_)
                                  (_%parts57470%_ _%tl5721957464%_))
                             (_%K5721757457%_ _%parts57470%_ _%var57467%_)))
                         (_%E5721657227%_)))))
                (_%__kont9528695287%_
                 (lambda (_%g5709057143%_ _%g5709157145%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57073%_)))))
            (let ((_%__match9530895309%_
                   (lambda (_%e5708157168%_
                            _%hd5708257172%_
                            _%tl5708357175%_
                            _%e5708457178%_
                            _%hd5708557182%_
                            _%tl5708657185%_
                            _%e5708757188%_
                            _%hd5708857192%_
                            _%tl5708957195%_)
                     (let ((_%g5707957198%_ _%hd5708857192%_)
                           (_%g5708057200%_ _%hd5708557182%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5708057200%_)
                           (_%__kont9528495285%_
                            _%g5707957198%_
                            _%g5708057200%_)
                           (_%__kont9528695287%_
                            _%hd5708857192%_
                            _%hd5708557182%_))))))
              (if (gx#stx-pair? _%__stx9528195282%_)
                  (let ((_%e5708157168%_ (gx#syntax-e _%__stx9528195282%_)))
                    (let ((_%tl5708357175%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5708157168%_)))
                          (_%hd5708257172%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5708157168%_))))
                      (if (gx#stx-pair? _%tl5708357175%_)
                          (let ((_%e5708457178%_
                                 (gx#syntax-e _%tl5708357175%_)))
                            (let ((_%tl5708657185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5708457178%_)))
                                  (_%hd5708557182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5708457178%_))))
                              (if (gx#stx-pair? _%tl5708657185%_)
                                  (let ((_%e5708757188%_
                                         (gx#syntax-e _%tl5708657185%_)))
                                    (let ((_%tl5708957195%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5708757188%_)))
                                          (_%hd5708857192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5708757188%_))))
                                      (if (gx#stx-null? _%tl5708957195%_)
                                          (_%__match9530895309%_
                                           _%e5708157168%_
                                           _%hd5708257172%_
                                           _%tl5708357175%_
                                           _%e5708457178%_
                                           _%hd5708557182%_
                                           _%tl5708657185%_
                                           _%e5708757188%_
                                           _%hd5708857192%_
                                           _%tl5708957195%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5707757106%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5707757106%_)))))
                          (let () (declare (not safe)) (_%g5707757106%_)))))
                  (let () (declare (not safe)) (_%g5707757106%_))))))))))
