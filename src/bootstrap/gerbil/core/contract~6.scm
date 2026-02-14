(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g109235_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109236_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109237_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109240_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109241_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109244_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109245_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109246_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109247_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109251_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109252_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109253_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109254_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g109258_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx60790%_)
        (let* ((_%__stx102573102574%_ _%stx60790%_)
               (_%g6079961008%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx102573102574%_))))
          (let ((_%__kont102576102577%_
                 (lambda (_%g6080161900%_
                          _%g6080261902%_
                          _%g6080361903%_
                          _%g6080461904%_
                          _%g6080561905%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g6080561905%_
                                     (cons _%g6080461904%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g6080561905%_
                                                       (cons _%g6080361903%_
                                                             (cons _%g6080261902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g6194861951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6194961954%_)
                  (cons _%g6194861951%_ _%g6194961954%_))
                '()
                _%g6080161900%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont102580102581%_
                 (lambda (_%g6083361746%_
                          _%g6083461748%_
                          _%g6083561749%_
                          _%g6083661750%_
                          _%g6083761751%_
                          _%g6083861752%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g6083861752%_
                                     (cons _%g6083761751%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g6083861752%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g6083661750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g6083861752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g6083561749%_
                                       (cons _%g6083461748%_ '())))
                           (foldr (lambda (_%g6179661799%_ _%g6179761802%_)
                                    (cons _%g6179661799%_ _%g6179761802%_))
                                  '()
                                  _%g6083361746%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont102584102585%_
                 (lambda (_%g6087261565%_
                          _%g6087361567%_
                          _%g6087461568%_
                          _%g6087561569%_)
                   (let ((_%meta61606%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx60790%_
                             _%g6087361567%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta61606%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g6087561569%_
                                           (cons _%g6087461568%_
                                                 (cons _%g6087361567%_ '())))
                                     (foldr (lambda (_%g6161061613%_
                                                     _%g6161161616%_)
                                              (cons _%g6161061613%_
                                                    _%g6161161616%_))
                                            '()
                                            _%g6087261565%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta61606%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g6087561569%_
                                               (cons _%g6087461568%_
                                                     (cons _%g6087361567%_
                                                           '())))
                                         (foldr (lambda (_%g6162061623%_
                                                         _%g6162161626%_)
                                                  (cons _%g6162061623%_
                                                        _%g6162161626%_))
                                                '()
                                                _%g6087261565%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx60790%_
                              _%g6087361567%_
                              _%meta61606%_))))))
                (_%__kont102588102589%_
                 (lambda (_%g6090061445%_ _%g6090161447%_ _%g6090261448%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g6090261448%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g6090161447%_ '())))
                               (foldr (lambda (_%g6147161474%_ _%g6147261477%_)
                                        (cons _%g6147161474%_ _%g6147261477%_))
                                      '()
                                      _%g6090061445%_)))))
                (_%__kont102592102593%_
                 (lambda (_%g6092761305%_
                          _%g6092861307%_
                          _%g6092961308%_
                          _%g6093061309%_
                          _%g6093161310%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g6093161310%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g6093061309%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g6093161310%_
                                                       (cons _%g6092961308%_
                                                             (cons _%g6092861307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g6135161354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6135261357%_)
                  (cons _%g6135161354%_ _%g6135261357%_))
                '()
                _%g6092761305%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont102596102597%_
                 (lambda (_%g6096261165%_
                          _%g6096361167%_
                          _%g6096461168%_
                          _%g6096561169%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g6096561169%_ _%g6096461168%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g6096361167%_
                                                 (foldr (lambda (_%g6119161194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6119261197%_)
                  (cons _%g6119161194%_ _%g6119261197%_))
                '()
                _%g6096261165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont102600102601%_
                 (lambda (_%g6098761063%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g6108161084%_ _%g6108261087%_)
                                        (cons _%g6108161084%_ _%g6108261087%_))
                                      '()
                                      _%g6098761063%_))))))
            (let* ((_%__match102906102907%_
                    (lambda (_%e6098861015%_
                             _%hd6098961019%_
                             _%tl6099061022%_
                             _%e6099161025%_
                             _%hd6099261029%_
                             _%tl6099361032%_
                             _%__splice102602102603%_
                             _%target6099461035%_
                             _%tl6099661038%_)
                      (letrec ((_%loop6099761041%_
                                (lambda (_%hd6099561045%_ _%body6100161048%_)
                                  (if (gx#stx-pair? _%hd6099561045%_)
                                      (let ((_%e6099861050%_
                                             (gx#syntax-e _%hd6099561045%_)))
                                        (let ((_%lp-tl6100061057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6099861050%_)))
                                              (_%lp-hd6099961054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6099861050%_))))
                                          (_%loop6099761041%_
                                           _%lp-tl6100061057%_
                                           (cons _%lp-hd6099961054%_
                                                 _%body6100161048%_))))
                                      (let ((_%body6100261060%_
                                             (reverse _%body6100161048%_)))
                                        (_%__kont102600102601%_
                                         _%body6100261060%_))))))
                        (_%loop6099761041%_ _%target6099461035%_ '()))))
                   (_%__match102884102885%_
                    (lambda (_%e6096661097%_
                             _%hd6096761101%_
                             _%tl6096861104%_
                             _%e6096961107%_
                             _%hd6097061111%_
                             _%tl6097161114%_
                             _%e6097261117%_
                             _%hd6097361121%_
                             _%tl6097461124%_
                             _%e6097561127%_
                             _%hd6097661131%_
                             _%tl6097761134%_
                             _%__splice102598102599%_
                             _%target6097861137%_
                             _%tl6098061140%_)
                      (letrec ((_%loop6098161143%_
                                (lambda (_%hd6097961147%_ _%body6098561150%_)
                                  (if (gx#stx-pair? _%hd6097961147%_)
                                      (let ((_%e6098261152%_
                                             (gx#syntax-e _%hd6097961147%_)))
                                        (let ((_%lp-tl6098461159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6098261152%_)))
                                              (_%lp-hd6098361156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6098261152%_))))
                                          (_%loop6098161143%_
                                           _%lp-tl6098461159%_
                                           (cons _%lp-hd6098361156%_
                                                 _%body6098561150%_))))
                                      (let ((_%body6098661162%_
                                             (reverse _%body6098561150%_)))
                                        (let ((_%g6096261165%_
                                               _%body6098661162%_)
                                              (_%g6096361167%_
                                               _%tl6097461124%_)
                                              (_%g6096461168%_
                                               _%tl6097761134%_)
                                              (_%g6096561169%_
                                               _%hd6097661131%_))
                                          (if (gx#identifier? _%g6096561169%_)
                                              (_%__kont102596102597%_
                                               _%g6096261165%_
                                               _%g6096361167%_
                                               _%g6096461168%_
                                               _%g6096561169%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_)))))))))
                        (_%loop6098161143%_ _%target6097861137%_ '()))))
                   (_%__match102870102871%_
                    (lambda (_%e6096661097%_
                             _%hd6096761101%_
                             _%tl6096861104%_
                             _%e6096961107%_
                             _%hd6097061111%_
                             _%tl6097161114%_
                             _%e6097261117%_
                             _%hd6097361121%_
                             _%tl6097461124%_)
                      (if (gx#stx-pair? _%hd6097361121%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6097361121%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (if (gx#stx-pair/null? _%tl6097161114%_)
                                  (let ((_%__splice102598102599%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6097161114%_
                                          '0)))
                                    (let ((_%tl6098061140%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '1)))
                                          (_%target6097861137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6098061140%_)
                                          (_%__match102884102885%_
                                           _%e6096661097%_
                                           _%hd6096761101%_
                                           _%tl6096861104%_
                                           _%e6096961107%_
                                           _%hd6097061111%_
                                           _%tl6097161114%_
                                           _%e6097261117%_
                                           _%hd6097361121%_
                                           _%tl6097461124%_
                                           _%e6097561127%_
                                           _%hd6097661131%_
                                           _%tl6097761134%_
                                           _%__splice102598102599%_
                                           _%target6097861137%_
                                           _%tl6098061140%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                   (_%__match102852102853%_
                    (lambda (_%e6093261207%_
                             _%hd6093361211%_
                             _%tl6093461214%_
                             _%e6093561217%_
                             _%hd6093661221%_
                             _%tl6093761224%_
                             _%e6093861227%_
                             _%hd6093961231%_
                             _%tl6094061234%_
                             _%e6094161237%_
                             _%hd6094261241%_
                             _%tl6094361244%_
                             _%e6094461247%_
                             _%hd6094561251%_
                             _%tl6094661254%_
                             _%e6094761257%_
                             _%hd6094861261%_
                             _%tl6094961264%_
                             _%e6095061267%_
                             _%hd6095161271%_
                             _%tl6095261274%_
                             _%__splice102594102595%_
                             _%target6095361277%_
                             _%tl6095561280%_)
                      (letrec ((_%loop6095661283%_
                                (lambda (_%hd6095461287%_ _%body6096061290%_)
                                  (if (gx#stx-pair? _%hd6095461287%_)
                                      (let ((_%e6095761292%_
                                             (gx#syntax-e _%hd6095461287%_)))
                                        (let ((_%lp-tl6095961299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6095761292%_)))
                                              (_%lp-hd6095861296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6095761292%_))))
                                          (_%loop6095661283%_
                                           _%lp-tl6095961299%_
                                           (cons _%lp-hd6095861296%_
                                                 _%body6096061290%_))))
                                      (let ((_%body6096161302%_
                                             (reverse _%body6096061290%_)))
                                        (let ((_%g6092761305%_
                                               _%body6096161302%_)
                                              (_%g6092861307%_
                                               _%hd6095161271%_)
                                              (_%g6092961308%_
                                               _%hd6094861261%_)
                                              (_%g6093061309%_
                                               _%hd6094561251%_)
                                              (_%g6093161310%_
                                               _%hd6093961231%_))
                                          (if (and (gx#identifier?
                                                    _%g6093161310%_)
                                                   (gx#identifier?
                                                    _%g6092861307%_)
                                                   (gx#identifier?
                                                    _%g6092961308%_)
                                                   (or (gx#free-identifier=?
                                                        _%g6092961308%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g6092961308%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g6092961308%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g6092961308%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont102592102593%_
                                               _%g6092761305%_
                                               _%g6092861307%_
                                               _%g6092961308%_
                                               _%g6093061309%_
                                               _%g6093161310%_)
                                              (_%__match102870102871%_
                                               _%e6093261207%_
                                               _%hd6093361211%_
                                               _%tl6093461214%_
                                               _%e6093561217%_
                                               _%hd6093661221%_
                                               _%tl6093761224%_
                                               _%e6093861227%_
                                               _%hd6093961231%_
                                               _%tl6094061234%_))))))))
                        (_%loop6095661283%_ _%target6095361277%_ '()))))
                   (_%__match102796102797%_
                    (lambda (_%e6090361367%_
                             _%hd6090461371%_
                             _%tl6090561374%_
                             _%e6090661377%_
                             _%hd6090761381%_
                             _%tl6090861384%_
                             _%e6090961387%_
                             _%hd6091061391%_
                             _%tl6091161394%_
                             _%e6091261397%_
                             _%hd6091361401%_
                             _%tl6091461404%_
                             _%e6091561407%_
                             _%hd6091661411%_
                             _%tl6091761414%_
                             _%__splice102590102591%_
                             _%target6091861417%_
                             _%tl6092061420%_)
                      (letrec ((_%loop6092161423%_
                                (lambda (_%hd6091961427%_ _%body6092561430%_)
                                  (if (gx#stx-pair? _%hd6091961427%_)
                                      (let ((_%e6092261432%_
                                             (gx#syntax-e _%hd6091961427%_)))
                                        (let ((_%lp-tl6092461439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6092261432%_)))
                                              (_%lp-hd6092361436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6092261432%_))))
                                          (_%loop6092161423%_
                                           _%lp-tl6092461439%_
                                           (cons _%lp-hd6092361436%_
                                                 _%body6092561430%_))))
                                      (let ((_%body6092661442%_
                                             (reverse _%body6092561430%_)))
                                        (let ((_%g6090061445%_
                                               _%body6092661442%_)
                                              (_%g6090161447%_
                                               _%hd6091661411%_)
                                              (_%g6090261448%_
                                               _%hd6091061391%_))
                                          (if (gx#identifier? _%g6090261448%_)
                                              (_%__kont102588102589%_
                                               _%g6090061445%_
                                               _%g6090161447%_
                                               _%g6090261448%_)
                                              (_%__match102870102871%_
                                               _%e6090361367%_
                                               _%hd6090461371%_
                                               _%tl6090561374%_
                                               _%e6090661377%_
                                               _%hd6090761381%_
                                               _%tl6090861384%_
                                               _%e6090961387%_
                                               _%hd6091061391%_
                                               _%tl6091161394%_))))))))
                        (_%loop6092161423%_ _%target6091861417%_ '()))))
                   (_%__match102776102777%_
                    (lambda (_%e6090361367%_
                             _%hd6090461371%_
                             _%tl6090561374%_
                             _%e6090661377%_
                             _%hd6090761381%_
                             _%tl6090861384%_
                             _%e6090961387%_
                             _%hd6091061391%_
                             _%tl6091161394%_
                             _%e6091261397%_
                             _%hd6091361401%_
                             _%tl6091461404%_)
                      (if (gx#identifier? _%hd6091361401%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g109235_|
                               _%hd6091361401%_)
                              (if (gx#stx-pair? _%tl6091461404%_)
                                  (let ((_%e6091561407%_
                                         (gx#syntax-e _%tl6091461404%_)))
                                    (let ((_%tl6091761414%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6091561407%_)))
                                          (_%hd6091661411%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6091561407%_))))
                                      (if (gx#stx-null? _%tl6091761414%_)
                                          (if (gx#stx-pair/null?
                                               _%tl6090861384%_)
                                              (let ((_%__splice102590102591%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6090861384%_
                                                      '0)))
                                                (let ((_%tl6092061420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102590102591%_
                                                          '1)))
                                                      (_%target6091861417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102590102591%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6092061420%_)
                                                      (_%__match102796102797%_
                                                       _%e6090361367%_
                                                       _%hd6090461371%_
                                                       _%tl6090561374%_
                                                       _%e6090661377%_
                                                       _%hd6090761381%_
                                                       _%tl6090861384%_
                                                       _%e6090961387%_
                                                       _%hd6091061391%_
                                                       _%tl6091161394%_
                                                       _%e6091261397%_
                                                       _%hd6091361401%_
                                                       _%tl6091461404%_
                                                       _%e6091561407%_
                                                       _%hd6091661411%_
                                                       _%tl6091761414%_
                                                       _%__splice102590102591%_
                                                       _%target6091861417%_
                                                       _%tl6092061420%_)
                                                      (if (gx#stx-pair?
                                                           _%hd6091061391%_)
                                                          (let ((_%e6097561127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd6091061391%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd6091061391%_)
                                                  (let ((_%e6097561127%_
                                                         (gx#syntax-e
                                                          _%hd6091061391%_)))
                                                    (let ((_%tl6097761134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6097561127%_)))
                                                          (_%hd6097661131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6097561127%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6079961008%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))
                                          (if (gx#stx-pair? _%tl6091761414%_)
                                              (let ((_%e6094761257%_
                                                     (gx#syntax-e
                                                      _%tl6091761414%_)))
                                                (let ((_%tl6094961264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6094761257%_)))
                                                      (_%hd6094861261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6094761257%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6094961264%_)
                                                      (let ((_%e6095061267%_
                                                             (gx#syntax-e
                                                              _%tl6094961264%_)))
                                                        (let ((_%tl6095261274%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6095061267%_)))
                      (_%hd6095161271%_
                       (let () (declare (not safe)) (##car _%e6095061267%_))))
                  (if (gx#stx-null? _%tl6095261274%_)
                      (if (gx#stx-pair/null? _%tl6090861384%_)
                          (let ((_%__splice102594102595%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6090861384%_
                                  '0)))
                            (let ((_%tl6095561280%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '1)))
                                  (_%target6095361277%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '0))))
                              (if (gx#stx-null? _%tl6095561280%_)
                                  (_%__match102852102853%_
                                   _%e6090361367%_
                                   _%hd6090461371%_
                                   _%tl6090561374%_
                                   _%e6090661377%_
                                   _%hd6090761381%_
                                   _%tl6090861384%_
                                   _%e6090961387%_
                                   _%hd6091061391%_
                                   _%tl6091161394%_
                                   _%e6091261397%_
                                   _%hd6091361401%_
                                   _%tl6091461404%_
                                   _%e6091561407%_
                                   _%hd6091661411%_
                                   _%tl6091761414%_
                                   _%e6094761257%_
                                   _%hd6094861261%_
                                   _%tl6094961264%_
                                   _%e6095061267%_
                                   _%hd6095161271%_
                                   _%tl6095261274%_
                                   _%__splice102594102595%_
                                   _%target6095361277%_
                                   _%tl6095561280%_)
                                  (if (gx#stx-pair? _%hd6091061391%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6091061391%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))
                          (if (gx#stx-pair? _%hd6091061391%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6091061391%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                      (if (gx#stx-pair? _%hd6091061391%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6091061391%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (if (gx#stx-pair/null? _%tl6090861384%_)
                                  (let ((_%__splice102598102599%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6090861384%_
                                          '0)))
                                    (let ((_%tl6098061140%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '1)))
                                          (_%target6097861137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6098061140%_)
                                          (_%__match102884102885%_
                                           _%e6090361367%_
                                           _%hd6090461371%_
                                           _%tl6090561374%_
                                           _%e6090661377%_
                                           _%hd6090761381%_
                                           _%tl6090861384%_
                                           _%e6090961387%_
                                           _%hd6091061391%_
                                           _%tl6091161394%_
                                           _%e6097561127%_
                                           _%hd6097661131%_
                                           _%tl6097761134%_
                                           _%__splice102598102599%_
                                           _%target6097861137%_
                                           _%tl6098061140%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_))))))
              (if (gx#stx-pair? _%hd6091061391%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6091061391%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6090861384%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6090861384%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6090361367%_
                                   _%hd6090461371%_
                                   _%tl6090561374%_
                                   _%e6090661377%_
                                   _%hd6090761381%_
                                   _%tl6090861384%_
                                   _%e6090961387%_
                                   _%hd6091061391%_
                                   _%tl6091161394%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd6091061391%_)
                                                  (let ((_%e6097561127%_
                                                         (gx#syntax-e
                                                          _%hd6091061391%_)))
                                                    (let ((_%tl6097761134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6097561127%_)))
                                                          (_%hd6097661131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6097561127%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl6090861384%_)
                                                          (let ((_%__splice102598102599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl6090861384%_ '0)))
                    (let ((_%tl6098061140%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '1)))
                          (_%target6097861137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '0))))
                      (if (gx#stx-null? _%tl6098061140%_)
                          (_%__match102884102885%_
                           _%e6090361367%_
                           _%hd6090461371%_
                           _%tl6090561374%_
                           _%e6090661377%_
                           _%hd6090761381%_
                           _%tl6090861384%_
                           _%e6090961387%_
                           _%hd6091061391%_
                           _%tl6091161394%_
                           _%e6097561127%_
                           _%hd6097661131%_
                           _%tl6097761134%_
                           _%__splice102598102599%_
                           _%target6097861137%_
                           _%tl6098061140%_)
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))))
                                  (if (gx#stx-pair? _%hd6091061391%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6091061391%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6090861384%_)
                                              (let ((_%__splice102598102599%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6090861384%_
                                                      '0)))
                                                (let ((_%tl6098061140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '1)))
                                                      (_%target6097861137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6098061140%_)
                                                      (_%__match102884102885%_
                                                       _%e6090361367%_
                                                       _%hd6090461371%_
                                                       _%tl6090561374%_
                                                       _%e6090661377%_
                                                       _%hd6090761381%_
                                                       _%tl6090861384%_
                                                       _%e6090961387%_
                                                       _%hd6091061391%_
                                                       _%tl6091161394%_
                                                       _%e6097561127%_
                                                       _%hd6097661131%_
                                                       _%tl6097761134%_
                                                       _%__splice102598102599%_
                                                       _%target6097861137%_
                                                       _%tl6098061140%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6079961008%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                              (if (gx#stx-pair? _%hd6091061391%_)
                                  (let ((_%e6097561127%_
                                         (gx#syntax-e _%hd6091061391%_)))
                                    (let ((_%tl6097761134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6097561127%_)))
                                          (_%hd6097661131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6097561127%_))))
                                      (if (gx#stx-pair/null? _%tl6090861384%_)
                                          (let ((_%__splice102598102599%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6090861384%_
                                                  '0)))
                                            (let ((_%tl6098061140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102598102599%_
                                                      '1)))
                                                  (_%target6097861137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102598102599%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6098061140%_)
                                                  (_%__match102884102885%_
                                                   _%e6090361367%_
                                                   _%hd6090461371%_
                                                   _%tl6090561374%_
                                                   _%e6090661377%_
                                                   _%hd6090761381%_
                                                   _%tl6090861384%_
                                                   _%e6090961387%_
                                                   _%hd6091061391%_
                                                   _%tl6091161394%_
                                                   _%e6097561127%_
                                                   _%hd6097661131%_
                                                   _%tl6097761134%_
                                                   _%__splice102598102599%_
                                                   _%target6097861137%_
                                                   _%tl6098061140%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                          (if (gx#stx-pair? _%hd6091061391%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6091061391%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (if (gx#stx-pair/null? _%tl6090861384%_)
                                      (let ((_%__splice102598102599%_
                                             (gx#syntax-split-splice->vector
                                              _%tl6090861384%_
                                              '0)))
                                        (let ((_%tl6098061140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102598102599%_
                                                  '1)))
                                              (_%target6097861137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102598102599%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl6098061140%_)
                                              (_%__match102884102885%_
                                               _%e6090361367%_
                                               _%hd6090461371%_
                                               _%tl6090561374%_
                                               _%e6090661377%_
                                               _%hd6090761381%_
                                               _%tl6090861384%_
                                               _%e6090961387%_
                                               _%hd6091061391%_
                                               _%tl6091161394%_
                                               _%e6097561127%_
                                               _%hd6097661131%_
                                               _%tl6097761134%_
                                               _%__splice102598102599%_
                                               _%target6097861137%_
                                               _%tl6098061140%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_))))))
                   (_%__match102752102753%_
                    (lambda (_%e6087661487%_
                             _%hd6087761491%_
                             _%tl6087861494%_
                             _%e6087961497%_
                             _%hd6088061501%_
                             _%tl6088161504%_
                             _%e6088261507%_
                             _%hd6088361511%_
                             _%tl6088461514%_
                             _%e6088561517%_
                             _%hd6088661521%_
                             _%tl6088761524%_
                             _%e6088861527%_
                             _%hd6088961531%_
                             _%tl6089061534%_
                             _%__splice102586102587%_
                             _%target6089161537%_
                             _%tl6089361540%_)
                      (letrec ((_%loop6089461543%_
                                (lambda (_%hd6089261547%_ _%body6089861550%_)
                                  (if (gx#stx-pair? _%hd6089261547%_)
                                      (let ((_%e6089561552%_
                                             (gx#syntax-e _%hd6089261547%_)))
                                        (let ((_%lp-tl6089761559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6089561552%_)))
                                              (_%lp-hd6089661556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6089561552%_))))
                                          (_%loop6089461543%_
                                           _%lp-tl6089761559%_
                                           (cons _%lp-hd6089661556%_
                                                 _%body6089861550%_))))
                                      (let ((_%body6089961562%_
                                             (reverse _%body6089861550%_)))
                                        (let ((_%g6087261565%_
                                               _%body6089961562%_)
                                              (_%g6087361567%_
                                               _%hd6088961531%_)
                                              (_%g6087461568%_
                                               _%hd6088661521%_)
                                              (_%g6087561569%_
                                               _%hd6088361511%_))
                                          (if (and (gx#identifier?
                                                    _%g6087561569%_)
                                                   (gx#identifier?
                                                    _%g6087361567%_)
                                                   (gx#identifier?
                                                    _%g6087461568%_)
                                                   (or (gx#free-identifier=?
                                                        _%g6087461568%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g6087461568%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g6087461568%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g6087461568%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont102584102585%_
                                               _%g6087261565%_
                                               _%g6087361567%_
                                               _%g6087461568%_
                                               _%g6087561569%_)
                                              (_%__match102776102777%_
                                               _%e6087661487%_
                                               _%hd6087761491%_
                                               _%tl6087861494%_
                                               _%e6087961497%_
                                               _%hd6088061501%_
                                               _%tl6088161504%_
                                               _%e6088261507%_
                                               _%hd6088361511%_
                                               _%tl6088461514%_
                                               _%e6088561517%_
                                               _%hd6088661521%_
                                               _%tl6088761524%_))))))))
                        (_%loop6089461543%_ _%target6089161537%_ '()))))
                   (_%__match102712102713%_
                    (lambda (_%e6083961638%_
                             _%hd6084061642%_
                             _%tl6084161645%_
                             _%e6084261648%_
                             _%hd6084361652%_
                             _%tl6084461655%_
                             _%e6084561658%_
                             _%hd6084661662%_
                             _%tl6084761665%_
                             _%e6084861668%_
                             _%hd6084961672%_
                             _%tl6085061675%_
                             _%e6085161678%_
                             _%hd6085261682%_
                             _%tl6085361685%_
                             _%e6085461688%_
                             _%hd6085561692%_
                             _%tl6085661695%_
                             _%e6085761698%_
                             _%hd6085861702%_
                             _%tl6085961705%_
                             _%e6086061708%_
                             _%hd6086161712%_
                             _%tl6086261715%_
                             _%__splice102582102583%_
                             _%target6086361718%_
                             _%tl6086561721%_)
                      (letrec ((_%loop6086661724%_
                                (lambda (_%hd6086461728%_ _%body6087061731%_)
                                  (if (gx#stx-pair? _%hd6086461728%_)
                                      (let ((_%e6086761733%_
                                             (gx#syntax-e _%hd6086461728%_)))
                                        (let ((_%lp-tl6086961740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6086761733%_)))
                                              (_%lp-hd6086861737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6086761733%_))))
                                          (_%loop6086661724%_
                                           _%lp-tl6086961740%_
                                           (cons _%lp-hd6086861737%_
                                                 _%body6087061731%_))))
                                      (let ((_%body6087161743%_
                                             (reverse _%body6087061731%_)))
                                        (let ((_%g6083361746%_
                                               _%body6087161743%_)
                                              (_%g6083461748%_
                                               _%hd6086161712%_)
                                              (_%g6083561749%_
                                               _%hd6085861702%_)
                                              (_%g6083661750%_
                                               _%hd6085561692%_)
                                              (_%g6083761751%_
                                               _%hd6084961672%_)
                                              (_%g6083861752%_
                                               _%hd6084661662%_))
                                          (if (and (gx#identifier?
                                                    _%g6083861752%_)
                                                   (gx#identifier?
                                                    _%g6083461748%_)
                                                   (gx#identifier?
                                                    _%g6083561749%_)
                                                   (or (gx#free-identifier=?
                                                        _%g6083561749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g6083561749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g6083561749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g6083561749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont102580102581%_
                                               _%g6083361746%_
                                               _%g6083461748%_
                                               _%g6083561749%_
                                               _%g6083661750%_
                                               _%g6083761751%_
                                               _%g6083861752%_)
                                              (_%__match102776102777%_
                                               _%e6083961638%_
                                               _%hd6084061642%_
                                               _%tl6084161645%_
                                               _%e6084261648%_
                                               _%hd6084361652%_
                                               _%tl6084461655%_
                                               _%e6084561658%_
                                               _%hd6084661662%_
                                               _%tl6084761665%_
                                               _%e6084861668%_
                                               _%hd6084961672%_
                                               _%tl6085061675%_))))))))
                        (_%loop6086661724%_ _%target6086361718%_ '()))))
                   (_%__match102680102681%_
                    (lambda (_%e6083961638%_
                             _%hd6084061642%_
                             _%tl6084161645%_
                             _%e6084261648%_
                             _%hd6084361652%_
                             _%tl6084461655%_
                             _%e6084561658%_
                             _%hd6084661662%_
                             _%tl6084761665%_
                             _%e6084861668%_
                             _%hd6084961672%_
                             _%tl6085061675%_
                             _%e6085161678%_
                             _%hd6085261682%_
                             _%tl6085361685%_)
                      (if (gx#identifier? _%hd6085261682%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g109236_|
                               _%hd6085261682%_)
                              (if (gx#stx-pair? _%tl6085361685%_)
                                  (let ((_%e6085461688%_
                                         (gx#syntax-e _%tl6085361685%_)))
                                    (let ((_%tl6085661695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6085461688%_)))
                                          (_%hd6085561692%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6085461688%_))))
                                      (if (gx#stx-pair? _%tl6085661695%_)
                                          (let ((_%e6085761698%_
                                                 (gx#syntax-e
                                                  _%tl6085661695%_)))
                                            (let ((_%tl6085961705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6085761698%_)))
                                                  (_%hd6085861702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6085761698%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6085961705%_)
                                                  (let ((_%e6086061708%_
                                                         (gx#syntax-e
                                                          _%tl6085961705%_)))
                                                    (let ((_%tl6086261715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6086061708%_)))
                                                          (_%hd6086161712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6086061708%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6086261715%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl6084461655%_)
                                                              (let ((_%__splice102582102583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl6084461655%_
                              '0)))
                        (let ((_%tl6086561721%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102582102583%_ '1)))
                              (_%target6086361718%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102582102583%_ '0))))
                          (if (gx#stx-null? _%tl6086561721%_)
                              (_%__match102712102713%_
                               _%e6083961638%_
                               _%hd6084061642%_
                               _%tl6084161645%_
                               _%e6084261648%_
                               _%hd6084361652%_
                               _%tl6084461655%_
                               _%e6084561658%_
                               _%hd6084661662%_
                               _%tl6084761665%_
                               _%e6084861668%_
                               _%hd6084961672%_
                               _%tl6085061675%_
                               _%e6085161678%_
                               _%hd6085261682%_
                               _%tl6085361685%_
                               _%e6085461688%_
                               _%hd6085561692%_
                               _%tl6085661695%_
                               _%e6085761698%_
                               _%hd6085861702%_
                               _%tl6085961705%_
                               _%e6086061708%_
                               _%hd6086161712%_
                               _%tl6086261715%_
                               _%__splice102582102583%_
                               _%target6086361718%_
                               _%tl6086561721%_)
                              (if (gx#stx-pair? _%hd6084661662%_)
                                  (let ((_%e6097561127%_
                                         (gx#syntax-e _%hd6084661662%_)))
                                    (let ((_%tl6097761134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6097561127%_)))
                                          (_%hd6097661131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6097561127%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))))
                      (if (gx#stx-pair? _%hd6084661662%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6084661662%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                  (if (gx#stx-pair? _%hd6084661662%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6084661662%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (if (gx#stx-pair/null? _%tl6084461655%_)
                              (let ((_%__splice102598102599%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6084461655%_
                                      '0)))
                                (let ((_%tl6098061140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '1)))
                                      (_%target6097861137%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6098061140%_)
                                      (_%__match102884102885%_
                                       _%e6083961638%_
                                       _%hd6084061642%_
                                       _%tl6084161645%_
                                       _%e6084261648%_
                                       _%hd6084361652%_
                                       _%tl6084461655%_
                                       _%e6084561658%_
                                       _%hd6084661662%_
                                       _%tl6084761665%_
                                       _%e6097561127%_
                                       _%hd6097661131%_
                                       _%tl6097761134%_
                                       _%__splice102598102599%_
                                       _%target6097861137%_
                                       _%tl6098061140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd6084961672%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g109235_|
                                                           _%hd6084961672%_)
                                                          (if (gx#stx-null?
                                                               _%tl6085961705%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl6084461655%_)
                          (let ((_%__splice102594102595%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6084461655%_
                                  '0)))
                            (let ((_%tl6095561280%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '1)))
                                  (_%target6095361277%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '0))))
                              (if (gx#stx-null? _%tl6095561280%_)
                                  (_%__match102852102853%_
                                   _%e6083961638%_
                                   _%hd6084061642%_
                                   _%tl6084161645%_
                                   _%e6084261648%_
                                   _%hd6084361652%_
                                   _%tl6084461655%_
                                   _%e6084561658%_
                                   _%hd6084661662%_
                                   _%tl6084761665%_
                                   _%e6084861668%_
                                   _%hd6084961672%_
                                   _%tl6085061675%_
                                   _%e6085161678%_
                                   _%hd6085261682%_
                                   _%tl6085361685%_
                                   _%e6085461688%_
                                   _%hd6085561692%_
                                   _%tl6085661695%_
                                   _%e6085761698%_
                                   _%hd6085861702%_
                                   _%tl6085961705%_
                                   _%__splice102594102595%_
                                   _%target6095361277%_
                                   _%tl6095561280%_)
                                  (if (gx#stx-pair? _%hd6084661662%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6084661662%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))
                          (if (gx#stx-pair? _%hd6084661662%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6084661662%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                      (if (gx#stx-pair? _%hd6084661662%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6084661662%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (if (gx#stx-pair/null? _%tl6084461655%_)
                                  (let ((_%__splice102598102599%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6084461655%_
                                          '0)))
                                    (let ((_%tl6098061140%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '1)))
                                          (_%target6097861137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6098061140%_)
                                          (_%__match102884102885%_
                                           _%e6083961638%_
                                           _%hd6084061642%_
                                           _%tl6084161645%_
                                           _%e6084261648%_
                                           _%hd6084361652%_
                                           _%tl6084461655%_
                                           _%e6084561658%_
                                           _%hd6084661662%_
                                           _%tl6084761665%_
                                           _%e6097561127%_
                                           _%hd6097661131%_
                                           _%tl6097761134%_
                                           _%__splice102598102599%_
                                           _%target6097861137%_
                                           _%tl6098061140%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                  (if (gx#stx-pair? _%hd6084661662%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6084661662%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (if (gx#stx-pair/null? _%tl6084461655%_)
                              (let ((_%__splice102598102599%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6084461655%_
                                      '0)))
                                (let ((_%tl6098061140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '1)))
                                      (_%target6097861137%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6098061140%_)
                                      (_%__match102884102885%_
                                       _%e6083961638%_
                                       _%hd6084061642%_
                                       _%tl6084161645%_
                                       _%e6084261648%_
                                       _%hd6084361652%_
                                       _%tl6084461655%_
                                       _%e6084561658%_
                                       _%hd6084661662%_
                                       _%tl6084761665%_
                                       _%e6097561127%_
                                       _%hd6097661131%_
                                       _%tl6097761134%_
                                       _%__splice102598102599%_
                                       _%target6097861137%_
                                       _%tl6098061140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
              (if (gx#stx-pair? _%hd6084661662%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6084661662%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6084461655%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6084461655%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6083961638%_
                                   _%hd6084061642%_
                                   _%tl6084161645%_
                                   _%e6084261648%_
                                   _%hd6084361652%_
                                   _%tl6084461655%_
                                   _%e6084561658%_
                                   _%hd6084661662%_
                                   _%tl6084761665%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd6084661662%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6084661662%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6084461655%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6084461655%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6083961638%_
                       _%hd6084061642%_
                       _%tl6084161645%_
                       _%e6084261648%_
                       _%hd6084361652%_
                       _%tl6084461655%_
                       _%e6084561658%_
                       _%hd6084661662%_
                       _%tl6084761665%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))))
                                  (if (gx#stx-null? _%tl6085361685%_)
                                      (if (gx#stx-pair/null? _%tl6084461655%_)
                                          (let ((_%__splice102586102587%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6084461655%_
                                                  '0)))
                                            (let ((_%tl6089361540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102586102587%_
                                                      '1)))
                                                  (_%target6089161537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102586102587%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6089361540%_)
                                                  (_%__match102752102753%_
                                                   _%e6083961638%_
                                                   _%hd6084061642%_
                                                   _%tl6084161645%_
                                                   _%e6084261648%_
                                                   _%hd6084361652%_
                                                   _%tl6084461655%_
                                                   _%e6084561658%_
                                                   _%hd6084661662%_
                                                   _%tl6084761665%_
                                                   _%e6084861668%_
                                                   _%hd6084961672%_
                                                   _%tl6085061675%_
                                                   _%e6085161678%_
                                                   _%hd6085261682%_
                                                   _%tl6085361685%_
                                                   _%__splice102586102587%_
                                                   _%target6089161537%_
                                                   _%tl6089361540%_)
                                                  (if (gx#stx-pair?
                                                       _%hd6084661662%_)
                                                      (let ((_%e6097561127%_
                                                             (gx#syntax-e
                                                              _%hd6084661662%_)))
                                                        (let ((_%tl6097761134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6097561127%_)))
                      (_%hd6097661131%_
                       (let () (declare (not safe)) (##car _%e6097561127%_))))
                  (let () (declare (not safe)) (_%g6079961008%_))))
              (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd6084661662%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6084661662%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                      (if (gx#stx-pair? _%hd6084661662%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6084661662%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6084461655%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6084461655%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6083961638%_
                                                           _%hd6084061642%_
                                                           _%tl6084161645%_
                                                           _%e6084261648%_
                                                           _%hd6084361652%_
                                                           _%tl6084461655%_
                                                           _%e6084561658%_
                                                           _%hd6084661662%_
                                                           _%tl6084761665%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                              (if (gx#stx-null? _%tl6085361685%_)
                                  (if (gx#stx-pair/null? _%tl6084461655%_)
                                      (let ((_%__splice102586102587%_
                                             (gx#syntax-split-splice->vector
                                              _%tl6084461655%_
                                              '0)))
                                        (let ((_%tl6089361540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102586102587%_
                                                  '1)))
                                              (_%target6089161537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice102586102587%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl6089361540%_)
                                              (_%__match102752102753%_
                                               _%e6083961638%_
                                               _%hd6084061642%_
                                               _%tl6084161645%_
                                               _%e6084261648%_
                                               _%hd6084361652%_
                                               _%tl6084461655%_
                                               _%e6084561658%_
                                               _%hd6084661662%_
                                               _%tl6084761665%_
                                               _%e6084861668%_
                                               _%hd6084961672%_
                                               _%tl6085061675%_
                                               _%e6085161678%_
                                               _%hd6085261682%_
                                               _%tl6085361685%_
                                               _%__splice102586102587%_
                                               _%target6089161537%_
                                               _%tl6089361540%_)
                                              (if (gx#stx-pair?
                                                   _%hd6084661662%_)
                                                  (let ((_%e6097561127%_
                                                         (gx#syntax-e
                                                          _%hd6084661662%_)))
                                                    (let ((_%tl6097761134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6097561127%_)))
                                                          (_%hd6097661131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6097561127%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6079961008%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))))
                                      (if (gx#stx-pair? _%hd6084661662%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6084661662%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                  (if (gx#identifier? _%hd6084961672%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g109235_|
                                           _%hd6084961672%_)
                                          (if (gx#stx-pair? _%tl6085361685%_)
                                              (let ((_%e6094761257%_
                                                     (gx#syntax-e
                                                      _%tl6085361685%_)))
                                                (let ((_%tl6094961264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6094761257%_)))
                                                      (_%hd6094861261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6094761257%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6094961264%_)
                                                      (let ((_%e6095061267%_
                                                             (gx#syntax-e
                                                              _%tl6094961264%_)))
                                                        (let ((_%tl6095261274%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6095061267%_)))
                      (_%hd6095161271%_
                       (let () (declare (not safe)) (##car _%e6095061267%_))))
                  (if (gx#stx-null? _%tl6095261274%_)
                      (if (gx#stx-pair/null? _%tl6084461655%_)
                          (let ((_%__splice102594102595%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6084461655%_
                                  '0)))
                            (let ((_%tl6095561280%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '1)))
                                  (_%target6095361277%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102594102595%_
                                      '0))))
                              (if (gx#stx-null? _%tl6095561280%_)
                                  (_%__match102852102853%_
                                   _%e6083961638%_
                                   _%hd6084061642%_
                                   _%tl6084161645%_
                                   _%e6084261648%_
                                   _%hd6084361652%_
                                   _%tl6084461655%_
                                   _%e6084561658%_
                                   _%hd6084661662%_
                                   _%tl6084761665%_
                                   _%e6084861668%_
                                   _%hd6084961672%_
                                   _%tl6085061675%_
                                   _%e6085161678%_
                                   _%hd6085261682%_
                                   _%tl6085361685%_
                                   _%e6094761257%_
                                   _%hd6094861261%_
                                   _%tl6094961264%_
                                   _%e6095061267%_
                                   _%hd6095161271%_
                                   _%tl6095261274%_
                                   _%__splice102594102595%_
                                   _%target6095361277%_
                                   _%tl6095561280%_)
                                  (if (gx#stx-pair? _%hd6084661662%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6084661662%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))
                          (if (gx#stx-pair? _%hd6084661662%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6084661662%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                      (if (gx#stx-pair? _%hd6084661662%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6084661662%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (if (gx#stx-pair/null? _%tl6084461655%_)
                                  (let ((_%__splice102598102599%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6084461655%_
                                          '0)))
                                    (let ((_%tl6098061140%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '1)))
                                          (_%target6097861137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6098061140%_)
                                          (_%__match102884102885%_
                                           _%e6083961638%_
                                           _%hd6084061642%_
                                           _%tl6084161645%_
                                           _%e6084261648%_
                                           _%hd6084361652%_
                                           _%tl6084461655%_
                                           _%e6084561658%_
                                           _%hd6084661662%_
                                           _%tl6084761665%_
                                           _%e6097561127%_
                                           _%hd6097661131%_
                                           _%tl6097761134%_
                                           _%__splice102598102599%_
                                           _%target6097861137%_
                                           _%tl6098061140%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_))))))
              (if (gx#stx-pair? _%hd6084661662%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6084661662%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6084461655%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6084461655%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6083961638%_
                                   _%hd6084061642%_
                                   _%tl6084161645%_
                                   _%e6084261648%_
                                   _%hd6084361652%_
                                   _%tl6084461655%_
                                   _%e6084561658%_
                                   _%hd6084661662%_
                                   _%tl6084761665%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd6084661662%_)
                                                  (let ((_%e6097561127%_
                                                         (gx#syntax-e
                                                          _%hd6084661662%_)))
                                                    (let ((_%tl6097761134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6097561127%_)))
                                                          (_%hd6097661131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6097561127%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl6084461655%_)
                                                          (let ((_%__splice102598102599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl6084461655%_ '0)))
                    (let ((_%tl6098061140%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '1)))
                          (_%target6097861137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '0))))
                      (if (gx#stx-null? _%tl6098061140%_)
                          (_%__match102884102885%_
                           _%e6083961638%_
                           _%hd6084061642%_
                           _%tl6084161645%_
                           _%e6084261648%_
                           _%hd6084361652%_
                           _%tl6084461655%_
                           _%e6084561658%_
                           _%hd6084661662%_
                           _%tl6084761665%_
                           _%e6097561127%_
                           _%hd6097661131%_
                           _%tl6097761134%_
                           _%__splice102598102599%_
                           _%target6097861137%_
                           _%tl6098061140%_)
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))
                                          (if (gx#stx-pair? _%hd6084661662%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6084661662%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6084461655%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6084461655%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6083961638%_
                       _%hd6084061642%_
                       _%tl6084161645%_
                       _%e6084261648%_
                       _%hd6084361652%_
                       _%tl6084461655%_
                       _%e6084561658%_
                       _%hd6084661662%_
                       _%tl6084761665%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                      (if (gx#stx-pair? _%hd6084661662%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6084661662%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6084461655%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6084461655%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6083961638%_
                                                           _%hd6084061642%_
                                                           _%tl6084161645%_
                                                           _%e6084261648%_
                                                           _%hd6084361652%_
                                                           _%tl6084461655%_
                                                           _%e6084561658%_
                                                           _%hd6084661662%_
                                                           _%tl6084761665%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))))
                          (if (gx#stx-null? _%tl6085361685%_)
                              (if (gx#stx-pair/null? _%tl6084461655%_)
                                  (let ((_%__splice102586102587%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6084461655%_
                                          '0)))
                                    (let ((_%tl6089361540%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102586102587%_
                                              '1)))
                                          (_%target6089161537%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102586102587%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6089361540%_)
                                          (_%__match102752102753%_
                                           _%e6083961638%_
                                           _%hd6084061642%_
                                           _%tl6084161645%_
                                           _%e6084261648%_
                                           _%hd6084361652%_
                                           _%tl6084461655%_
                                           _%e6084561658%_
                                           _%hd6084661662%_
                                           _%tl6084761665%_
                                           _%e6084861668%_
                                           _%hd6084961672%_
                                           _%tl6085061675%_
                                           _%e6085161678%_
                                           _%hd6085261682%_
                                           _%tl6085361685%_
                                           _%__splice102586102587%_
                                           _%target6089161537%_
                                           _%tl6089361540%_)
                                          (if (gx#stx-pair? _%hd6084661662%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6084661662%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))))
                                  (if (gx#stx-pair? _%hd6084661662%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6084661662%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                              (if (gx#identifier? _%hd6084961672%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g109235_|
                                       _%hd6084961672%_)
                                      (if (gx#stx-pair? _%tl6085361685%_)
                                          (let ((_%e6094761257%_
                                                 (gx#syntax-e
                                                  _%tl6085361685%_)))
                                            (let ((_%tl6094961264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6094761257%_)))
                                                  (_%hd6094861261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6094761257%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6094961264%_)
                                                  (let ((_%e6095061267%_
                                                         (gx#syntax-e
                                                          _%tl6094961264%_)))
                                                    (let ((_%tl6095261274%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6095061267%_)))
                                                          (_%hd6095161271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6095061267%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6095261274%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl6084461655%_)
                                                              (let ((_%__splice102594102595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl6084461655%_
                              '0)))
                        (let ((_%tl6095561280%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102594102595%_ '1)))
                              (_%target6095361277%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102594102595%_ '0))))
                          (if (gx#stx-null? _%tl6095561280%_)
                              (_%__match102852102853%_
                               _%e6083961638%_
                               _%hd6084061642%_
                               _%tl6084161645%_
                               _%e6084261648%_
                               _%hd6084361652%_
                               _%tl6084461655%_
                               _%e6084561658%_
                               _%hd6084661662%_
                               _%tl6084761665%_
                               _%e6084861668%_
                               _%hd6084961672%_
                               _%tl6085061675%_
                               _%e6085161678%_
                               _%hd6085261682%_
                               _%tl6085361685%_
                               _%e6094761257%_
                               _%hd6094861261%_
                               _%tl6094961264%_
                               _%e6095061267%_
                               _%hd6095161271%_
                               _%tl6095261274%_
                               _%__splice102594102595%_
                               _%target6095361277%_
                               _%tl6095561280%_)
                              (if (gx#stx-pair? _%hd6084661662%_)
                                  (let ((_%e6097561127%_
                                         (gx#syntax-e _%hd6084661662%_)))
                                    (let ((_%tl6097761134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6097561127%_)))
                                          (_%hd6097661131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6097561127%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))))
                      (if (gx#stx-pair? _%hd6084661662%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6084661662%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                  (if (gx#stx-pair? _%hd6084661662%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6084661662%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (if (gx#stx-pair/null? _%tl6084461655%_)
                              (let ((_%__splice102598102599%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6084461655%_
                                      '0)))
                                (let ((_%tl6098061140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '1)))
                                      (_%target6097861137%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6098061140%_)
                                      (_%__match102884102885%_
                                       _%e6083961638%_
                                       _%hd6084061642%_
                                       _%tl6084161645%_
                                       _%e6084261648%_
                                       _%hd6084361652%_
                                       _%tl6084461655%_
                                       _%e6084561658%_
                                       _%hd6084661662%_
                                       _%tl6084761665%_
                                       _%e6097561127%_
                                       _%hd6097661131%_
                                       _%tl6097761134%_
                                       _%__splice102598102599%_
                                       _%target6097861137%_
                                       _%tl6098061140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd6084661662%_)
                                                      (let ((_%e6097561127%_
                                                             (gx#syntax-e
                                                              _%hd6084661662%_)))
                                                        (let ((_%tl6097761134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6097561127%_)))
                      (_%hd6097661131%_
                       (let () (declare (not safe)) (##car _%e6097561127%_))))
                  (if (gx#stx-pair/null? _%tl6084461655%_)
                      (let ((_%__splice102598102599%_
                             (gx#syntax-split-splice->vector
                              _%tl6084461655%_
                              '0)))
                        (let ((_%tl6098061140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '1)))
                              (_%target6097861137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '0))))
                          (if (gx#stx-null? _%tl6098061140%_)
                              (_%__match102884102885%_
                               _%e6083961638%_
                               _%hd6084061642%_
                               _%tl6084161645%_
                               _%e6084261648%_
                               _%hd6084361652%_
                               _%tl6084461655%_
                               _%e6084561658%_
                               _%hd6084661662%_
                               _%tl6084761665%_
                               _%e6097561127%_
                               _%hd6097661131%_
                               _%tl6097761134%_
                               _%__splice102598102599%_
                               _%target6097861137%_
                               _%tl6098061140%_)
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd6084661662%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6084661662%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6084461655%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6084461655%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6083961638%_
                       _%hd6084061642%_
                       _%tl6084161645%_
                       _%e6084261648%_
                       _%hd6084361652%_
                       _%tl6084461655%_
                       _%e6084561658%_
                       _%hd6084661662%_
                       _%tl6084761665%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                      (if (gx#stx-pair? _%hd6084661662%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6084661662%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6084461655%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6084461655%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6083961638%_
                                                           _%hd6084061642%_
                                                           _%tl6084161645%_
                                                           _%e6084261648%_
                                                           _%hd6084361652%_
                                                           _%tl6084461655%_
                                                           _%e6084561658%_
                                                           _%hd6084661662%_
                                                           _%tl6084761665%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                  (if (gx#stx-pair? _%hd6084661662%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6084661662%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6084461655%_)
                                              (let ((_%__splice102598102599%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6084461655%_
                                                      '0)))
                                                (let ((_%tl6098061140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '1)))
                                                      (_%target6097861137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6098061140%_)
                                                      (_%__match102884102885%_
                                                       _%e6083961638%_
                                                       _%hd6084061642%_
                                                       _%tl6084161645%_
                                                       _%e6084261648%_
                                                       _%hd6084361652%_
                                                       _%tl6084461655%_
                                                       _%e6084561658%_
                                                       _%hd6084661662%_
                                                       _%tl6084761665%_
                                                       _%e6097561127%_
                                                       _%hd6097661131%_
                                                       _%tl6097761134%_
                                                       _%__splice102598102599%_
                                                       _%target6097861137%_
                                                       _%tl6098061140%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6079961008%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))))
                   (_%__match102650102651%_
                    (lambda (_%e6080661812%_
                             _%hd6080761816%_
                             _%tl6080861819%_
                             _%e6080961822%_
                             _%hd6081061826%_
                             _%tl6081161829%_
                             _%e6081261832%_
                             _%hd6081361836%_
                             _%tl6081461839%_
                             _%e6081561842%_
                             _%hd6081661846%_
                             _%tl6081761849%_
                             _%e6081861852%_
                             _%hd6081961856%_
                             _%tl6082061859%_
                             _%e6082161862%_
                             _%hd6082261866%_
                             _%tl6082361869%_
                             _%__splice102578102579%_
                             _%target6082461872%_
                             _%tl6082661875%_)
                      (letrec ((_%loop6082761878%_
                                (lambda (_%hd6082561882%_ _%body6083161885%_)
                                  (if (gx#stx-pair? _%hd6082561882%_)
                                      (let ((_%e6082861887%_
                                             (gx#syntax-e _%hd6082561882%_)))
                                        (let ((_%lp-tl6083061894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6082861887%_)))
                                              (_%lp-hd6082961891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6082861887%_))))
                                          (_%loop6082761878%_
                                           _%lp-tl6083061894%_
                                           (cons _%lp-hd6082961891%_
                                                 _%body6083161885%_))))
                                      (let ((_%body6083261897%_
                                             (reverse _%body6083161885%_)))
                                        (let ((_%g6080161900%_
                                               _%body6083261897%_)
                                              (_%g6080261902%_
                                               _%hd6082261866%_)
                                              (_%g6080361903%_
                                               _%hd6081961856%_)
                                              (_%g6080461904%_
                                               _%hd6081661846%_)
                                              (_%g6080561905%_
                                               _%hd6081361836%_))
                                          (if (and (gx#identifier?
                                                    _%g6080561905%_)
                                                   (gx#identifier?
                                                    _%g6080361903%_)
                                                   (or (gx#free-identifier=?
                                                        _%g6080361903%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g6080361903%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g6080361903%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g6080361903%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g6080361903%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont102576102577%_
                                               _%g6080161900%_
                                               _%g6080261902%_
                                               _%g6080361903%_
                                               _%g6080461904%_
                                               _%g6080561905%_)
                                              (_%__match102680102681%_
                                               _%e6080661812%_
                                               _%hd6080761816%_
                                               _%tl6080861819%_
                                               _%e6080961822%_
                                               _%hd6081061826%_
                                               _%tl6081161829%_
                                               _%e6081261832%_
                                               _%hd6081361836%_
                                               _%tl6081461839%_
                                               _%e6081561842%_
                                               _%hd6081661846%_
                                               _%tl6081761849%_
                                               _%e6081861852%_
                                               _%hd6081961856%_
                                               _%tl6082061859%_))))))))
                        (_%loop6082761878%_ _%target6082461872%_ '())))))
              (if (gx#stx-pair? _%__stx102573102574%_)
                  (let ((_%e6080661812%_ (gx#syntax-e _%__stx102573102574%_)))
                    (let ((_%tl6080861819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6080661812%_)))
                          (_%hd6080761816%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6080661812%_))))
                      (if (gx#stx-pair? _%tl6080861819%_)
                          (let ((_%e6080961822%_
                                 (gx#syntax-e _%tl6080861819%_)))
                            (let ((_%tl6081161829%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6080961822%_)))
                                  (_%hd6081061826%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6080961822%_))))
                              (if (gx#stx-pair? _%hd6081061826%_)
                                  (let ((_%e6081261832%_
                                         (gx#syntax-e _%hd6081061826%_)))
                                    (let ((_%tl6081461839%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6081261832%_)))
                                          (_%hd6081361836%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6081261832%_))))
                                      (if (gx#stx-pair? _%tl6081461839%_)
                                          (let ((_%e6081561842%_
                                                 (gx#syntax-e
                                                  _%tl6081461839%_)))
                                            (let ((_%tl6081761849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6081561842%_)))
                                                  (_%hd6081661846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6081561842%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6081761849%_)
                                                  (let ((_%e6081861852%_
                                                         (gx#syntax-e
                                                          _%tl6081761849%_)))
                                                    (let ((_%tl6082061859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6081861852%_)))
                                                          (_%hd6081961856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6081861852%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6082061859%_)
                                                          (let ((_%e6082161862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6082061859%_)))
                    (let ((_%tl6082361869%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6082161862%_)))
                          (_%hd6082261866%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6082161862%_))))
                      (if (gx#stx-null? _%tl6082361869%_)
                          (if (gx#stx-pair/null? _%tl6081161829%_)
                              (let ((_%__splice102578102579%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6081161829%_
                                      '0)))
                                (let ((_%tl6082661875%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102578102579%_
                                          '1)))
                                      (_%target6082461872%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102578102579%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6082661875%_)
                                      (_%__match102650102651%_
                                       _%e6080661812%_
                                       _%hd6080761816%_
                                       _%tl6080861819%_
                                       _%e6080961822%_
                                       _%hd6081061826%_
                                       _%tl6081161829%_
                                       _%e6081261832%_
                                       _%hd6081361836%_
                                       _%tl6081461839%_
                                       _%e6081561842%_
                                       _%hd6081661846%_
                                       _%tl6081761849%_
                                       _%e6081861852%_
                                       _%hd6081961856%_
                                       _%tl6082061859%_
                                       _%e6082161862%_
                                       _%hd6082261866%_
                                       _%tl6082361869%_
                                       _%__splice102578102579%_
                                       _%target6082461872%_
                                       _%tl6082661875%_)
                                      (if (gx#stx-pair? _%hd6081361836%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6081361836%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))))
                              (if (gx#stx-pair? _%hd6081361836%_)
                                  (let ((_%e6097561127%_
                                         (gx#syntax-e _%hd6081361836%_)))
                                    (let ((_%tl6097761134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6097561127%_)))
                                          (_%hd6097661131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6097561127%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                          (if (gx#identifier? _%hd6081961856%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g109236_|
                                   _%hd6081961856%_)
                                  (if (gx#stx-pair? _%tl6082361869%_)
                                      (let ((_%e6085761698%_
                                             (gx#syntax-e _%tl6082361869%_)))
                                        (let ((_%tl6085961705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6085761698%_)))
                                              (_%hd6085861702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6085761698%_))))
                                          (if (gx#stx-pair? _%tl6085961705%_)
                                              (let ((_%e6086061708%_
                                                     (gx#syntax-e
                                                      _%tl6085961705%_)))
                                                (let ((_%tl6086261715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6086061708%_)))
                                                      (_%hd6086161712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6086061708%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6086261715%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl6081161829%_)
                                                          (let ((_%__splice102582102583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl6081161829%_ '0)))
                    (let ((_%tl6086561721%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102582102583%_ '1)))
                          (_%target6086361718%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102582102583%_ '0))))
                      (if (gx#stx-null? _%tl6086561721%_)
                          (_%__match102712102713%_
                           _%e6080661812%_
                           _%hd6080761816%_
                           _%tl6080861819%_
                           _%e6080961822%_
                           _%hd6081061826%_
                           _%tl6081161829%_
                           _%e6081261832%_
                           _%hd6081361836%_
                           _%tl6081461839%_
                           _%e6081561842%_
                           _%hd6081661846%_
                           _%tl6081761849%_
                           _%e6081861852%_
                           _%hd6081961856%_
                           _%tl6082061859%_
                           _%e6082161862%_
                           _%hd6082261866%_
                           _%tl6082361869%_
                           _%e6085761698%_
                           _%hd6085861702%_
                           _%tl6085961705%_
                           _%e6086061708%_
                           _%hd6086161712%_
                           _%tl6086261715%_
                           _%__splice102582102583%_
                           _%target6086361718%_
                           _%tl6086561721%_)
                          (if (gx#stx-pair? _%hd6081361836%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6081361836%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_))))))
                  (if (gx#stx-pair? _%hd6081361836%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
              (if (gx#stx-pair? _%hd6081361836%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6081161829%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6081161829%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6080661812%_
                                   _%hd6080761816%_
                                   _%tl6080861819%_
                                   _%e6080961822%_
                                   _%hd6081061826%_
                                   _%tl6081161829%_
                                   _%e6081261832%_
                                   _%hd6081361836%_
                                   _%tl6081461839%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd6081661846%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g109235_|
                                                       _%hd6081661846%_)
                                                      (if (gx#stx-null?
                                                           _%tl6085961705%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl6081161829%_)
                                                              (let ((_%__splice102594102595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl6081161829%_
                              '0)))
                        (let ((_%tl6095561280%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102594102595%_ '1)))
                              (_%target6095361277%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102594102595%_ '0))))
                          (if (gx#stx-null? _%tl6095561280%_)
                              (_%__match102852102853%_
                               _%e6080661812%_
                               _%hd6080761816%_
                               _%tl6080861819%_
                               _%e6080961822%_
                               _%hd6081061826%_
                               _%tl6081161829%_
                               _%e6081261832%_
                               _%hd6081361836%_
                               _%tl6081461839%_
                               _%e6081561842%_
                               _%hd6081661846%_
                               _%tl6081761849%_
                               _%e6081861852%_
                               _%hd6081961856%_
                               _%tl6082061859%_
                               _%e6082161862%_
                               _%hd6082261866%_
                               _%tl6082361869%_
                               _%e6085761698%_
                               _%hd6085861702%_
                               _%tl6085961705%_
                               _%__splice102594102595%_
                               _%target6095361277%_
                               _%tl6095561280%_)
                              (if (gx#stx-pair? _%hd6081361836%_)
                                  (let ((_%e6097561127%_
                                         (gx#syntax-e _%hd6081361836%_)))
                                    (let ((_%tl6097761134%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6097561127%_)))
                                          (_%hd6097661131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6097561127%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))))
                      (if (gx#stx-pair? _%hd6081361836%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6081361836%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                  (if (gx#stx-pair? _%hd6081361836%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (if (gx#stx-pair/null? _%tl6081161829%_)
                              (let ((_%__splice102598102599%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6081161829%_
                                      '0)))
                                (let ((_%tl6098061140%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '1)))
                                      (_%target6097861137%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice102598102599%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6098061140%_)
                                      (_%__match102884102885%_
                                       _%e6080661812%_
                                       _%hd6080761816%_
                                       _%tl6080861819%_
                                       _%e6080961822%_
                                       _%hd6081061826%_
                                       _%tl6081161829%_
                                       _%e6081261832%_
                                       _%hd6081361836%_
                                       _%tl6081461839%_
                                       _%e6097561127%_
                                       _%hd6097661131%_
                                       _%tl6097761134%_
                                       _%__splice102598102599%_
                                       _%target6097861137%_
                                       _%tl6098061140%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
              (if (gx#stx-pair? _%hd6081361836%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6081161829%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6081161829%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6080661812%_
                                   _%hd6080761816%_
                                   _%tl6080861819%_
                                   _%e6080961822%_
                                   _%hd6081061826%_
                                   _%tl6081161829%_
                                   _%e6081261832%_
                                   _%hd6081361836%_
                                   _%tl6081461839%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd6081361836%_)
                                                      (let ((_%e6097561127%_
                                                             (gx#syntax-e
                                                              _%hd6081361836%_)))
                                                        (let ((_%tl6097761134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6097561127%_)))
                      (_%hd6097661131%_
                       (let () (declare (not safe)) (##car _%e6097561127%_))))
                  (if (gx#stx-pair/null? _%tl6081161829%_)
                      (let ((_%__splice102598102599%_
                             (gx#syntax-split-splice->vector
                              _%tl6081161829%_
                              '0)))
                        (let ((_%tl6098061140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '1)))
                              (_%target6097861137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '0))))
                          (if (gx#stx-null? _%tl6098061140%_)
                              (_%__match102884102885%_
                               _%e6080661812%_
                               _%hd6080761816%_
                               _%tl6080861819%_
                               _%e6080961822%_
                               _%hd6081061826%_
                               _%tl6081161829%_
                               _%e6081261832%_
                               _%hd6081361836%_
                               _%tl6081461839%_
                               _%e6097561127%_
                               _%hd6097661131%_
                               _%tl6097761134%_
                               _%__splice102598102599%_
                               _%target6097861137%_
                               _%tl6098061140%_)
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd6081361836%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6081361836%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6081161829%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6081161829%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6080661812%_
                                                           _%hd6080761816%_
                                                           _%tl6080861819%_
                                                           _%e6080961822%_
                                                           _%hd6081061826%_
                                                           _%tl6081161829%_
                                                           _%e6081261832%_
                                                           _%hd6081361836%_
                                                           _%tl6081461839%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                  (if (gx#identifier? _%hd6081661846%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g109235_|
                                           _%hd6081661846%_)
                                          (if (gx#stx-pair? _%tl6082361869%_)
                                              (let ((_%e6095061267%_
                                                     (gx#syntax-e
                                                      _%tl6082361869%_)))
                                                (let ((_%tl6095261274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6095061267%_)))
                                                      (_%hd6095161271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6095061267%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6095261274%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl6081161829%_)
                                                          (let ((_%__splice102594102595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl6081161829%_ '0)))
                    (let ((_%tl6095561280%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102594102595%_ '1)))
                          (_%target6095361277%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102594102595%_ '0))))
                      (if (gx#stx-null? _%tl6095561280%_)
                          (_%__match102852102853%_
                           _%e6080661812%_
                           _%hd6080761816%_
                           _%tl6080861819%_
                           _%e6080961822%_
                           _%hd6081061826%_
                           _%tl6081161829%_
                           _%e6081261832%_
                           _%hd6081361836%_
                           _%tl6081461839%_
                           _%e6081561842%_
                           _%hd6081661846%_
                           _%tl6081761849%_
                           _%e6081861852%_
                           _%hd6081961856%_
                           _%tl6082061859%_
                           _%e6082161862%_
                           _%hd6082261866%_
                           _%tl6082361869%_
                           _%e6095061267%_
                           _%hd6095161271%_
                           _%tl6095261274%_
                           _%__splice102594102595%_
                           _%target6095361277%_
                           _%tl6095561280%_)
                          (if (gx#stx-pair? _%hd6081361836%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6081361836%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_))))))
                  (if (gx#stx-pair? _%hd6081361836%_)
                      (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                        (let ((_%tl6097761134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6097561127%_)))
                              (_%hd6097661131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6097561127%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
              (if (gx#stx-pair? _%hd6081361836%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (if (gx#stx-pair/null? _%tl6081161829%_)
                          (let ((_%__splice102598102599%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6081161829%_
                                  '0)))
                            (let ((_%tl6098061140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '1)))
                                  (_%target6097861137%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102598102599%_
                                      '0))))
                              (if (gx#stx-null? _%tl6098061140%_)
                                  (_%__match102884102885%_
                                   _%e6080661812%_
                                   _%hd6080761816%_
                                   _%tl6080861819%_
                                   _%e6080961822%_
                                   _%hd6081061826%_
                                   _%tl6081161829%_
                                   _%e6081261832%_
                                   _%hd6081361836%_
                                   _%tl6081461839%_
                                   _%e6097561127%_
                                   _%hd6097661131%_
                                   _%tl6097761134%_
                                   _%__splice102598102599%_
                                   _%target6097861137%_
                                   _%tl6098061140%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd6081361836%_)
                                                  (let ((_%e6097561127%_
                                                         (gx#syntax-e
                                                          _%hd6081361836%_)))
                                                    (let ((_%tl6097761134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6097561127%_)))
                                                          (_%hd6097661131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6097561127%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl6081161829%_)
                                                          (let ((_%__splice102598102599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl6081161829%_ '0)))
                    (let ((_%tl6098061140%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '1)))
                          (_%target6097861137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice102598102599%_ '0))))
                      (if (gx#stx-null? _%tl6098061140%_)
                          (_%__match102884102885%_
                           _%e6080661812%_
                           _%hd6080761816%_
                           _%tl6080861819%_
                           _%e6080961822%_
                           _%hd6081061826%_
                           _%tl6081161829%_
                           _%e6081261832%_
                           _%hd6081361836%_
                           _%tl6081461839%_
                           _%e6097561127%_
                           _%hd6097661131%_
                           _%tl6097761134%_
                           _%__splice102598102599%_
                           _%target6097861137%_
                           _%tl6098061140%_)
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_))))
                                          (if (gx#stx-pair? _%hd6081361836%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6081361836%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6081161829%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6081161829%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6080661812%_
                       _%hd6080761816%_
                       _%tl6080861819%_
                       _%e6080961822%_
                       _%hd6081061826%_
                       _%tl6081161829%_
                       _%e6081261832%_
                       _%hd6081361836%_
                       _%tl6081461839%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                      (if (gx#stx-pair? _%hd6081361836%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6081361836%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6081161829%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6081161829%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6080661812%_
                                                           _%hd6080761816%_
                                                           _%tl6080861819%_
                                                           _%e6080961822%_
                                                           _%hd6081061826%_
                                                           _%tl6081161829%_
                                                           _%e6081261832%_
                                                           _%hd6081361836%_
                                                           _%tl6081461839%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                              (if (gx#identifier? _%hd6081661846%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g109235_|
                                       _%hd6081661846%_)
                                      (if (gx#stx-pair? _%tl6082361869%_)
                                          (let ((_%e6095061267%_
                                                 (gx#syntax-e
                                                  _%tl6082361869%_)))
                                            (let ((_%tl6095261274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6095061267%_)))
                                                  (_%hd6095161271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6095061267%_))))
                                              (if (gx#stx-null?
                                                   _%tl6095261274%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl6081161829%_)
                                                      (let ((_%__splice102594102595%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6081161829%_
                                                              '0)))
                                                        (let ((_%tl6095561280%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102594102595%_ '1)))
                      (_%target6095361277%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102594102595%_ '0))))
                  (if (gx#stx-null? _%tl6095561280%_)
                      (_%__match102852102853%_
                       _%e6080661812%_
                       _%hd6080761816%_
                       _%tl6080861819%_
                       _%e6080961822%_
                       _%hd6081061826%_
                       _%tl6081161829%_
                       _%e6081261832%_
                       _%hd6081361836%_
                       _%tl6081461839%_
                       _%e6081561842%_
                       _%hd6081661846%_
                       _%tl6081761849%_
                       _%e6081861852%_
                       _%hd6081961856%_
                       _%tl6082061859%_
                       _%e6082161862%_
                       _%hd6082261866%_
                       _%tl6082361869%_
                       _%e6095061267%_
                       _%hd6095161271%_
                       _%tl6095261274%_
                       _%__splice102594102595%_
                       _%target6095361277%_
                       _%tl6095561280%_)
                      (if (gx#stx-pair? _%hd6081361836%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6081361836%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                          (let () (declare (not safe)) (_%g6079961008%_))))))
              (if (gx#stx-pair? _%hd6081361836%_)
                  (let ((_%e6097561127%_ (gx#syntax-e _%hd6081361836%_)))
                    (let ((_%tl6097761134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6097561127%_)))
                          (_%hd6097661131%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6097561127%_))))
                      (let () (declare (not safe)) (_%g6079961008%_))))
                  (let () (declare (not safe)) (_%g6079961008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd6081361836%_)
                                                      (let ((_%e6097561127%_
                                                             (gx#syntax-e
                                                              _%hd6081361836%_)))
                                                        (let ((_%tl6097761134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6097561127%_)))
                      (_%hd6097661131%_
                       (let () (declare (not safe)) (##car _%e6097561127%_))))
                  (if (gx#stx-pair/null? _%tl6081161829%_)
                      (let ((_%__splice102598102599%_
                             (gx#syntax-split-splice->vector
                              _%tl6081161829%_
                              '0)))
                        (let ((_%tl6098061140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '1)))
                              (_%target6097861137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '0))))
                          (if (gx#stx-null? _%tl6098061140%_)
                              (_%__match102884102885%_
                               _%e6080661812%_
                               _%hd6080761816%_
                               _%tl6080861819%_
                               _%e6080961822%_
                               _%hd6081061826%_
                               _%tl6081161829%_
                               _%e6081261832%_
                               _%hd6081361836%_
                               _%tl6081461839%_
                               _%e6097561127%_
                               _%hd6097661131%_
                               _%tl6097761134%_
                               _%__splice102598102599%_
                               _%target6097861137%_
                               _%tl6098061140%_)
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd6081361836%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6081361836%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6081161829%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6081161829%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6080661812%_
                       _%hd6080761816%_
                       _%tl6080861819%_
                       _%e6080961822%_
                       _%hd6081061826%_
                       _%tl6081161829%_
                       _%e6081261832%_
                       _%hd6081361836%_
                       _%tl6081461839%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))
                                      (if (gx#stx-pair? _%hd6081361836%_)
                                          (let ((_%e6097561127%_
                                                 (gx#syntax-e
                                                  _%hd6081361836%_)))
                                            (let ((_%tl6097761134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6097561127%_)))
                                                  (_%hd6097661131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6097561127%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl6081161829%_)
                                                  (let ((_%__splice102598102599%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6081161829%_
                                                          '0)))
                                                    (let ((_%tl6098061140%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '1)))
                                                          (_%target6097861137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice102598102599%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6098061140%_)
                                                          (_%__match102884102885%_
                                                           _%e6080661812%_
                                                           _%hd6080761816%_
                                                           _%tl6080861819%_
                                                           _%e6080961822%_
                                                           _%hd6081061826%_
                                                           _%tl6081161829%_
                                                           _%e6081261832%_
                                                           _%hd6081361836%_
                                                           _%tl6081461839%_
                                                           _%e6097561127%_
                                                           _%hd6097661131%_
                                                           _%tl6097761134%_
                                                           _%__splice102598102599%_
                                                           _%target6097861137%_
                                                           _%tl6098061140%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6079961008%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                  (if (gx#stx-pair? _%hd6081361836%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6081361836%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6081161829%_)
                                              (let ((_%__splice102598102599%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6081161829%_
                                                      '0)))
                                                (let ((_%tl6098061140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '1)))
                                                      (_%target6097861137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice102598102599%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6098061140%_)
                                                      (_%__match102884102885%_
                                                       _%e6080661812%_
                                                       _%hd6080761816%_
                                                       _%tl6080861819%_
                                                       _%e6080961822%_
                                                       _%hd6081061826%_
                                                       _%tl6081161829%_
                                                       _%e6081261832%_
                                                       _%hd6081361836%_
                                                       _%tl6081461839%_
                                                       _%e6097561127%_
                                                       _%hd6097661131%_
                                                       _%tl6097761134%_
                                                       _%__splice102598102599%_
                                                       _%target6097861137%_
                                                       _%tl6098061140%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6079961008%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))))
                  (if (gx#stx-null? _%tl6082061859%_)
                      (if (gx#stx-pair/null? _%tl6081161829%_)
                          (let ((_%__splice102586102587%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6081161829%_
                                  '0)))
                            (let ((_%tl6089361540%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102586102587%_
                                      '1)))
                                  (_%target6089161537%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice102586102587%_
                                      '0))))
                              (if (gx#stx-null? _%tl6089361540%_)
                                  (_%__match102752102753%_
                                   _%e6080661812%_
                                   _%hd6080761816%_
                                   _%tl6080861819%_
                                   _%e6080961822%_
                                   _%hd6081061826%_
                                   _%tl6081161829%_
                                   _%e6081261832%_
                                   _%hd6081361836%_
                                   _%tl6081461839%_
                                   _%e6081561842%_
                                   _%hd6081661846%_
                                   _%tl6081761849%_
                                   _%e6081861852%_
                                   _%hd6081961856%_
                                   _%tl6082061859%_
                                   _%__splice102586102587%_
                                   _%target6089161537%_
                                   _%tl6089361540%_)
                                  (if (gx#stx-pair? _%hd6081361836%_)
                                      (let ((_%e6097561127%_
                                             (gx#syntax-e _%hd6081361836%_)))
                                        (let ((_%tl6097761134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6097561127%_)))
                                              (_%hd6097661131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6097561127%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))
                          (if (gx#stx-pair? _%hd6081361836%_)
                              (let ((_%e6097561127%_
                                     (gx#syntax-e _%hd6081361836%_)))
                                (let ((_%tl6097761134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6097561127%_)))
                                      (_%hd6097661131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6097561127%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_))))
                              (let () (declare (not safe)) (_%g6079961008%_))))
                      (if (gx#stx-pair? _%hd6081361836%_)
                          (let ((_%e6097561127%_
                                 (gx#syntax-e _%hd6081361836%_)))
                            (let ((_%tl6097761134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6097561127%_)))
                                  (_%hd6097661131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6097561127%_))))
                              (if (gx#stx-pair/null? _%tl6081161829%_)
                                  (let ((_%__splice102598102599%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6081161829%_
                                          '0)))
                                    (let ((_%tl6098061140%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '1)))
                                          (_%target6097861137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice102598102599%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6098061140%_)
                                          (_%__match102884102885%_
                                           _%e6080661812%_
                                           _%hd6080761816%_
                                           _%tl6080861819%_
                                           _%e6080961822%_
                                           _%hd6081061826%_
                                           _%tl6081161829%_
                                           _%e6081261832%_
                                           _%hd6081361836%_
                                           _%tl6081461839%_
                                           _%e6097561127%_
                                           _%hd6097661131%_
                                           _%tl6097761134%_
                                           _%__splice102598102599%_
                                           _%target6097861137%_
                                           _%tl6098061140%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6079961008%_)))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd6081361836%_)
                                                      (let ((_%e6097561127%_
                                                             (gx#syntax-e
                                                              _%hd6081361836%_)))
                                                        (let ((_%tl6097761134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6097561127%_)))
                      (_%hd6097661131%_
                       (let () (declare (not safe)) (##car _%e6097561127%_))))
                  (if (gx#stx-pair/null? _%tl6081161829%_)
                      (let ((_%__splice102598102599%_
                             (gx#syntax-split-splice->vector
                              _%tl6081161829%_
                              '0)))
                        (let ((_%tl6098061140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '1)))
                              (_%target6097861137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice102598102599%_ '0))))
                          (if (gx#stx-null? _%tl6098061140%_)
                              (_%__match102884102885%_
                               _%e6080661812%_
                               _%hd6080761816%_
                               _%tl6080861819%_
                               _%e6080961822%_
                               _%hd6081061826%_
                               _%tl6081161829%_
                               _%e6081261832%_
                               _%hd6081361836%_
                               _%tl6081461839%_
                               _%e6097561127%_
                               _%hd6097661131%_
                               _%tl6097761134%_
                               _%__splice102598102599%_
                               _%target6097861137%_
                               _%tl6098061140%_)
                              (let ()
                                (declare (not safe))
                                (_%g6079961008%_)))))
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd6081361836%_)
                                              (let ((_%e6097561127%_
                                                     (gx#syntax-e
                                                      _%hd6081361836%_)))
                                                (let ((_%tl6097761134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6097561127%_)))
                                                      (_%hd6097661131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6097561127%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6081161829%_)
                                                      (let ((_%__splice102598102599%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6081161829%_
                                                              '0)))
                                                        (let ((_%tl6098061140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '1)))
                      (_%target6097861137%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice102598102599%_ '0))))
                  (if (gx#stx-null? _%tl6098061140%_)
                      (_%__match102884102885%_
                       _%e6080661812%_
                       _%hd6080761816%_
                       _%tl6080861819%_
                       _%e6080961822%_
                       _%hd6081061826%_
                       _%tl6081161829%_
                       _%e6081261832%_
                       _%hd6081361836%_
                       _%tl6081461839%_
                       _%e6097561127%_
                       _%hd6097661131%_
                       _%tl6097761134%_
                       _%__splice102598102599%_
                       _%target6097861137%_
                       _%tl6098061140%_)
                      (let () (declare (not safe)) (_%g6079961008%_)))))
              (let () (declare (not safe)) (_%g6079961008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6079961008%_))))))
                                  (if (gx#stx-null? _%hd6081061826%_)
                                      (if (gx#stx-pair/null? _%tl6081161829%_)
                                          (let ((_%__splice102602102603%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6081161829%_
                                                  '0)))
                                            (let ((_%tl6099661038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102602102603%_
                                                      '1)))
                                                  (_%target6099461035%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice102602102603%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6099661038%_)
                                                  (_%__match102906102907%_
                                                   _%e6080661812%_
                                                   _%hd6080761816%_
                                                   _%tl6080861819%_
                                                   _%e6080961822%_
                                                   _%hd6081061826%_
                                                   _%tl6081161829%_
                                                   _%__splice102602102603%_
                                                   _%target6099461035%_
                                                   _%tl6099661038%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6079961008%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6079961008%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6079961008%_))))))
                          (let () (declare (not safe)) (_%g6079961008%_)))))
                  (let () (declare (not safe)) (_%g6079961008%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx61968%_)
        (let* ((_%g6197262006%_
                (lambda (_%g6197362002%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6197362002%_)))
               (_%g6197162127%_
                (lambda (_%g6197362010%_)
                  (if (gx#stx-pair? _%g6197362010%_)
                      (let ((_%e6197762013%_ (gx#syntax-e _%g6197362010%_)))
                        (let ((_%hd6197862017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6197762013%_)))
                              (_%tl6197962020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6197762013%_))))
                          (if (gx#stx-pair? _%tl6197962020%_)
                              (let ((_%e6198062023%_
                                     (gx#syntax-e _%tl6197962020%_)))
                                (let ((_%hd6198162027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6198062023%_)))
                                      (_%tl6198262030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6198062023%_))))
                                  (if (gx#stx-pair? _%hd6198162027%_)
                                      (let ((_%e6198362033%_
                                             (gx#syntax-e _%hd6198162027%_)))
                                        (let ((_%hd6198462037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6198362033%_)))
                                              (_%tl6198562040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6198362033%_))))
                                          (if (gx#stx-pair? _%tl6198562040%_)
                                              (let ((_%e6198662043%_
                                                     (gx#syntax-e
                                                      _%tl6198562040%_)))
                                                (let ((_%hd6198762047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6198662043%_)))
                                                      (_%tl6198862050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6198662043%_))))
                                                  (if (gx#identifier?
                                                       _%hd6198762047%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g109237_|
                                                           _%hd6198762047%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6198862050%_)
                                                              (let ((_%e6198962053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6198862050%_)))
                        (let ((_%hd6199062057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6198962053%_)))
                              (_%tl6199162060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6198962053%_))))
                          (if (gx#stx-null? _%tl6199162060%_)
                              (if (gx#stx-pair/null? _%tl6198262030%_)
                                  (let ((_g109238_
                                         (gx#syntax-split-splice
                                          _%tl6198262030%_
                                          '0)))
                                    (begin
                                      (let ((_g109239_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g109238_)
                                                   (##values-length _g109238_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g109239_ 2)))
                                            (error "Context expects 2 values"
                                                   _g109239_)))
                                      (let ((_%target6199262063%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g109238_ 0)))
                                            (_%tl6199462066%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g109238_ 1))))
                                        (if (gx#stx-null? _%tl6199462066%_)
                                            (letrec ((_%loop6199562069%_
                                                      (lambda (_%hd6199362073%_
                                                               _%body6199962076%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6199362073%_)
                                                            (let ((_%e6199662078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6199362073%_)))
                      (let ((_%lp-hd6199762082%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6199662078%_)))
                            (_%lp-tl6199862085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6199662078%_))))
                        (_%loop6199562069%_
                         _%lp-tl6199862085%_
                         (cons _%lp-hd6199762082%_ _%body6199962076%_))))
                    (let ((_%body6200062088%_ (reverse _%body6199962076%_)))
                      ((lambda (_%g6197462091%_
                                _%g6197562093%_
                                _%g6197662094%_)
                         (if (gx#identifier? _%g6197662094%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%g6197562093%_
                                               (cons _%g6197662094%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g6211862121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g6211962124%_)
                            (cons _%g6211862121%_ _%g6211962124%_))
                          '()
                          _%g6197462091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%g6197662094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g6197562093%_ (cons _%g6197662094%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g6197262006%_ _%g6197362010%_)))
                       _%body6200062088%_
                       _%hd6199062057%_
                       _%hd6198462037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6199562069%_
                                               _%target6199262063%_
                                               '()))
                                            (_%g6197262006%_
                                             _%g6197362010%_)))))
                                  (_%g6197262006%_ _%g6197362010%_))
                              (_%g6197262006%_ _%g6197362010%_))))
                      (_%g6197262006%_ _%g6197362010%_))
                  (_%g6197262006%_ _%g6197362010%_))
              (_%g6197262006%_ _%g6197362010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6197262006%_
                                               _%g6197362010%_))))
                                      (_%g6197262006%_ _%g6197362010%_))))
                              (_%g6197262006%_ _%g6197362010%_))))
                      (_%g6197262006%_ _%g6197362010%_)))))
          (_%g6197162127%_ _%$stx61968%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass62691%_ _%slot62693%_)
        (let ((_%$e62695%_
               (let ((__obj109041 _%klass62691%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj109041
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj109041 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj109041
                      'slot-types)))))
          (if _%$e62695%_
              ((lambda (_%slot-types62699%_)
                 (agetq _%slot62693%_ _%slot-types62699%_))
               _%$e62695%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass62672%_ _%slot62674%_)
        (let ((_%$e62676%_
               (let ((__obj109042 _%klass62672%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj109042
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj109042 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj109042
                      'slot-defaults)))))
          (if _%$e62676%_
              ((lambda (_%slot-defaults62680%_)
                 (let ((_%$e62683%_
                        (agetq _%slot62674%_ _%slot-defaults62680%_)))
                   (if _%$e62683%_
                       (gx#syntax-local-introduce _%$e62683%_)
                       '#f)))
               _%$e62676%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass62653%_ _%slot62655%_)
        (let ((_%$e62657%_
               (let ((__obj109043 _%klass62653%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj109043
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj109043 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj109043
                      'slot-defaults)))))
          (if _%$e62657%_
              ((lambda (_%slot-defaults62661%_)
                 (let ((_%$e62664%_
                        (agetq _%slot62655%_ _%slot-defaults62661%_)))
                   (if _%$e62664%_
                       (gx#syntax-local-introduce _%$e62664%_)
                       '#f)))
               _%$e62657%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass62422%_ _%slot62424%_)
        (let ((_%contract6242562427%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass62422%_
                _%slot62424%_)))
          (if _%contract6242562427%_
              (let* ((_%contract62430%_ _%contract6242562427%_)
                     (_%__stx102909102910%_ _%contract62430%_)
                     (_%g6243562472%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx102909102910%_))))
                (let ((_%__kont102912102913%_
                       (lambda (_%g6243762622%_ _%g6243862624%_)
                         (not (gx#free-identifier=?
                               _%g6243862624%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont102914102915%_
                       (lambda (_%g6244562562%_
                                _%g6244662564%_
                                _%g6244762565%_)
                         (not (gx#free-identifier=?
                               _%g6244662564%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont102916102917%_ (lambda (_%g6246062499%_) '#f)))
                  (let* ((_%__match102962102963%_
                          (lambda (_%e6244862522%_
                                   _%hd6244962526%_
                                   _%tl6245062529%_
                                   _%e6245162532%_
                                   _%hd6245262536%_
                                   _%tl6245362539%_
                                   _%e6245462542%_
                                   _%hd6245562546%_
                                   _%tl6245662549%_
                                   _%e6245762552%_
                                   _%hd6245862556%_
                                   _%tl6245962559%_)
                            (let ((_%g6244562562%_ _%hd6245862556%_)
                                  (_%g6244662564%_ _%hd6245562546%_)
                                  (_%g6244762565%_ _%hd6245262536%_))
                              (if (and (gx#identifier? _%g6244662564%_)
                                       (or (gx#free-identifier=?
                                            _%g6244662564%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g6244662564%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g6244662564%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g6244662564%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont102914102915%_
                                   _%g6244562562%_
                                   _%g6244662564%_
                                   _%g6244762565%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6243562472%_))))))
                         (_%__match102932102933%_
                          (lambda (_%e6243962602%_
                                   _%hd6244062606%_
                                   _%tl6244162609%_
                                   _%e6244262612%_
                                   _%hd6244362616%_
                                   _%tl6244462619%_)
                            (let ((_%g6243762622%_ _%hd6244362616%_)
                                  (_%g6243862624%_ _%hd6244062606%_))
                              (if (and (gx#identifier? _%g6243862624%_)
                                       (or (gx#free-identifier=?
                                            _%g6243862624%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g6243862624%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g6243862624%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g6243862624%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont102912102913%_
                                   _%g6243762622%_
                                   _%g6243862624%_)
                                  (if (gx#identifier? _%hd6244062606%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g109240_|
                                           _%hd6244062606%_)
                                          (_%__kont102916102917%_
                                           _%hd6244362616%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6243562472%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6243562472%_))))))))
                    (if (gx#stx-pair? _%__stx102909102910%_)
                        (let ((_%e6243962602%_
                               (gx#syntax-e _%__stx102909102910%_)))
                          (let ((_%tl6244162609%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6243962602%_)))
                                (_%hd6244062606%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6243962602%_))))
                            (if (gx#stx-pair? _%tl6244162609%_)
                                (let ((_%e6244262612%_
                                       (gx#syntax-e _%tl6244162609%_)))
                                  (let ((_%tl6244462619%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6244262612%_)))
                                        (_%hd6244362616%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6244262612%_))))
                                    (if (gx#stx-null? _%tl6244462619%_)
                                        (_%__match102932102933%_
                                         _%e6243962602%_
                                         _%hd6244062606%_
                                         _%tl6244162609%_
                                         _%e6244262612%_
                                         _%hd6244362616%_
                                         _%tl6244462619%_)
                                        (if (gx#identifier? _%hd6244062606%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g109240_|
                                                 _%hd6244062606%_)
                                                (if (gx#stx-pair?
                                                     _%tl6244462619%_)
                                                    (let ((_%e6245462542%_
                                                           (gx#syntax-e
                                                            _%tl6244462619%_)))
                                                      (let ((_%tl6245662549%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6245462542%_)))
                    (_%hd6245562546%_
                     (let () (declare (not safe)) (##car _%e6245462542%_))))
                (if (gx#stx-pair? _%tl6245662549%_)
                    (let ((_%e6245762552%_ (gx#syntax-e _%tl6245662549%_)))
                      (let ((_%tl6245962559%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6245762552%_)))
                            (_%hd6245862556%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6245762552%_))))
                        (if (gx#stx-null? _%tl6245962559%_)
                            (_%__match102962102963%_
                             _%e6243962602%_
                             _%hd6244062606%_
                             _%tl6244162609%_
                             _%e6244262612%_
                             _%hd6244362616%_
                             _%tl6244462619%_
                             _%e6245462542%_
                             _%hd6245562546%_
                             _%tl6245662549%_
                             _%e6245762552%_
                             _%hd6245862556%_
                             _%tl6245962559%_)
                            (let () (declare (not safe)) (_%g6243562472%_)))))
                    (let () (declare (not safe)) (_%g6243562472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6243562472%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6243562472%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6243562472%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6243562472%_)))))
                        (let () (declare (not safe)) (_%g6243562472%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass62191%_ _%slot62193%_)
        (let ((_%contract6219462196%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass62191%_
                _%slot62193%_)))
          (if _%contract6219462196%_
              (let* ((_%contract62199%_ _%contract6219462196%_)
                     (_%__stx102983102984%_ _%contract62199%_)
                     (_%g6220462241%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx102983102984%_))))
                (let ((_%__kont102986102987%_
                       (lambda (_%g6220662391%_ _%g6220762393%_)
                         (not (gx#free-identifier=?
                               _%g6220762393%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont102988102989%_
                       (lambda (_%g6221462331%_
                                _%g6221562333%_
                                _%g6221662334%_)
                         '#t))
                      (_%__kont102990102991%_ (lambda (_%g6222962268%_) '#t)))
                  (let* ((_%__match103036103037%_
                          (lambda (_%e6221762291%_
                                   _%hd6221862295%_
                                   _%tl6221962298%_
                                   _%e6222062301%_
                                   _%hd6222162305%_
                                   _%tl6222262308%_
                                   _%e6222362311%_
                                   _%hd6222462315%_
                                   _%tl6222562318%_
                                   _%e6222662321%_
                                   _%hd6222762325%_
                                   _%tl6222862328%_)
                            (let ((_%g6221462331%_ _%hd6222762325%_)
                                  (_%g6221562333%_ _%hd6222462315%_)
                                  (_%g6221662334%_ _%hd6222162305%_))
                              (if (and (gx#identifier? _%g6221562333%_)
                                       (or (gx#free-identifier=?
                                            _%g6221562333%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g6221562333%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g6221562333%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g6221562333%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont102988102989%_
                                   _%g6221462331%_
                                   _%g6221562333%_
                                   _%g6221662334%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6220462241%_))))))
                         (_%__match103006103007%_
                          (lambda (_%e6220862371%_
                                   _%hd6220962375%_
                                   _%tl6221062378%_
                                   _%e6221162381%_
                                   _%hd6221262385%_
                                   _%tl6221362388%_)
                            (let ((_%g6220662391%_ _%hd6221262385%_)
                                  (_%g6220762393%_ _%hd6220962375%_))
                              (if (and (gx#identifier? _%g6220762393%_)
                                       (or (gx#free-identifier=?
                                            _%g6220762393%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g6220762393%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g6220762393%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g6220762393%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont102986102987%_
                                   _%g6220662391%_
                                   _%g6220762393%_)
                                  (if (gx#identifier? _%hd6220962375%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g109241_|
                                           _%hd6220962375%_)
                                          (_%__kont102990102991%_
                                           _%hd6221262385%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6220462241%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6220462241%_))))))))
                    (if (gx#stx-pair? _%__stx102983102984%_)
                        (let ((_%e6220862371%_
                               (gx#syntax-e _%__stx102983102984%_)))
                          (let ((_%tl6221062378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6220862371%_)))
                                (_%hd6220962375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6220862371%_))))
                            (if (gx#stx-pair? _%tl6221062378%_)
                                (let ((_%e6221162381%_
                                       (gx#syntax-e _%tl6221062378%_)))
                                  (let ((_%tl6221362388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6221162381%_)))
                                        (_%hd6221262385%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6221162381%_))))
                                    (if (gx#stx-null? _%tl6221362388%_)
                                        (_%__match103006103007%_
                                         _%e6220862371%_
                                         _%hd6220962375%_
                                         _%tl6221062378%_
                                         _%e6221162381%_
                                         _%hd6221262385%_
                                         _%tl6221362388%_)
                                        (if (gx#identifier? _%hd6220962375%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g109241_|
                                                 _%hd6220962375%_)
                                                (if (gx#stx-pair?
                                                     _%tl6221362388%_)
                                                    (let ((_%e6222362311%_
                                                           (gx#syntax-e
                                                            _%tl6221362388%_)))
                                                      (let ((_%tl6222562318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6222362311%_)))
                    (_%hd6222462315%_
                     (let () (declare (not safe)) (##car _%e6222362311%_))))
                (if (gx#stx-pair? _%tl6222562318%_)
                    (let ((_%e6222662321%_ (gx#syntax-e _%tl6222562318%_)))
                      (let ((_%tl6222862328%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6222662321%_)))
                            (_%hd6222762325%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6222662321%_))))
                        (if (gx#stx-null? _%tl6222862328%_)
                            (_%__match103036103037%_
                             _%e6220862371%_
                             _%hd6220962375%_
                             _%tl6221062378%_
                             _%e6221162381%_
                             _%hd6221262385%_
                             _%tl6221362388%_
                             _%e6222362311%_
                             _%hd6222462315%_
                             _%tl6222562318%_
                             _%e6222662321%_
                             _%hd6222762325%_
                             _%tl6222862328%_)
                            (let () (declare (not safe)) (_%g6220462241%_)))))
                    (let () (declare (not safe)) (_%g6220462241%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6220462241%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6220462241%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6220462241%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6220462241%_)))))
                        (let () (declare (not safe)) (_%g6220462241%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id62178%_)
        (if (gx#identifier? _%id62178%_)
            (let* ((_%str62181%_ (symbol->string (gx#stx-e _%id62178%_)))
                   (_%index6218362185%_ (string-index _%str62181%_ '#\.)))
              (if _%index6218362185%_
                  (let ((_%index62188%_ _%index6218362185%_))
                    (if (let () (declare (not safe)) (##fx> _%index62188%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str62181%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx62171%_ _%id62173%_)
        (let ((_%parts62175%_
               (string-split (symbol->string (gx#stx-e _%id62173%_)) '#\.)))
          (if (find string-empty? _%parts62175%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx62171%_
               _%id62173%_)
              (cons (gx#stx-identifier _%id62173%_ (car _%parts62175%_))
                    (map string->symbol (cdr _%parts62175%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx62152%_ _%klass-or-id62154%_ _%slot62155%_)
        (let* ((_%klass62157%_
                (if (gx#identifier? _%klass-or-id62154%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx62152%_
                       _%klass-or-id62154%_))
                    _%klass-or-id62154%_))
               (_%accessors62160%_
                (let ((__obj109044 _%klass62157%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj109044
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj109044 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj109044
                       'unchecked-accessors))))
               (_%$e62165%_ (agetq _%slot62155%_ _%accessors62160%_)))
          (if _%$e62165%_
              _%$e62165%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx62152%_
               _%klass62157%_
               _%slot62155%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx62132%_
               _%klass-or-id62134%_
               _%slot62135%_
               _%checked?62136%_)
        (let* ((_%klass62138%_
                (if (gx#identifier? _%klass-or-id62134%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx62132%_
                       _%klass-or-id62134%_))
                    _%klass-or-id62134%_))
               (_%mutators62141%_
                (if _%checked?62136%_
                    (let ((__obj109045 _%klass62138%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj109045
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj109045
                             '16
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj109045
                           'mutators)))
                    (let ((__obj109046 _%klass62138%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj109046
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj109046
                             '18
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj109046
                           'unchecked-mutators)))))
               (_%$e62146%_ (agetq _%slot62135%_ _%mutators62141%_)))
          (if _%$e62146%_
              _%$e62146%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx62132%_
               _%klass62138%_
               _%slot62135%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx62704%_)
        (letrec ((_%expand-body62707%_
                  (lambda (_%klass63605%_
                           _%var63607%_
                           _%Type63608%_
                           _%body63609%_
                           _%checked?63610%_)
                    (let* ((_%g6361263656%_
                            (lambda (_%g6361363652%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6361363652%_)))
                           (_%g6361163811%_
                            (lambda (_%g6361363660%_)
                              (if (gx#stx-pair? _%g6361363660%_)
                                  (let ((_%e6362163663%_
                                         (gx#syntax-e _%g6361363660%_)))
                                    (let ((_%hd6362263667%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6362163663%_)))
                                          (_%tl6362363670%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6362163663%_))))
                                      (if (gx#stx-pair? _%tl6362363670%_)
                                          (let ((_%e6362463673%_
                                                 (gx#syntax-e
                                                  _%tl6362363670%_)))
                                            (let ((_%hd6362563677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6362463673%_)))
                                                  (_%tl6362663680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6362463673%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6362663680%_)
                                                  (let ((_%e6362763683%_
                                                         (gx#syntax-e
                                                          _%tl6362663680%_)))
                                                    (let ((_%hd6362863687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6362763683%_)))
                                                          (_%tl6362963690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6362763683%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6362963690%_)
                                                          (let ((_%e6363063693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6362963690%_)))
                    (let ((_%hd6363163697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6363063693%_)))
                          (_%tl6363263700%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6363063693%_))))
                      (if (gx#stx-pair? _%tl6363263700%_)
                          (let ((_%e6363363703%_
                                 (gx#syntax-e _%tl6363263700%_)))
                            (let ((_%hd6363463707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6363363703%_)))
                                  (_%tl6363563710%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6363363703%_))))
                              (if (gx#stx-pair? _%tl6363563710%_)
                                  (let ((_%e6363663713%_
                                         (gx#syntax-e _%tl6363563710%_)))
                                    (let ((_%hd6363763717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6363663713%_)))
                                          (_%tl6363863720%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6363663713%_))))
                                      (if (gx#stx-pair? _%tl6363863720%_)
                                          (let ((_%e6363963723%_
                                                 (gx#syntax-e
                                                  _%tl6363863720%_)))
                                            (let ((_%hd6364063727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6363963723%_)))
                                                  (_%tl6364163730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6363963723%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd6364063727%_)
                                                  (let ((_g109242_
                                                         (gx#syntax-split-splice
                                                          _%hd6364063727%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g109243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g109242_)
                           (##values-length _g109242_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109243_ 2)))
                    (error "Context expects 2 values" _g109243_)))
              (let ((_%target6364263733%_
                     (let () (declare (not safe)) (##values-ref _g109242_ 0)))
                    (_%tl6364463736%_
                     (let () (declare (not safe)) (##values-ref _g109242_ 1))))
                (if (gx#stx-null? _%tl6364463736%_)
                    (letrec ((_%loop6364563739%_
                              (lambda (_%hd6364363743%_ _%body6364963746%_)
                                (if (gx#stx-pair? _%hd6364363743%_)
                                    (let ((_%e6364663748%_
                                           (gx#syntax-e _%hd6364363743%_)))
                                      (let ((_%lp-hd6364763752%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6364663748%_)))
                                            (_%lp-tl6364863755%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6364663748%_))))
                                        (_%loop6364563739%_
                                         _%lp-tl6364863755%_
                                         (cons _%lp-hd6364763752%_
                                               _%body6364963746%_))))
                                    (let ((_%body6365063758%_
                                           (reverse _%body6364963746%_)))
                                      (if (gx#stx-null? _%tl6364163730%_)
                                          ((lambda (_%g6361463761%_
                                                    _%g6361563763%_
                                                    _%g6361663764%_
                                                    _%g6361763765%_
                                                    _%g6361863766%_
                                                    _%g6361963767%_
                                                    _%g6362063768%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g6361863766%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g6361963767%_ '()))
                                         (cons _%g6361863766%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g6362063768%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g6361863766%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g6361763765%_ '()))
                               (cons _%g6361663764%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g6361563763%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g6380263805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6380363808%_)
                      (cons _%g6380263805%_ _%g6380363808%_))
                    '()
                    _%g6361463761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body6365063758%_
                                           _%hd6363763717%_
                                           _%hd6363463707%_
                                           _%hd6363163697%_
                                           _%hd6362863687%_
                                           _%hd6362563677%_
                                           _%hd6362263667%_)
                                          (_%g6361263656%_
                                           _%g6361363660%_)))))))
                      (_%loop6364563739%_ _%target6364263733%_ '()))
                    (_%g6361263656%_ _%g6361363660%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6361263656%_
                                                   _%g6361363660%_))))
                                          (_%g6361263656%_ _%g6361363660%_))))
                                  (_%g6361263656%_ _%g6361363660%_))))
                          (_%g6361263656%_ _%g6361363660%_))))
                  (_%g6361263656%_ _%g6361363660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6361263656%_
                                                   _%g6361363660%_))))
                                          (_%g6361263656%_ _%g6361363660%_))))
                                  (_%g6361263656%_ _%g6361363660%_)))))
                      (_%g6361163811%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj109047 _%klass63605%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj109047
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj109047
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj109047
                                    'type-descriptor)))
                             _%var63607%_
                             _%klass63605%_
                             _%checked?63610%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body63609%_)))))
                 (_%expand62709%_
                  (lambda (_%var63497%_
                           _%Type63499%_
                           _%body63500%_
                           _%checked?63501%_
                           _%checked-mutators?63502%_
                           _%maybe?63503%_)
                    (let* ((_%klass63505%_
                            (gx#syntax-local-value _%Type63499%_ false))
                           (_%expr-body63512%_
                            (_%expand-body62707%_
                             _%klass63505%_
                             _%var63497%_
                             _%Type63499%_
                             _%body63500%_
                             (let ((_%$e63508%_ _%checked?63501%_))
                               (if _%$e63508%_
                                   _%$e63508%_
                                   _%checked-mutators?63502%_)))))
                      (if _%checked?63501%_
                          (let* ((_%g6351763536%_
                                  (lambda (_%g6351863532%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g6351863532%_)))
                                 (_%g6351663598%_
                                  (lambda (_%g6351863540%_)
                                    (if (gx#stx-pair? _%g6351863540%_)
                                        (let ((_%e6352263543%_
                                               (gx#syntax-e _%g6351863540%_)))
                                          (let ((_%hd6352363547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6352263543%_)))
                                                (_%tl6352463550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6352263543%_))))
                                            (if (gx#stx-pair? _%tl6352463550%_)
                                                (let ((_%e6352563553%_
                                                       (gx#syntax-e
                                                        _%tl6352463550%_)))
                                                  (let ((_%hd6352663557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6352563553%_)))
                                                        (_%tl6352763560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6352563553%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl6352763560%_)
                                                        (let ((_%e6352863563%_
                                                               (gx#syntax-e
                                                                _%tl6352763560%_)))
                                                          (let ((_%hd6352963567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e6352863563%_)))
                        (_%tl6353063570%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e6352863563%_))))
                    (if (gx#stx-null? _%tl6353063570%_)
                        ((lambda (_%g6351963573%_
                                  _%g6352063575%_
                                  _%g6352163576%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%g6352063575%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%g6352163576%_ '())))
                                       (cons _%g6351963573%_ '()))))
                         _%hd6352963567%_
                         _%hd6352663557%_
                         _%hd6352363547%_)
                        (_%g6351763536%_ _%g6351863540%_))))
                (_%g6351763536%_ _%g6351863540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g6351763536%_
                                                 _%g6351863540%_))))
                                        (_%g6351763536%_ _%g6351863540%_)))))
                            (_%g6351663598%_
                             (list (let ((_%instance?63602%_
                                          (let ((__obj109048 _%klass63505%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj109048
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj109048
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj109048
                                                 'predicate)))))
                                     (if _%maybe?63503%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?63602%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?63602%_))
                                   _%var63497%_
                                   _%expr-body63512%_)))
                          _%expr-body63512%_)))))
          (let* ((_%__stx103057103058%_ _%stx62704%_)
                 (_%g6271562858%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx103057103058%_))))
            (let ((_%__kont103060103061%_
                   (lambda (_%g6271763425%_
                            _%g6271863427%_
                            _%g6271963428%_
                            _%g6272063429%_)
                     (let* ((_%g6345463462%_
                             (lambda (_%g6345563458%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6345563458%_)))
                            (_%g6345363489%_
                             (lambda (_%g6345563466%_)
                               ((lambda (_%g6345663469%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%g6272063429%_
                                                    (cons _%g6271963428%_
                                                          (cons _%g6345663469%_
                                                                '())))
                                              (foldr (lambda (_%g6348063483%_
                                                              _%g6348163486%_)
                                                       (cons _%g6348063483%_
                                                             _%g6348163486%_))
                                                     '()
                                                     _%g6271763425%_))))
                                _%g6345563466%_))))
                       (_%g6345363489%_
                        (let ((__obj109049
                               (gx#syntax-local-value _%g6271863427%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj109049
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj109049
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj109049
                               'identifier)))))))
                  (_%__kont103064103065%_
                   (lambda (_%g6274563305%_ _%g6274663307%_ _%g6274763308%_)
                     (_%expand62709%_
                      _%g6274763308%_
                      _%g6274663307%_
                      (foldr (lambda (_%g6333163334%_ _%g6333263337%_)
                               (cons _%g6333163334%_ _%g6333263337%_))
                             '()
                             _%g6274563305%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont103068103069%_
                   (lambda (_%g6277263185%_ _%g6277363187%_ _%g6277463188%_)
                     (_%expand62709%_
                      _%g6277463188%_
                      _%g6277363187%_
                      (foldr (lambda (_%g6321163214%_ _%g6321263217%_)
                               (cons _%g6321163214%_ _%g6321263217%_))
                             '()
                             _%g6277263185%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont103072103073%_
                   (lambda (_%g6279963065%_ _%g6280063067%_ _%g6280163068%_)
                     (_%expand62709%_
                      _%g6280163068%_
                      _%g6280063067%_
                      (foldr (lambda (_%g6309163094%_ _%g6309263097%_)
                               (cons _%g6309163094%_ _%g6309263097%_))
                             '()
                             _%g6279963065%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont103076103077%_
                   (lambda (_%g6282662943%_ _%g6282762945%_ _%g6282862946%_)
                     (_%expand62709%_
                      _%g6282862946%_
                      _%g6282762945%_
                      (foldr (lambda (_%g6297162974%_ _%g6297262977%_)
                               (cons _%g6297162974%_ _%g6297262977%_))
                             '()
                             _%g6282662943%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match103296103297%_
                      (lambda (_%e6282962865%_
                               _%hd6283062869%_
                               _%tl6283162872%_
                               _%e6283262875%_
                               _%hd6283362879%_
                               _%tl6283462882%_
                               _%e6283562885%_
                               _%hd6283662889%_
                               _%tl6283762892%_
                               _%e6283862895%_
                               _%hd6283962899%_
                               _%tl6284062902%_
                               _%e6284162905%_
                               _%hd6284262909%_
                               _%tl6284362912%_
                               _%__splice103078103079%_
                               _%target6284462915%_
                               _%tl6284662918%_)
                        (letrec ((_%loop6284762921%_
                                  (lambda (_%hd6284562925%_ _%body6285162928%_)
                                    (if (gx#stx-pair? _%hd6284562925%_)
                                        (let ((_%e6284862930%_
                                               (gx#syntax-e _%hd6284562925%_)))
                                          (let ((_%lp-tl6285062937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6284862930%_)))
                                                (_%lp-hd6284962934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6284862930%_))))
                                            (_%loop6284762921%_
                                             _%lp-tl6285062937%_
                                             (cons _%lp-hd6284962934%_
                                                   _%body6285162928%_))))
                                        (let ((_%body6285262940%_
                                               (reverse _%body6285162928%_)))
                                          (let ((_%g6282662943%_
                                                 _%body6285262940%_)
                                                (_%g6282762945%_
                                                 _%hd6284262909%_)
                                                (_%g6282862946%_
                                                 _%hd6283662889%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g6282762945%_))
                                                (_%__kont103076103077%_
                                                 _%g6282662943%_
                                                 _%g6282762945%_
                                                 _%g6282862946%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))))))))
                          (_%loop6284762921%_ _%target6284462915%_ '()))))
                     (_%__match103252103253%_
                      (lambda (_%e6280262987%_
                               _%hd6280362991%_
                               _%tl6280462994%_
                               _%e6280562997%_
                               _%hd6280663001%_
                               _%tl6280763004%_
                               _%e6280863007%_
                               _%hd6280963011%_
                               _%tl6281063014%_
                               _%e6281163017%_
                               _%hd6281263021%_
                               _%tl6281363024%_
                               _%e6281463027%_
                               _%hd6281563031%_
                               _%tl6281663034%_
                               _%__splice103074103075%_
                               _%target6281763037%_
                               _%tl6281963040%_)
                        (letrec ((_%loop6282063043%_
                                  (lambda (_%hd6281863047%_ _%body6282463050%_)
                                    (if (gx#stx-pair? _%hd6281863047%_)
                                        (let ((_%e6282163052%_
                                               (gx#syntax-e _%hd6281863047%_)))
                                          (let ((_%lp-tl6282363059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6282163052%_)))
                                                (_%lp-hd6282263056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6282163052%_))))
                                            (_%loop6282063043%_
                                             _%lp-tl6282363059%_
                                             (cons _%lp-hd6282263056%_
                                                   _%body6282463050%_))))
                                        (let ((_%body6282563062%_
                                               (reverse _%body6282463050%_)))
                                          (let ((_%g6279963065%_
                                                 _%body6282563062%_)
                                                (_%g6280063067%_
                                                 _%hd6281563031%_)
                                                (_%g6280163068%_
                                                 _%hd6280963011%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g6280063067%_))
                                                (_%__kont103072103073%_
                                                 _%g6279963065%_
                                                 _%g6280063067%_
                                                 _%g6280163068%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))))))))
                          (_%loop6282063043%_ _%target6281763037%_ '()))))
                     (_%__match103208103209%_
                      (lambda (_%e6277563107%_
                               _%hd6277663111%_
                               _%tl6277763114%_
                               _%e6277863117%_
                               _%hd6277963121%_
                               _%tl6278063124%_
                               _%e6278163127%_
                               _%hd6278263131%_
                               _%tl6278363134%_
                               _%e6278463137%_
                               _%hd6278563141%_
                               _%tl6278663144%_
                               _%e6278763147%_
                               _%hd6278863151%_
                               _%tl6278963154%_
                               _%__splice103070103071%_
                               _%target6279063157%_
                               _%tl6279263160%_)
                        (letrec ((_%loop6279363163%_
                                  (lambda (_%hd6279163167%_ _%body6279763170%_)
                                    (if (gx#stx-pair? _%hd6279163167%_)
                                        (let ((_%e6279463172%_
                                               (gx#syntax-e _%hd6279163167%_)))
                                          (let ((_%lp-tl6279663179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6279463172%_)))
                                                (_%lp-hd6279563176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6279463172%_))))
                                            (_%loop6279363163%_
                                             _%lp-tl6279663179%_
                                             (cons _%lp-hd6279563176%_
                                                   _%body6279763170%_))))
                                        (let ((_%body6279863182%_
                                               (reverse _%body6279763170%_)))
                                          (let ((_%g6277263185%_
                                                 _%body6279863182%_)
                                                (_%g6277363187%_
                                                 _%hd6278863151%_)
                                                (_%g6277463188%_
                                                 _%hd6278263131%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g6277363187%_))
                                                (_%__kont103068103069%_
                                                 _%g6277263185%_
                                                 _%g6277363187%_
                                                 _%g6277463188%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))))))))
                          (_%loop6279363163%_ _%target6279063157%_ '()))))
                     (_%__match103164103165%_
                      (lambda (_%e6274863227%_
                               _%hd6274963231%_
                               _%tl6275063234%_
                               _%e6275163237%_
                               _%hd6275263241%_
                               _%tl6275363244%_
                               _%e6275463247%_
                               _%hd6275563251%_
                               _%tl6275663254%_
                               _%e6275763257%_
                               _%hd6275863261%_
                               _%tl6275963264%_
                               _%e6276063267%_
                               _%hd6276163271%_
                               _%tl6276263274%_
                               _%__splice103066103067%_
                               _%target6276363277%_
                               _%tl6276563280%_)
                        (letrec ((_%loop6276663283%_
                                  (lambda (_%hd6276463287%_ _%body6277063290%_)
                                    (if (gx#stx-pair? _%hd6276463287%_)
                                        (let ((_%e6276763292%_
                                               (gx#syntax-e _%hd6276463287%_)))
                                          (let ((_%lp-tl6276963299%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6276763292%_)))
                                                (_%lp-hd6276863296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6276763292%_))))
                                            (_%loop6276663283%_
                                             _%lp-tl6276963299%_
                                             (cons _%lp-hd6276863296%_
                                                   _%body6277063290%_))))
                                        (let ((_%body6277163302%_
                                               (reverse _%body6277063290%_)))
                                          (let ((_%g6274563305%_
                                                 _%body6277163302%_)
                                                (_%g6274663307%_
                                                 _%hd6276163271%_)
                                                (_%g6274763308%_
                                                 _%hd6275563251%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g6274663307%_))
                                                (_%__kont103064103065%_
                                                 _%g6274563305%_
                                                 _%g6274663307%_
                                                 _%g6274763308%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))))))))
                          (_%loop6276663283%_ _%target6276363277%_ '()))))
                     (_%__match103144103145%_
                      (lambda (_%e6274863227%_
                               _%hd6274963231%_
                               _%tl6275063234%_
                               _%e6275163237%_
                               _%hd6275263241%_
                               _%tl6275363244%_
                               _%e6275463247%_
                               _%hd6275563251%_
                               _%tl6275663254%_
                               _%e6275763257%_
                               _%hd6275863261%_
                               _%tl6275963264%_)
                        (if (gx#identifier? _%hd6275863261%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g109244_|
                                 _%hd6275863261%_)
                                (if (gx#stx-pair? _%tl6275963264%_)
                                    (let ((_%e6276063267%_
                                           (gx#syntax-e _%tl6275963264%_)))
                                      (let ((_%tl6276263274%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6276063267%_)))
                                            (_%hd6276163271%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6276063267%_))))
                                        (if (gx#stx-null? _%tl6276263274%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl6275363244%_)
                                                (let ((_%__splice103066103067%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl6275363244%_
                                                        '0)))
                                                  (let ((_%tl6276563280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice103066103067%_
                                                            '1)))
                                                        (_%target6276363277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice103066103067%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6276563280%_)
                                                        (_%__match103164103165%_
                                                         _%e6274863227%_
                                                         _%hd6274963231%_
                                                         _%tl6275063234%_
                                                         _%e6275163237%_
                                                         _%hd6275263241%_
                                                         _%tl6275363244%_
                                                         _%e6275463247%_
                                                         _%hd6275563251%_
                                                         _%tl6275663254%_
                                                         _%e6275763257%_
                                                         _%hd6275863261%_
                                                         _%tl6275963264%_
                                                         _%e6276063267%_
                                                         _%hd6276163271%_
                                                         _%tl6276263274%_
                                                         _%__splice103066103067%_
                                                         _%target6276363277%_
                                                         _%tl6276563280%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6271562858%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6271562858%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6271562858%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g109245_|
                                     _%hd6275863261%_)
                                    (if (gx#stx-pair? _%tl6275963264%_)
                                        (let ((_%e6278763147%_
                                               (gx#syntax-e _%tl6275963264%_)))
                                          (let ((_%tl6278963154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6278763147%_)))
                                                (_%hd6278863151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6278763147%_))))
                                            (if (gx#stx-null? _%tl6278963154%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl6275363244%_)
                                                    (let ((_%__splice103070103071%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl6275363244%_
                                                            '0)))
                                                      (let ((_%tl6279263160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice103070103071%_ '1)))
                    (_%target6279063157%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice103070103071%_ '0))))
                (if (gx#stx-null? _%tl6279263160%_)
                    (_%__match103208103209%_
                     _%e6274863227%_
                     _%hd6274963231%_
                     _%tl6275063234%_
                     _%e6275163237%_
                     _%hd6275263241%_
                     _%tl6275363244%_
                     _%e6275463247%_
                     _%hd6275563251%_
                     _%tl6275663254%_
                     _%e6275763257%_
                     _%hd6275863261%_
                     _%tl6275963264%_
                     _%e6278763147%_
                     _%hd6278863151%_
                     _%tl6278963154%_
                     _%__splice103070103071%_
                     _%target6279063157%_
                     _%tl6279263160%_)
                    (let () (declare (not safe)) (_%g6271562858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6271562858%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6271562858%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g109246_|
                                         _%hd6275863261%_)
                                        (if (gx#stx-pair? _%tl6275963264%_)
                                            (let ((_%e6281463027%_
                                                   (gx#syntax-e
                                                    _%tl6275963264%_)))
                                              (let ((_%tl6281663034%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6281463027%_)))
                                                    (_%hd6281563031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6281463027%_))))
                                                (if (gx#stx-null?
                                                     _%tl6281663034%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl6275363244%_)
                                                        (let ((_%__splice103074103075%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl6275363244%_
                                                                '0)))
                                                          (let ((_%tl6281963040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice103074103075%_ '1)))
                        (_%target6281763037%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice103074103075%_ '0))))
                    (if (gx#stx-null? _%tl6281963040%_)
                        (_%__match103252103253%_
                         _%e6274863227%_
                         _%hd6274963231%_
                         _%tl6275063234%_
                         _%e6275163237%_
                         _%hd6275263241%_
                         _%tl6275363244%_
                         _%e6275463247%_
                         _%hd6275563251%_
                         _%tl6275663254%_
                         _%e6275763257%_
                         _%hd6275863261%_
                         _%tl6275963264%_
                         _%e6281463027%_
                         _%hd6281563031%_
                         _%tl6281663034%_
                         _%__splice103074103075%_
                         _%target6281763037%_
                         _%tl6281963040%_)
                        (let () (declare (not safe)) (_%g6271562858%_)))))
                (let () (declare (not safe)) (_%g6271562858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6271562858%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6271562858%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g109247_|
                                             _%hd6275863261%_)
                                            (if (gx#stx-pair? _%tl6275963264%_)
                                                (let ((_%e6284162905%_
                                                       (gx#syntax-e
                                                        _%tl6275963264%_)))
                                                  (let ((_%tl6284362912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6284162905%_)))
                                                        (_%hd6284262909%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6284162905%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6284362912%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl6275363244%_)
                                                            (let ((_%__splice103078103079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl6275363244%_
                            '0)))
                      (let ((_%tl6284662918%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice103078103079%_ '1)))
                            (_%target6284462915%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice103078103079%_ '0))))
                        (if (gx#stx-null? _%tl6284662918%_)
                            (_%__match103296103297%_
                             _%e6274863227%_
                             _%hd6274963231%_
                             _%tl6275063234%_
                             _%e6275163237%_
                             _%hd6275263241%_
                             _%tl6275363244%_
                             _%e6275463247%_
                             _%hd6275563251%_
                             _%tl6275663254%_
                             _%e6275763257%_
                             _%hd6275863261%_
                             _%tl6275963264%_
                             _%e6284162905%_
                             _%hd6284262909%_
                             _%tl6284362912%_
                             _%__splice103078103079%_
                             _%target6284462915%_
                             _%tl6284662918%_)
                            (let () (declare (not safe)) (_%g6271562858%_)))))
                    (let () (declare (not safe)) (_%g6271562858%_)))
                (let () (declare (not safe)) (_%g6271562858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6271562858%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6271562858%_))))))
                            (let () (declare (not safe)) (_%g6271562858%_)))))
                     (_%__match103120103121%_
                      (lambda (_%e6272163347%_
                               _%hd6272263351%_
                               _%tl6272363354%_
                               _%e6272463357%_
                               _%hd6272563361%_
                               _%tl6272663364%_
                               _%e6272763367%_
                               _%hd6272863371%_
                               _%tl6272963374%_
                               _%e6273063377%_
                               _%hd6273163381%_
                               _%tl6273263384%_
                               _%e6273363387%_
                               _%hd6273463391%_
                               _%tl6273563394%_
                               _%__splice103062103063%_
                               _%target6273663397%_
                               _%tl6273863400%_)
                        (letrec ((_%loop6273963403%_
                                  (lambda (_%hd6273763407%_ _%body6274363410%_)
                                    (if (gx#stx-pair? _%hd6273763407%_)
                                        (let ((_%e6274063412%_
                                               (gx#syntax-e _%hd6273763407%_)))
                                          (let ((_%lp-tl6274263419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6274063412%_)))
                                                (_%lp-hd6274163416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6274063412%_))))
                                            (_%loop6273963403%_
                                             _%lp-tl6274263419%_
                                             (cons _%lp-hd6274163416%_
                                                   _%body6274363410%_))))
                                        (let ((_%body6274463422%_
                                               (reverse _%body6274363410%_)))
                                          (let ((_%g6271763425%_
                                                 _%body6274463422%_)
                                                (_%g6271863427%_
                                                 _%hd6273463391%_)
                                                (_%g6271963428%_
                                                 _%hd6273163381%_)
                                                (_%g6272063429%_
                                                 _%hd6272863371%_))
                                            (if (let ((__tmp109248
                                                       (gx#syntax-local-value
                                                        _%g6271863427%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp109248))
                                                (_%__kont103060103061%_
                                                 _%g6271763425%_
                                                 _%g6271863427%_
                                                 _%g6271963428%_
                                                 _%g6272063429%_)
                                                (_%__match103144103145%_
                                                 _%e6272163347%_
                                                 _%hd6272263351%_
                                                 _%tl6272363354%_
                                                 _%e6272463357%_
                                                 _%hd6272563361%_
                                                 _%tl6272663364%_
                                                 _%e6272763367%_
                                                 _%hd6272863371%_
                                                 _%tl6272963374%_
                                                 _%e6273063377%_
                                                 _%hd6273163381%_
                                                 _%tl6273263384%_))))))))
                          (_%loop6273963403%_ _%target6273663397%_ '())))))
                (if (gx#stx-pair? _%__stx103057103058%_)
                    (let ((_%e6272163347%_
                           (gx#syntax-e _%__stx103057103058%_)))
                      (let ((_%tl6272363354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6272163347%_)))
                            (_%hd6272263351%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6272163347%_))))
                        (if (gx#stx-pair? _%tl6272363354%_)
                            (let ((_%e6272463357%_
                                   (gx#syntax-e _%tl6272363354%_)))
                              (let ((_%tl6272663364%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6272463357%_)))
                                    (_%hd6272563361%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6272463357%_))))
                                (if (gx#stx-pair? _%hd6272563361%_)
                                    (let ((_%e6272763367%_
                                           (gx#syntax-e _%hd6272563361%_)))
                                      (let ((_%tl6272963374%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6272763367%_)))
                                            (_%hd6272863371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6272763367%_))))
                                        (if (gx#stx-pair? _%tl6272963374%_)
                                            (let ((_%e6273063377%_
                                                   (gx#syntax-e
                                                    _%tl6272963374%_)))
                                              (let ((_%tl6273263384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6273063377%_)))
                                                    (_%hd6273163381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6273063377%_))))
                                                (if (gx#stx-pair?
                                                     _%tl6273263384%_)
                                                    (let ((_%e6273363387%_
                                                           (gx#syntax-e
                                                            _%tl6273263384%_)))
                                                      (let ((_%tl6273563394%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6273363387%_)))
                    (_%hd6273463391%_
                     (let () (declare (not safe)) (##car _%e6273363387%_))))
                (if (gx#stx-null? _%tl6273563394%_)
                    (if (gx#stx-pair/null? _%tl6272663364%_)
                        (let ((_%__splice103062103063%_
                               (gx#syntax-split-splice->vector
                                _%tl6272663364%_
                                '0)))
                          (let ((_%tl6273863400%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice103062103063%_ '1)))
                                (_%target6273663397%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice103062103063%_
                                    '0))))
                            (if (gx#stx-null? _%tl6273863400%_)
                                (_%__match103120103121%_
                                 _%e6272163347%_
                                 _%hd6272263351%_
                                 _%tl6272363354%_
                                 _%e6272463357%_
                                 _%hd6272563361%_
                                 _%tl6272663364%_
                                 _%e6272763367%_
                                 _%hd6272863371%_
                                 _%tl6272963374%_
                                 _%e6273063377%_
                                 _%hd6273163381%_
                                 _%tl6273263384%_
                                 _%e6273363387%_
                                 _%hd6273463391%_
                                 _%tl6273563394%_
                                 _%__splice103062103063%_
                                 _%target6273663397%_
                                 _%tl6273863400%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6271562858%_)))))
                        (let () (declare (not safe)) (_%g6271562858%_)))
                    (let () (declare (not safe)) (_%g6271562858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6271562858%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6271562858%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6271562858%_)))))
                            (let () (declare (not safe)) (_%g6271562858%_)))))
                    (let () (declare (not safe)) (_%g6271562858%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx63821%_)
        (letrec ((_%expand-body63824%_
                  (lambda (_%var64815%_
                           _%Interface64817%_
                           _%body64818%_
                           _%checked?64819%_)
                    (let* ((_%type64821%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx63821%_
                               _%Interface64817%_)))
                           (_%g6482464868%_
                            (lambda (_%g6482564864%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6482564864%_)))
                           (_%g6482365024%_
                            (lambda (_%g6482564872%_)
                              (if (gx#stx-pair? _%g6482564872%_)
                                  (let ((_%e6483364875%_
                                         (gx#syntax-e _%g6482564872%_)))
                                    (let ((_%hd6483464879%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6483364875%_)))
                                          (_%tl6483564882%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6483364875%_))))
                                      (if (gx#stx-pair? _%tl6483564882%_)
                                          (let ((_%e6483664885%_
                                                 (gx#syntax-e
                                                  _%tl6483564882%_)))
                                            (let ((_%hd6483764889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6483664885%_)))
                                                  (_%tl6483864892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6483664885%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6483864892%_)
                                                  (let ((_%e6483964895%_
                                                         (gx#syntax-e
                                                          _%tl6483864892%_)))
                                                    (let ((_%hd6484064899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6483964895%_)))
                                                          (_%tl6484164902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6483964895%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6484164902%_)
                                                          (let ((_%e6484264905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6484164902%_)))
                    (let ((_%hd6484364909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6484264905%_)))
                          (_%tl6484464912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6484264905%_))))
                      (if (gx#stx-pair? _%tl6484464912%_)
                          (let ((_%e6484564915%_
                                 (gx#syntax-e _%tl6484464912%_)))
                            (let ((_%hd6484664919%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6484564915%_)))
                                  (_%tl6484764922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6484564915%_))))
                              (if (gx#stx-pair? _%tl6484764922%_)
                                  (let ((_%e6484864925%_
                                         (gx#syntax-e _%tl6484764922%_)))
                                    (let ((_%hd6484964929%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6484864925%_)))
                                          (_%tl6485064932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6484864925%_))))
                                      (if (gx#stx-pair? _%tl6485064932%_)
                                          (let ((_%e6485164935%_
                                                 (gx#syntax-e
                                                  _%tl6485064932%_)))
                                            (let ((_%hd6485264939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6485164935%_)))
                                                  (_%tl6485364942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6485164935%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd6485264939%_)
                                                  (let ((_g109249_
                                                         (gx#syntax-split-splice
                                                          _%hd6485264939%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g109250_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g109249_)
                           (##values-length _g109249_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109250_ 2)))
                    (error "Context expects 2 values" _g109250_)))
              (let ((_%target6485464945%_
                     (let () (declare (not safe)) (##values-ref _g109249_ 0)))
                    (_%tl6485664948%_
                     (let () (declare (not safe)) (##values-ref _g109249_ 1))))
                (if (gx#stx-null? _%tl6485664948%_)
                    (letrec ((_%loop6485764951%_
                              (lambda (_%hd6485564955%_ _%body6486164958%_)
                                (if (gx#stx-pair? _%hd6485564955%_)
                                    (let ((_%e6485864960%_
                                           (gx#syntax-e _%hd6485564955%_)))
                                      (let ((_%lp-hd6485964964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6485864960%_)))
                                            (_%lp-tl6486064967%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6485864960%_))))
                                        (_%loop6485764951%_
                                         _%lp-tl6486064967%_
                                         (cons _%lp-hd6485964964%_
                                               _%body6486164958%_))))
                                    (let ((_%body6486264970%_
                                           (reverse _%body6486164958%_)))
                                      (if (gx#stx-null? _%tl6485364942%_)
                                          ((lambda (_%g6482664973%_
                                                    _%g6482764975%_
                                                    _%g6482864976%_
                                                    _%g6482964977%_
                                                    _%g6483064978%_
                                                    _%g6483164979%_
                                                    _%g6483264980%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%g6482964977%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%g6483064978%_ '()))
                                         (cons _%g6482964977%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%g6483264980%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g6482964977%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g6483164979%_ '()))
                               (cons _%g6482864976%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g6482764975%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g6501565018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6501665021%_)
                      (cons _%g6501565018%_ _%g6501665021%_))
                    '()
                    _%g6482664973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body6486264970%_
                                           _%hd6484964929%_
                                           _%hd6484664919%_
                                           _%hd6484364909%_
                                           _%hd6484064899%_
                                           _%hd6483764889%_
                                           _%hd6483464879%_)
                                          (_%g6482464868%_
                                           _%g6482564872%_)))))))
                      (_%loop6485764951%_ _%target6485464945%_ '()))
                    (_%g6482464868%_ _%g6482564872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6482464868%_
                                                   _%g6482564872%_))))
                                          (_%g6482464868%_ _%g6482564872%_))))
                                  (_%g6482464868%_ _%g6482564872%_))))
                          (_%g6482464868%_ _%g6482564872%_))))
                  (_%g6482464868%_ _%g6482564872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6482464868%_
                                                   _%g6482564872%_))))
                                          (_%g6482464868%_ _%g6482564872%_))))
                                  (_%g6482464868%_ _%g6482564872%_)))))
                      (_%g6482365024%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type64821%_
                             (let ((__obj109050 _%type64821%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj109050
                                      'gerbil.core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj109050
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj109050
                                    'type-descriptor)))
                             _%var64815%_
                             _%checked?64819%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body64818%_)))))
                 (_%expand63826%_
                  (lambda (_%var64614%_
                           _%Interface64616%_
                           _%body64617%_
                           _%checked?64618%_
                           _%checked-methods?64619%_
                           _%maybe?64620%_)
                    (let* ((_%g6462264630%_
                            (lambda (_%g6462364626%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6462364626%_)))
                           (_%g6462164807%_
                            (lambda (_%g6462364634%_)
                              ((lambda (_%g6462464637%_)
                                 (if _%checked?64618%_
                                     (if _%maybe?64620%_
                                         (let* ((_%g6464964664%_
                                                 (lambda (_%g6465064660%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g6465064660%_)))
                                                (_%g6464864710%_
                                                 (lambda (_%g6465064668%_)
                                                   (if (gx#stx-pair?
                                                        _%g6465064668%_)
                                                       (let ((_%e6465364671%_
                                                              (gx#syntax-e
                                                               _%g6465064668%_)))
                                                         (let ((_%hd6465464675%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6465364671%_)))
                       (_%tl6465564678%_
                        (let () (declare (not safe)) (##cdr _%e6465364671%_))))
                   (if (gx#stx-pair? _%tl6465564678%_)
                       (let ((_%e6465664681%_ (gx#syntax-e _%tl6465564678%_)))
                         (let ((_%hd6465764685%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e6465664681%_)))
                               (_%tl6465864688%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e6465664681%_))))
                           (if (gx#stx-null? _%tl6465864688%_)
                               ((lambda (_%g6465164691%_ _%g6465264693%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g6465264693%_
                                                    (cons (cons _%g6465164691%_
                                                                (cons _%g6465264693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%g6465264693%_
                                                                (cons _%g6462464637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%g6465264693%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd6465764685%_
                                _%hd6465464675%_)
                               (_%g6464964664%_ _%g6465064668%_))))
                       (_%g6464964664%_ _%g6465064668%_))))
               (_%g6464964664%_ _%g6465064668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g6464864710%_
                                            (list _%var64614%_
                                                  _%Interface64616%_)))
                                         (let* ((_%g6471464729%_
                                                 (lambda (_%g6471564725%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g6471564725%_)))
                                                (_%g6471364773%_
                                                 (lambda (_%g6471564733%_)
                                                   (if (gx#stx-pair?
                                                        _%g6471564733%_)
                                                       (let ((_%e6471864736%_
                                                              (gx#syntax-e
                                                               _%g6471564733%_)))
                                                         (let ((_%hd6471964740%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6471864736%_)))
                       (_%tl6472064743%_
                        (let () (declare (not safe)) (##cdr _%e6471864736%_))))
                   (if (gx#stx-pair? _%tl6472064743%_)
                       (let ((_%e6472164746%_ (gx#syntax-e _%tl6472064743%_)))
                         (let ((_%hd6472264750%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e6472164746%_)))
                               (_%tl6472364753%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e6472164746%_))))
                           (if (gx#stx-null? _%tl6472364753%_)
                               ((lambda (_%g6471664756%_ _%g6471764758%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%g6471764758%_
                                                    (cons (cons _%g6471664756%_
                                                                (cons _%g6471764758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%g6462464637%_ '()))))
                                _%hd6472264750%_
                                _%hd6471964740%_)
                               (_%g6471464729%_ _%g6471564733%_))))
                       (_%g6471464729%_ _%g6471564733%_))))
               (_%g6471464729%_ _%g6471564733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g6471364773%_
                                            (list _%var64614%_
                                                  _%Interface64616%_))))
                                     (if _%maybe?64620%_
                                         (let* ((_%g6477764785%_
                                                 (lambda (_%g6477864781%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g6477864781%_)))
                                                (_%g6477664803%_
                                                 (lambda (_%g6477864789%_)
                                                   ((lambda (_%g6477964792%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%g6477964792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%g6462464637%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%g6477964792%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g6477864789%_))))
                                           (_%g6477664803%_ _%var64614%_))
                                         _%g6462464637%_)))
                               _%g6462364634%_))))
                      (_%g6462164807%_
                       (_%expand-body63824%_
                        _%var64614%_
                        _%Interface64616%_
                        _%body64617%_
                        (let ((_%$e64811%_ _%checked?64618%_))
                          (if _%$e64811%_
                              _%$e64811%_
                              _%checked-methods?64619%_))))))))
          (let* ((_%__stx103299103300%_ _%stx63821%_)
                 (_%g6383263975%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx103299103300%_))))
            (let ((_%__kont103302103303%_
                   (lambda (_%g6383464542%_
                            _%g6383564544%_
                            _%g6383664545%_
                            _%g6383764546%_)
                     (let* ((_%g6457164579%_
                             (lambda (_%g6457264575%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6457264575%_)))
                            (_%g6457064606%_
                             (lambda (_%g6457264583%_)
                               ((lambda (_%g6457364586%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%g6383764546%_
                                                    (cons _%g6383664545%_
                                                          (cons _%g6457364586%_
                                                                '())))
                                              (foldr (lambda (_%g6459764600%_
                                                              _%g6459864603%_)
                                                       (cons _%g6459764600%_
                                                             _%g6459864603%_))
                                                     '()
                                                     _%g6383464542%_))))
                                _%g6457264583%_))))
                       (_%g6457064606%_
                        (let ((__obj109051
                               (gx#syntax-local-value _%g6383564544%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj109051
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj109051
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj109051
                               'identifier)))))))
                  (_%__kont103306103307%_
                   (lambda (_%g6386264422%_ _%g6386364424%_ _%g6386464425%_)
                     (_%expand63826%_
                      _%g6386464425%_
                      _%g6386364424%_
                      (foldr (lambda (_%g6444864451%_ _%g6444964454%_)
                               (cons _%g6444864451%_ _%g6444964454%_))
                             '()
                             _%g6386264422%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont103310103311%_
                   (lambda (_%g6388964302%_ _%g6389064304%_ _%g6389164305%_)
                     (_%expand63826%_
                      _%g6389164305%_
                      _%g6389064304%_
                      (foldr (lambda (_%g6432864331%_ _%g6432964334%_)
                               (cons _%g6432864331%_ _%g6432964334%_))
                             '()
                             _%g6388964302%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont103314103315%_
                   (lambda (_%g6391664182%_ _%g6391764184%_ _%g6391864185%_)
                     (_%expand63826%_
                      _%g6391864185%_
                      _%g6391764184%_
                      (foldr (lambda (_%g6420864211%_ _%g6420964214%_)
                               (cons _%g6420864211%_ _%g6420964214%_))
                             '()
                             _%g6391664182%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont103318103319%_
                   (lambda (_%g6394364060%_ _%g6394464062%_ _%g6394564063%_)
                     (_%expand63826%_
                      _%g6394564063%_
                      _%g6394464062%_
                      (foldr (lambda (_%g6408864091%_ _%g6408964094%_)
                               (cons _%g6408864091%_ _%g6408964094%_))
                             '()
                             _%g6394364060%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match103538103539%_
                      (lambda (_%e6394663982%_
                               _%hd6394763986%_
                               _%tl6394863989%_
                               _%e6394963992%_
                               _%hd6395063996%_
                               _%tl6395163999%_
                               _%e6395264002%_
                               _%hd6395364006%_
                               _%tl6395464009%_
                               _%e6395564012%_
                               _%hd6395664016%_
                               _%tl6395764019%_
                               _%e6395864022%_
                               _%hd6395964026%_
                               _%tl6396064029%_
                               _%__splice103320103321%_
                               _%target6396164032%_
                               _%tl6396364035%_)
                        (letrec ((_%loop6396464038%_
                                  (lambda (_%hd6396264042%_ _%body6396864045%_)
                                    (if (gx#stx-pair? _%hd6396264042%_)
                                        (let ((_%e6396564047%_
                                               (gx#syntax-e _%hd6396264042%_)))
                                          (let ((_%lp-tl6396764054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6396564047%_)))
                                                (_%lp-hd6396664051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6396564047%_))))
                                            (_%loop6396464038%_
                                             _%lp-tl6396764054%_
                                             (cons _%lp-hd6396664051%_
                                                   _%body6396864045%_))))
                                        (let ((_%body6396964057%_
                                               (reverse _%body6396864045%_)))
                                          (let ((_%g6394364060%_
                                                 _%body6396964057%_)
                                                (_%g6394464062%_
                                                 _%hd6395964026%_)
                                                (_%g6394564063%_
                                                 _%hd6395364006%_))
                                            (if (and (gx#identifier?
                                                      _%g6394564063%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g6394464062%_)))
                                                (_%__kont103318103319%_
                                                 _%g6394364060%_
                                                 _%g6394464062%_
                                                 _%g6394564063%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))))))))
                          (_%loop6396464038%_ _%target6396164032%_ '()))))
                     (_%__match103494103495%_
                      (lambda (_%e6391964104%_
                               _%hd6392064108%_
                               _%tl6392164111%_
                               _%e6392264114%_
                               _%hd6392364118%_
                               _%tl6392464121%_
                               _%e6392564124%_
                               _%hd6392664128%_
                               _%tl6392764131%_
                               _%e6392864134%_
                               _%hd6392964138%_
                               _%tl6393064141%_
                               _%e6393164144%_
                               _%hd6393264148%_
                               _%tl6393364151%_
                               _%__splice103316103317%_
                               _%target6393464154%_
                               _%tl6393664157%_)
                        (letrec ((_%loop6393764160%_
                                  (lambda (_%hd6393564164%_ _%body6394164167%_)
                                    (if (gx#stx-pair? _%hd6393564164%_)
                                        (let ((_%e6393864169%_
                                               (gx#syntax-e _%hd6393564164%_)))
                                          (let ((_%lp-tl6394064176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6393864169%_)))
                                                (_%lp-hd6393964173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6393864169%_))))
                                            (_%loop6393764160%_
                                             _%lp-tl6394064176%_
                                             (cons _%lp-hd6393964173%_
                                                   _%body6394164167%_))))
                                        (let ((_%body6394264179%_
                                               (reverse _%body6394164167%_)))
                                          (let ((_%g6391664182%_
                                                 _%body6394264179%_)
                                                (_%g6391764184%_
                                                 _%hd6393264148%_)
                                                (_%g6391864185%_
                                                 _%hd6392664128%_))
                                            (if (and (gx#identifier?
                                                      _%g6391864185%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g6391764184%_)))
                                                (_%__kont103314103315%_
                                                 _%g6391664182%_
                                                 _%g6391764184%_
                                                 _%g6391864185%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))))))))
                          (_%loop6393764160%_ _%target6393464154%_ '()))))
                     (_%__match103450103451%_
                      (lambda (_%e6389264224%_
                               _%hd6389364228%_
                               _%tl6389464231%_
                               _%e6389564234%_
                               _%hd6389664238%_
                               _%tl6389764241%_
                               _%e6389864244%_
                               _%hd6389964248%_
                               _%tl6390064251%_
                               _%e6390164254%_
                               _%hd6390264258%_
                               _%tl6390364261%_
                               _%e6390464264%_
                               _%hd6390564268%_
                               _%tl6390664271%_
                               _%__splice103312103313%_
                               _%target6390764274%_
                               _%tl6390964277%_)
                        (letrec ((_%loop6391064280%_
                                  (lambda (_%hd6390864284%_ _%body6391464287%_)
                                    (if (gx#stx-pair? _%hd6390864284%_)
                                        (let ((_%e6391164289%_
                                               (gx#syntax-e _%hd6390864284%_)))
                                          (let ((_%lp-tl6391364296%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6391164289%_)))
                                                (_%lp-hd6391264293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6391164289%_))))
                                            (_%loop6391064280%_
                                             _%lp-tl6391364296%_
                                             (cons _%lp-hd6391264293%_
                                                   _%body6391464287%_))))
                                        (let ((_%body6391564299%_
                                               (reverse _%body6391464287%_)))
                                          (let ((_%g6388964302%_
                                                 _%body6391564299%_)
                                                (_%g6389064304%_
                                                 _%hd6390564268%_)
                                                (_%g6389164305%_
                                                 _%hd6389964248%_))
                                            (if (and (gx#identifier?
                                                      _%g6389164305%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g6389064304%_)))
                                                (_%__kont103310103311%_
                                                 _%g6388964302%_
                                                 _%g6389064304%_
                                                 _%g6389164305%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))))))))
                          (_%loop6391064280%_ _%target6390764274%_ '()))))
                     (_%__match103406103407%_
                      (lambda (_%e6386564344%_
                               _%hd6386664348%_
                               _%tl6386764351%_
                               _%e6386864354%_
                               _%hd6386964358%_
                               _%tl6387064361%_
                               _%e6387164364%_
                               _%hd6387264368%_
                               _%tl6387364371%_
                               _%e6387464374%_
                               _%hd6387564378%_
                               _%tl6387664381%_
                               _%e6387764384%_
                               _%hd6387864388%_
                               _%tl6387964391%_
                               _%__splice103308103309%_
                               _%target6388064394%_
                               _%tl6388264397%_)
                        (letrec ((_%loop6388364400%_
                                  (lambda (_%hd6388164404%_ _%body6388764407%_)
                                    (if (gx#stx-pair? _%hd6388164404%_)
                                        (let ((_%e6388464409%_
                                               (gx#syntax-e _%hd6388164404%_)))
                                          (let ((_%lp-tl6388664416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6388464409%_)))
                                                (_%lp-hd6388564413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6388464409%_))))
                                            (_%loop6388364400%_
                                             _%lp-tl6388664416%_
                                             (cons _%lp-hd6388564413%_
                                                   _%body6388764407%_))))
                                        (let ((_%body6388864419%_
                                               (reverse _%body6388764407%_)))
                                          (let ((_%g6386264422%_
                                                 _%body6388864419%_)
                                                (_%g6386364424%_
                                                 _%hd6387864388%_)
                                                (_%g6386464425%_
                                                 _%hd6387264368%_))
                                            (if (and (gx#identifier?
                                                      _%g6386464425%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g6386364424%_)))
                                                (_%__kont103306103307%_
                                                 _%g6386264422%_
                                                 _%g6386364424%_
                                                 _%g6386464425%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))))))))
                          (_%loop6388364400%_ _%target6388064394%_ '()))))
                     (_%__match103386103387%_
                      (lambda (_%e6386564344%_
                               _%hd6386664348%_
                               _%tl6386764351%_
                               _%e6386864354%_
                               _%hd6386964358%_
                               _%tl6387064361%_
                               _%e6387164364%_
                               _%hd6387264368%_
                               _%tl6387364371%_
                               _%e6387464374%_
                               _%hd6387564378%_
                               _%tl6387664381%_)
                        (if (gx#identifier? _%hd6387564378%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g109251_|
                                 _%hd6387564378%_)
                                (if (gx#stx-pair? _%tl6387664381%_)
                                    (let ((_%e6387764384%_
                                           (gx#syntax-e _%tl6387664381%_)))
                                      (let ((_%tl6387964391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6387764384%_)))
                                            (_%hd6387864388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6387764384%_))))
                                        (if (gx#stx-null? _%tl6387964391%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl6387064361%_)
                                                (let ((_%__splice103308103309%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl6387064361%_
                                                        '0)))
                                                  (let ((_%tl6388264397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice103308103309%_
                                                            '1)))
                                                        (_%target6388064394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice103308103309%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6388264397%_)
                                                        (_%__match103406103407%_
                                                         _%e6386564344%_
                                                         _%hd6386664348%_
                                                         _%tl6386764351%_
                                                         _%e6386864354%_
                                                         _%hd6386964358%_
                                                         _%tl6387064361%_
                                                         _%e6387164364%_
                                                         _%hd6387264368%_
                                                         _%tl6387364371%_
                                                         _%e6387464374%_
                                                         _%hd6387564378%_
                                                         _%tl6387664381%_
                                                         _%e6387764384%_
                                                         _%hd6387864388%_
                                                         _%tl6387964391%_
                                                         _%__splice103308103309%_
                                                         _%target6388064394%_
                                                         _%tl6388264397%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6383263975%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6383263975%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6383263975%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g109252_|
                                     _%hd6387564378%_)
                                    (if (gx#stx-pair? _%tl6387664381%_)
                                        (let ((_%e6390464264%_
                                               (gx#syntax-e _%tl6387664381%_)))
                                          (let ((_%tl6390664271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6390464264%_)))
                                                (_%hd6390564268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6390464264%_))))
                                            (if (gx#stx-null? _%tl6390664271%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl6387064361%_)
                                                    (let ((_%__splice103312103313%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl6387064361%_
                                                            '0)))
                                                      (let ((_%tl6390964277%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice103312103313%_ '1)))
                    (_%target6390764274%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice103312103313%_ '0))))
                (if (gx#stx-null? _%tl6390964277%_)
                    (_%__match103450103451%_
                     _%e6386564344%_
                     _%hd6386664348%_
                     _%tl6386764351%_
                     _%e6386864354%_
                     _%hd6386964358%_
                     _%tl6387064361%_
                     _%e6387164364%_
                     _%hd6387264368%_
                     _%tl6387364371%_
                     _%e6387464374%_
                     _%hd6387564378%_
                     _%tl6387664381%_
                     _%e6390464264%_
                     _%hd6390564268%_
                     _%tl6390664271%_
                     _%__splice103312103313%_
                     _%target6390764274%_
                     _%tl6390964277%_)
                    (let () (declare (not safe)) (_%g6383263975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6383263975%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6383263975%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g109253_|
                                         _%hd6387564378%_)
                                        (if (gx#stx-pair? _%tl6387664381%_)
                                            (let ((_%e6393164144%_
                                                   (gx#syntax-e
                                                    _%tl6387664381%_)))
                                              (let ((_%tl6393364151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6393164144%_)))
                                                    (_%hd6393264148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6393164144%_))))
                                                (if (gx#stx-null?
                                                     _%tl6393364151%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl6387064361%_)
                                                        (let ((_%__splice103316103317%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl6387064361%_
                                                                '0)))
                                                          (let ((_%tl6393664157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice103316103317%_ '1)))
                        (_%target6393464154%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice103316103317%_ '0))))
                    (if (gx#stx-null? _%tl6393664157%_)
                        (_%__match103494103495%_
                         _%e6386564344%_
                         _%hd6386664348%_
                         _%tl6386764351%_
                         _%e6386864354%_
                         _%hd6386964358%_
                         _%tl6387064361%_
                         _%e6387164364%_
                         _%hd6387264368%_
                         _%tl6387364371%_
                         _%e6387464374%_
                         _%hd6387564378%_
                         _%tl6387664381%_
                         _%e6393164144%_
                         _%hd6393264148%_
                         _%tl6393364151%_
                         _%__splice103316103317%_
                         _%target6393464154%_
                         _%tl6393664157%_)
                        (let () (declare (not safe)) (_%g6383263975%_)))))
                (let () (declare (not safe)) (_%g6383263975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6383263975%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6383263975%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g109254_|
                                             _%hd6387564378%_)
                                            (if (gx#stx-pair? _%tl6387664381%_)
                                                (let ((_%e6395864022%_
                                                       (gx#syntax-e
                                                        _%tl6387664381%_)))
                                                  (let ((_%tl6396064029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6395864022%_)))
                                                        (_%hd6395964026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6395864022%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6396064029%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl6387064361%_)
                                                            (let ((_%__splice103320103321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl6387064361%_
                            '0)))
                      (let ((_%tl6396364035%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice103320103321%_ '1)))
                            (_%target6396164032%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice103320103321%_ '0))))
                        (if (gx#stx-null? _%tl6396364035%_)
                            (_%__match103538103539%_
                             _%e6386564344%_
                             _%hd6386664348%_
                             _%tl6386764351%_
                             _%e6386864354%_
                             _%hd6386964358%_
                             _%tl6387064361%_
                             _%e6387164364%_
                             _%hd6387264368%_
                             _%tl6387364371%_
                             _%e6387464374%_
                             _%hd6387564378%_
                             _%tl6387664381%_
                             _%e6395864022%_
                             _%hd6395964026%_
                             _%tl6396064029%_
                             _%__splice103320103321%_
                             _%target6396164032%_
                             _%tl6396364035%_)
                            (let () (declare (not safe)) (_%g6383263975%_)))))
                    (let () (declare (not safe)) (_%g6383263975%_)))
                (let () (declare (not safe)) (_%g6383263975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6383263975%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6383263975%_))))))
                            (let () (declare (not safe)) (_%g6383263975%_)))))
                     (_%__match103362103363%_
                      (lambda (_%e6383864464%_
                               _%hd6383964468%_
                               _%tl6384064471%_
                               _%e6384164474%_
                               _%hd6384264478%_
                               _%tl6384364481%_
                               _%e6384464484%_
                               _%hd6384564488%_
                               _%tl6384664491%_
                               _%e6384764494%_
                               _%hd6384864498%_
                               _%tl6384964501%_
                               _%e6385064504%_
                               _%hd6385164508%_
                               _%tl6385264511%_
                               _%__splice103304103305%_
                               _%target6385364514%_
                               _%tl6385564517%_)
                        (letrec ((_%loop6385664520%_
                                  (lambda (_%hd6385464524%_ _%body6386064527%_)
                                    (if (gx#stx-pair? _%hd6385464524%_)
                                        (let ((_%e6385764529%_
                                               (gx#syntax-e _%hd6385464524%_)))
                                          (let ((_%lp-tl6385964536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6385764529%_)))
                                                (_%lp-hd6385864533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6385764529%_))))
                                            (_%loop6385664520%_
                                             _%lp-tl6385964536%_
                                             (cons _%lp-hd6385864533%_
                                                   _%body6386064527%_))))
                                        (let ((_%body6386164539%_
                                               (reverse _%body6386064527%_)))
                                          (let ((_%g6383464542%_
                                                 _%body6386164539%_)
                                                (_%g6383564544%_
                                                 _%hd6385164508%_)
                                                (_%g6383664545%_
                                                 _%hd6384864498%_)
                                                (_%g6383764546%_
                                                 _%hd6384564488%_))
                                            (if (let ((__tmp109255
                                                       (gx#syntax-local-value
                                                        _%g6383564544%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp109255))
                                                (_%__kont103302103303%_
                                                 _%g6383464542%_
                                                 _%g6383564544%_
                                                 _%g6383664545%_
                                                 _%g6383764546%_)
                                                (_%__match103386103387%_
                                                 _%e6383864464%_
                                                 _%hd6383964468%_
                                                 _%tl6384064471%_
                                                 _%e6384164474%_
                                                 _%hd6384264478%_
                                                 _%tl6384364481%_
                                                 _%e6384464484%_
                                                 _%hd6384564488%_
                                                 _%tl6384664491%_
                                                 _%e6384764494%_
                                                 _%hd6384864498%_
                                                 _%tl6384964501%_))))))))
                          (_%loop6385664520%_ _%target6385364514%_ '())))))
                (if (gx#stx-pair? _%__stx103299103300%_)
                    (let ((_%e6383864464%_
                           (gx#syntax-e _%__stx103299103300%_)))
                      (let ((_%tl6384064471%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6383864464%_)))
                            (_%hd6383964468%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6383864464%_))))
                        (if (gx#stx-pair? _%tl6384064471%_)
                            (let ((_%e6384164474%_
                                   (gx#syntax-e _%tl6384064471%_)))
                              (let ((_%tl6384364481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6384164474%_)))
                                    (_%hd6384264478%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6384164474%_))))
                                (if (gx#stx-pair? _%hd6384264478%_)
                                    (let ((_%e6384464484%_
                                           (gx#syntax-e _%hd6384264478%_)))
                                      (let ((_%tl6384664491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6384464484%_)))
                                            (_%hd6384564488%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6384464484%_))))
                                        (if (gx#stx-pair? _%tl6384664491%_)
                                            (let ((_%e6384764494%_
                                                   (gx#syntax-e
                                                    _%tl6384664491%_)))
                                              (let ((_%tl6384964501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6384764494%_)))
                                                    (_%hd6384864498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6384764494%_))))
                                                (if (gx#stx-pair?
                                                     _%tl6384964501%_)
                                                    (let ((_%e6385064504%_
                                                           (gx#syntax-e
                                                            _%tl6384964501%_)))
                                                      (let ((_%tl6385264511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6385064504%_)))
                    (_%hd6385164508%_
                     (let () (declare (not safe)) (##car _%e6385064504%_))))
                (if (gx#stx-null? _%tl6385264511%_)
                    (if (gx#stx-pair/null? _%tl6384364481%_)
                        (let ((_%__splice103304103305%_
                               (gx#syntax-split-splice->vector
                                _%tl6384364481%_
                                '0)))
                          (let ((_%tl6385564517%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice103304103305%_ '1)))
                                (_%target6385364514%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice103304103305%_
                                    '0))))
                            (if (gx#stx-null? _%tl6385564517%_)
                                (_%__match103362103363%_
                                 _%e6383864464%_
                                 _%hd6383964468%_
                                 _%tl6384064471%_
                                 _%e6384164474%_
                                 _%hd6384264478%_
                                 _%tl6384364481%_
                                 _%e6384464484%_
                                 _%hd6384564488%_
                                 _%tl6384664491%_
                                 _%e6384764494%_
                                 _%hd6384864498%_
                                 _%tl6384964501%_
                                 _%e6385064504%_
                                 _%hd6385164508%_
                                 _%tl6385264511%_
                                 _%__splice103304103305%_
                                 _%target6385364514%_
                                 _%tl6385564517%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6383263975%_)))))
                        (let () (declare (not safe)) (_%g6383263975%_)))
                    (let () (declare (not safe)) (_%g6383263975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6383263975%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6383263975%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6383263975%_)))))
                            (let () (declare (not safe)) (_%g6383263975%_)))))
                    (let () (declare (not safe)) (_%g6383263975%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx65034%_)
        (let* ((_%__stx103541103542%_ _%stx65034%_)
               (_%g6503965099%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx103541103542%_))))
          (let ((_%__kont103544103545%_
                 (lambda (_%g6504165655%_ _%g6504265657%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g6504265657%_ '()))
                               (foldr (lambda (_%g6567365676%_ _%g6567465679%_)
                                        (cons _%g6567365676%_ _%g6567465679%_))
                                      '()
                                      _%g6504165655%_)))))
                (_%__kont103548103549%_
                 (lambda (_%g6505865243%_ _%g6505965245%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g6505965245%_)
                       (let* ((_%g6526565272%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx65034%_
                                _%g6505965245%_))
                              (_%E6526765278%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g6526565272%_
                                        '([var . parts]))
                                 (void)))
                              (_%K6526865576%_
                               (lambda (_%parts65282%_ _%var65284%_)
                                 (let ((_%$e65286%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var65284%_))))
                                   (if _%$e65286%_
                                       ((lambda (_%te65290%_)
                                          (let _%loop65293%_ ((_%parts65296%_
                                                               _%parts65282%_)
                                                              (_%type65298%_
                                                               (##direct-structure-ref
                                                                _%te65290%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object65299%_
                                                               _%var65284%_)
                                                              (_%checked-method?65300%_
                                                               (##direct-structure-ref
                                                                _%te65290%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?65301%_
                                                               '#f))
                                            (let* ((_%parts6530265310%_
                                                    _%parts65296%_)
                                                   (_%else6530465371%_
                                                    (lambda ()
                                                      (let* ((_%g6532265330%_
                                                              (lambda (_%g6532365326%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g6532365326%_)))
                     (_%g6532165367%_
                      (lambda (_%g6532365334%_)
                        ((lambda (_%g6532465337%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%g6532465337%_
                                       (foldr (lambda (_%g6535865361%_
                                                       _%g6535965364%_)
                                                (cons _%g6535865361%_
                                                      _%g6535965364%_))
                                              '()
                                              _%g6505865243%_))))
                         _%g6532365334%_))))
                (_%g6532165367%_ _%object65299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K6530665550%_
                                                    (lambda (_%rest65375%_
                                                             _%part65377%_)
                                                      (if (and (not _%nil-check?65301%_)
                                                               (let ((__tmp109256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part65377%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp109256)))
                  (let ((_%str65381%_ (symbol->string _%part65377%_)))
                    (_%loop65293%_
                     (cons (let ((__tmp109257
                                  (substring
                                   _%str65381%_
                                   '1
                                   (string-length _%str65381%_))))
                             (declare (not safe))
                             (##string->symbol __tmp109257))
                           _%rest65375%_)
                     _%type65298%_
                     _%object65299%_
                     _%checked-method?65300%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type65298%_))
                      (let* ((_%g6538665401%_
                              (lambda (_%g6538765397%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g6538765397%_)))
                             (_%g6538565470%_
                              (lambda (_%g6538765405%_)
                                (if (gx#stx-pair? _%g6538765405%_)
                                    (let ((_%e6539065408%_
                                           (gx#syntax-e _%g6538765405%_)))
                                      (let ((_%hd6539165412%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6539065408%_)))
                                            (_%tl6539265415%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6539065408%_))))
                                        (if (gx#stx-pair? _%tl6539265415%_)
                                            (let ((_%e6539365418%_
                                                   (gx#syntax-e
                                                    _%tl6539265415%_)))
                                              (let ((_%hd6539465422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6539365418%_)))
                                                    (_%tl6539565425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6539365418%_))))
                                                (if (gx#stx-null?
                                                     _%tl6539565425%_)
                                                    ((lambda (_%g6538865428%_
                                                              _%g6538965430%_)
                                                       (if (null? _%rest65375%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%g6538865428%_
                                     (cons _%g6538965430%_ '()))
                               (foldr (lambda (_%g6544965452%_ _%g6545065455%_)
                                        (cons _%g6544965452%_ _%g6545065455%_))
                                      '()
                                      _%g6505865243%_)))
                   (let ((_%$e65458%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type65298%_
                           _%part65377%_)))
                     (if _%$e65458%_
                         ((lambda (_%slot-type65462%_)
                            (let ((_%slot-type65465%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx65034%_
                                      _%slot-type65462%_))))
                              (_%loop65293%_
                               _%rest65375%_
                               _%slot-type65465%_
                               (cons _%g6538865428%_
                                     (cons _%g6538965430%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type65298%_
                                _%part65377%_)
                               '#f)))
                          _%$e65458%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx65034%_
                          _%g6505965245%_
                          _%part65377%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd6539465422%_
                                                     _%hd6539165412%_)
                                                    (_%g6538665401%_
                                                     _%g6538765405%_))))
                                            (_%g6538665401%_
                                             _%g6538765405%_))))
                                    (_%g6538665401%_ _%g6538765405%_)))))
                        (_%g6538565470%_
                         (list (if _%nil-check?65301%_
                                   (cons 'check-nil!
                                         (cons _%object65299%_ '()))
                                   _%object65299%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx65034%_
                                _%type65298%_
                                _%part65377%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type65298%_))
                          (if (null? _%rest65375%_)
                              (let* ((_%g6547665491%_
                                      (lambda (_%g6547765487%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g6547765487%_)))
                                     (_%g6547565544%_
                                      (lambda (_%g6547765495%_)
                                        (if (gx#stx-pair? _%g6547765495%_)
                                            (let ((_%e6548065498%_
                                                   (gx#syntax-e
                                                    _%g6547765495%_)))
                                              (let ((_%hd6548165502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6548065498%_)))
                                                    (_%tl6548265505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6548065498%_))))
                                                (if (gx#stx-pair?
                                                     _%tl6548265505%_)
                                                    (let ((_%e6548365508%_
                                                           (gx#syntax-e
                                                            _%tl6548265505%_)))
                                                      (let ((_%hd6548465512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6548365508%_)))
                    (_%tl6548565515%_
                     (let () (declare (not safe)) (##cdr _%e6548365508%_))))
                (if (gx#stx-null? _%tl6548565515%_)
                    ((lambda (_%g6547865518%_ _%g6547965520%_)
                       (cons _%g6547865518%_
                             (cons _%g6547965520%_
                                   (foldr (lambda (_%g6553565538%_
                                                   _%g6553665541%_)
                                            (cons _%g6553565538%_
                                                  _%g6553665541%_))
                                          '()
                                          _%g6505865243%_))))
                     _%hd6548465512%_
                     _%hd6548165502%_)
                    (_%g6547665491%_ _%g6547765495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6547665491%_
                                                     _%g6547765495%_))))
                                            (_%g6547665491%_
                                             _%g6547765495%_)))))
                                (_%g6547565544%_
                                 (list (if _%nil-check?65301%_
                                           (cons 'check-nil!
                                                 (cons _%object65299%_ '()))
                                           _%object65299%_)
                                       (gx#stx-identifier
                                        _%g6505965245%_
                                        (if _%checked-method?65300%_ '"" '"&")
                                        (let ((__obj109052 _%type65298%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj109052
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj109052
                                                 '2
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj109052
                                               'name)))
                                        '"-"
                                        _%part65377%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx65034%_
                               _%g6505965245%_
                               _%part65377%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx65034%_
                           _%type65298%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts6530265310%_)
                                                  (let ((_%hd6530765554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts6530265310%_)))
                                                        (_%tl6530865557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts6530265310%_))))
                                                    (let* ((_%part65560%_
                                                            _%hd6530765554%_)
                                                           (_%rest65563%_
                                                            _%tl6530865557%_))
                                                      (_%K6530665550%_
                                                       _%rest65563%_
                                                       _%part65560%_)))
                                                  (_%else6530465371%_)))))
                                        _%$e65286%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g6505965245%_
                                                   (foldr (lambda (_%g6556765570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6556865573%_)
                    (cons _%g6556765570%_ _%g6556865573%_))
                  '()
                  _%g6505865243%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g6526565272%_)
                             (let ((_%hd6526965580%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g6526565272%_)))
                                   (_%tl6527065583%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g6526565272%_))))
                               (let* ((_%var65586%_ _%hd6526965580%_)
                                      (_%parts65589%_ _%tl6527065583%_))
                                 (_%K6526865576%_
                                  _%parts65589%_
                                  _%var65586%_)))
                             (_%E6526765278%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g6505965245%_
                                   (foldr (lambda (_%g6559165594%_
                                                   _%g6559265597%_)
                                            (cons _%g6559165594%_
                                                  _%g6559265597%_))
                                          '()
                                          _%g6505865243%_))))))
                (_%__kont103552103553%_
                 (lambda (_%g6508165144%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g6515965162%_ _%g6516065165%_)
                                  (cons _%g6515965162%_ _%g6516065165%_))
                                '()
                                _%g6508165144%_)))))
            (let* ((_%__match103628103629%_
                    (lambda (_%e6508265106%_
                             _%hd6508365110%_
                             _%tl6508465113%_
                             _%__splice103554103555%_
                             _%target6508565116%_
                             _%tl6508765119%_)
                      (letrec ((_%loop6508865122%_
                                (lambda (_%hd6508665126%_ _%arg6509265129%_)
                                  (if (gx#stx-pair? _%hd6508665126%_)
                                      (let ((_%e6508965131%_
                                             (gx#syntax-e _%hd6508665126%_)))
                                        (let ((_%lp-tl6509165138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6508965131%_)))
                                              (_%lp-hd6509065135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6508965131%_))))
                                          (_%loop6508865122%_
                                           _%lp-tl6509165138%_
                                           (cons _%lp-hd6509065135%_
                                                 _%arg6509265129%_))))
                                      (let ((_%arg6509365141%_
                                             (reverse _%arg6509265129%_)))
                                        (_%__kont103552103553%_
                                         _%arg6509365141%_))))))
                        (_%loop6508865122%_ _%target6508565116%_ '()))))
                   (_%__match103614103615%_
                    (lambda (_%e6506065175%_
                             _%hd6506165179%_
                             _%tl6506265182%_
                             _%e6506365185%_
                             _%hd6506465189%_
                             _%tl6506565192%_
                             _%e6506665195%_
                             _%hd6506765199%_
                             _%tl6506865202%_
                             _%e6506965205%_
                             _%hd6507065209%_
                             _%tl6507165212%_
                             _%__splice103550103551%_
                             _%target6507265215%_
                             _%tl6507465218%_)
                      (letrec ((_%loop6507565221%_
                                (lambda (_%hd6507365225%_ _%rand6507965228%_)
                                  (if (gx#stx-pair? _%hd6507365225%_)
                                      (let ((_%e6507665230%_
                                             (gx#syntax-e _%hd6507365225%_)))
                                        (let ((_%lp-tl6507865237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6507665230%_)))
                                              (_%lp-hd6507765234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6507665230%_))))
                                          (_%loop6507565221%_
                                           _%lp-tl6507865237%_
                                           (cons _%lp-hd6507765234%_
                                                 _%rand6507965228%_))))
                                      (let ((_%rand6508065240%_
                                             (reverse _%rand6507965228%_)))
                                        (_%__kont103548103549%_
                                         _%rand6508065240%_
                                         _%hd6507065209%_))))))
                        (_%loop6507565221%_ _%target6507265215%_ '()))))
                   (_%__match103588103589%_
                    (lambda (_%e6506065175%_
                             _%hd6506165179%_
                             _%tl6506265182%_
                             _%e6506365185%_
                             _%hd6506465189%_
                             _%tl6506565192%_)
                      (if (gx#stx-pair? _%hd6506465189%_)
                          (let ((_%e6506665195%_
                                 (gx#syntax-e _%hd6506465189%_)))
                            (let ((_%tl6506865202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6506665195%_)))
                                  (_%hd6506765199%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6506665195%_))))
                              (if (gx#identifier? _%hd6506765199%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g109258_|
                                       _%hd6506765199%_)
                                      (if (gx#stx-pair? _%tl6506865202%_)
                                          (let ((_%e6506965205%_
                                                 (gx#syntax-e
                                                  _%tl6506865202%_)))
                                            (let ((_%tl6507165212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6506965205%_)))
                                                  (_%hd6507065209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6506965205%_))))
                                              (if (gx#stx-null?
                                                   _%tl6507165212%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl6506565192%_)
                                                      (let ((_%__splice103550103551%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6506565192%_
                                                              '0)))
                                                        (let ((_%tl6507465218%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice103550103551%_ '1)))
                      (_%target6507265215%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice103550103551%_ '0))))
                  (if (gx#stx-null? _%tl6507465218%_)
                      (_%__match103614103615%_
                       _%e6506065175%_
                       _%hd6506165179%_
                       _%tl6506265182%_
                       _%e6506365185%_
                       _%hd6506465189%_
                       _%tl6506565192%_
                       _%e6506665195%_
                       _%hd6506765199%_
                       _%tl6506865202%_
                       _%e6506965205%_
                       _%hd6507065209%_
                       _%tl6507165212%_
                       _%__splice103550103551%_
                       _%target6507265215%_
                       _%tl6507465218%_)
                      (if (gx#stx-pair/null? _%tl6506265182%_)
                          (let ((_%__splice103554103555%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6506265182%_
                                  '0)))
                            (let ((_%tl6508765119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice103554103555%_
                                      '1)))
                                  (_%target6508565116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice103554103555%_
                                      '0))))
                              (if (gx#stx-null? _%tl6508765119%_)
                                  (_%__match103628103629%_
                                   _%e6506065175%_
                                   _%hd6506165179%_
                                   _%tl6506265182%_
                                   _%__splice103554103555%_
                                   _%target6508565116%_
                                   _%tl6508765119%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6503965099%_)))))
                          (let () (declare (not safe)) (_%g6503965099%_))))))
              (if (gx#stx-pair/null? _%tl6506265182%_)
                  (let ((_%__splice103554103555%_
                         (gx#syntax-split-splice->vector _%tl6506265182%_ '0)))
                    (let ((_%tl6508765119%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '1)))
                          (_%target6508565116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '0))))
                      (if (gx#stx-null? _%tl6508765119%_)
                          (_%__match103628103629%_
                           _%e6506065175%_
                           _%hd6506165179%_
                           _%tl6506265182%_
                           _%__splice103554103555%_
                           _%target6508565116%_
                           _%tl6508765119%_)
                          (let () (declare (not safe)) (_%g6503965099%_)))))
                  (let () (declare (not safe)) (_%g6503965099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6506265182%_)
                                                      (let ((_%__splice103554103555%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6506265182%_
                                                              '0)))
                                                        (let ((_%tl6508765119%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice103554103555%_ '1)))
                      (_%target6508565116%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice103554103555%_ '0))))
                  (if (gx#stx-null? _%tl6508765119%_)
                      (_%__match103628103629%_
                       _%e6506065175%_
                       _%hd6506165179%_
                       _%tl6506265182%_
                       _%__splice103554103555%_
                       _%target6508565116%_
                       _%tl6508765119%_)
                      (let () (declare (not safe)) (_%g6503965099%_)))))
              (let () (declare (not safe)) (_%g6503965099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl6506265182%_)
                                              (let ((_%__splice103554103555%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6506265182%_
                                                      '0)))
                                                (let ((_%tl6508765119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice103554103555%_
                                                          '1)))
                                                      (_%target6508565116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice103554103555%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6508765119%_)
                                                      (_%__match103628103629%_
                                                       _%e6506065175%_
                                                       _%hd6506165179%_
                                                       _%tl6506265182%_
                                                       _%__splice103554103555%_
                                                       _%target6508565116%_
                                                       _%tl6508765119%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6503965099%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6503965099%_))))
                                      (if (gx#stx-pair/null? _%tl6506265182%_)
                                          (let ((_%__splice103554103555%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6506265182%_
                                                  '0)))
                                            (let ((_%tl6508765119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice103554103555%_
                                                      '1)))
                                                  (_%target6508565116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice103554103555%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6508765119%_)
                                                  (_%__match103628103629%_
                                                   _%e6506065175%_
                                                   _%hd6506165179%_
                                                   _%tl6506265182%_
                                                   _%__splice103554103555%_
                                                   _%target6508565116%_
                                                   _%tl6508765119%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6503965099%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6503965099%_))))
                                  (if (gx#stx-pair/null? _%tl6506265182%_)
                                      (let ((_%__splice103554103555%_
                                             (gx#syntax-split-splice->vector
                                              _%tl6506265182%_
                                              '0)))
                                        (let ((_%tl6508765119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice103554103555%_
                                                  '1)))
                                              (_%target6508565116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice103554103555%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl6508765119%_)
                                              (_%__match103628103629%_
                                               _%e6506065175%_
                                               _%hd6506165179%_
                                               _%tl6506265182%_
                                               _%__splice103554103555%_
                                               _%target6508565116%_
                                               _%tl6508765119%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g6503965099%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6503965099%_))))))
                          (if (gx#stx-pair/null? _%tl6506265182%_)
                              (let ((_%__splice103554103555%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6506265182%_
                                      '0)))
                                (let ((_%tl6508765119%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '1)))
                                      (_%target6508565116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6508765119%_)
                                      (_%__match103628103629%_
                                       _%e6506065175%_
                                       _%hd6506165179%_
                                       _%tl6506265182%_
                                       _%__splice103554103555%_
                                       _%target6508565116%_
                                       _%tl6508765119%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6503965099%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6503965099%_))))))
                   (_%__match103576103577%_
                    (lambda (_%e6504365607%_
                             _%hd6504465611%_
                             _%tl6504565614%_
                             _%e6504665617%_
                             _%hd6504765621%_
                             _%tl6504865624%_
                             _%__splice103546103547%_
                             _%target6504965627%_
                             _%tl6505165630%_)
                      (letrec ((_%loop6505265633%_
                                (lambda (_%hd6505065637%_ _%rand6505665640%_)
                                  (if (gx#stx-pair? _%hd6505065637%_)
                                      (let ((_%e6505365642%_
                                             (gx#syntax-e _%hd6505065637%_)))
                                        (let ((_%lp-tl6505565649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6505365642%_)))
                                              (_%lp-hd6505465646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6505365642%_))))
                                          (_%loop6505265633%_
                                           _%lp-tl6505565649%_
                                           (cons _%lp-hd6505465646%_
                                                 _%rand6505665640%_))))
                                      (let ((_%rand6505765652%_
                                             (reverse _%rand6505665640%_)))
                                        (let ((_%g6504165655%_
                                               _%rand6505765652%_)
                                              (_%g6504265657%_
                                               _%hd6504765621%_))
                                          (if (gx#identifier? _%g6504265657%_)
                                              (_%__kont103544103545%_
                                               _%g6504165655%_
                                               _%g6504265657%_)
                                              (_%__match103588103589%_
                                               _%e6504365607%_
                                               _%hd6504465611%_
                                               _%tl6504565614%_
                                               _%e6504665617%_
                                               _%hd6504765621%_
                                               _%tl6504865624%_))))))))
                        (_%loop6505265633%_ _%target6504965627%_ '())))))
              (if (gx#stx-pair? _%__stx103541103542%_)
                  (let ((_%e6504365607%_ (gx#syntax-e _%__stx103541103542%_)))
                    (let ((_%tl6504565614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6504365607%_)))
                          (_%hd6504465611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6504365607%_))))
                      (if (gx#stx-pair? _%tl6504565614%_)
                          (let ((_%e6504665617%_
                                 (gx#syntax-e _%tl6504565614%_)))
                            (let ((_%tl6504865624%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6504665617%_)))
                                  (_%hd6504765621%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6504665617%_))))
                              (if (gx#stx-pair/null? _%tl6504865624%_)
                                  (let ((_%__splice103546103547%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6504865624%_
                                          '0)))
                                    (let ((_%tl6505165630%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice103546103547%_
                                              '1)))
                                          (_%target6504965627%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice103546103547%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6505165630%_)
                                          (_%__match103576103577%_
                                           _%e6504365607%_
                                           _%hd6504465611%_
                                           _%tl6504565614%_
                                           _%e6504665617%_
                                           _%hd6504765621%_
                                           _%tl6504865624%_
                                           _%__splice103546103547%_
                                           _%target6504965627%_
                                           _%tl6505165630%_)
                                          (if (gx#stx-pair? _%hd6504765621%_)
                                              (let ((_%e6506665195%_
                                                     (gx#syntax-e
                                                      _%hd6504765621%_)))
                                                (let ((_%tl6506865202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6506665195%_)))
                                                      (_%hd6506765199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6506665195%_))))
                                                  (if (gx#identifier?
                                                       _%hd6506765199%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g109258_|
                                                           _%hd6506765199%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6506865202%_)
                                                              (let ((_%e6506965205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6506865202%_)))
                        (let ((_%tl6507165212%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6506965205%_)))
                              (_%hd6507065209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6506965205%_))))
                          (if (gx#stx-pair/null? _%tl6504565614%_)
                              (let ((_%__splice103554103555%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6504565614%_
                                      '0)))
                                (let ((_%tl6508765119%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '1)))
                                      (_%target6508565116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6508765119%_)
                                      (_%__match103628103629%_
                                       _%e6504365607%_
                                       _%hd6504465611%_
                                       _%tl6504565614%_
                                       _%__splice103554103555%_
                                       _%target6508565116%_
                                       _%tl6508765119%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6503965099%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6503965099%_)))))
                      (if (gx#stx-pair/null? _%tl6504565614%_)
                          (let ((_%__splice103554103555%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6504565614%_
                                  '0)))
                            (let ((_%tl6508765119%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice103554103555%_
                                      '1)))
                                  (_%target6508565116%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice103554103555%_
                                      '0))))
                              (if (gx#stx-null? _%tl6508765119%_)
                                  (_%__match103628103629%_
                                   _%e6504365607%_
                                   _%hd6504465611%_
                                   _%tl6504565614%_
                                   _%__splice103554103555%_
                                   _%target6508565116%_
                                   _%tl6508765119%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6503965099%_)))))
                          (let () (declare (not safe)) (_%g6503965099%_))))
                  (if (gx#stx-pair/null? _%tl6504565614%_)
                      (let ((_%__splice103554103555%_
                             (gx#syntax-split-splice->vector
                              _%tl6504565614%_
                              '0)))
                        (let ((_%tl6508765119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice103554103555%_ '1)))
                              (_%target6508565116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice103554103555%_ '0))))
                          (if (gx#stx-null? _%tl6508765119%_)
                              (_%__match103628103629%_
                               _%e6504365607%_
                               _%hd6504465611%_
                               _%tl6504565614%_
                               _%__splice103554103555%_
                               _%target6508565116%_
                               _%tl6508765119%_)
                              (let ()
                                (declare (not safe))
                                (_%g6503965099%_)))))
                      (let () (declare (not safe)) (_%g6503965099%_))))
              (if (gx#stx-pair/null? _%tl6504565614%_)
                  (let ((_%__splice103554103555%_
                         (gx#syntax-split-splice->vector _%tl6504565614%_ '0)))
                    (let ((_%tl6508765119%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '1)))
                          (_%target6508565116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '0))))
                      (if (gx#stx-null? _%tl6508765119%_)
                          (_%__match103628103629%_
                           _%e6504365607%_
                           _%hd6504465611%_
                           _%tl6504565614%_
                           _%__splice103554103555%_
                           _%target6508565116%_
                           _%tl6508765119%_)
                          (let () (declare (not safe)) (_%g6503965099%_)))))
                  (let () (declare (not safe)) (_%g6503965099%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6504565614%_)
                                                  (let ((_%__splice103554103555%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6504565614%_
                                                          '0)))
                                                    (let ((_%tl6508765119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice103554103555%_
                                                              '1)))
                                                          (_%target6508565116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice103554103555%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6508765119%_)
                                                          (_%__match103628103629%_
                                                           _%e6504365607%_
                                                           _%hd6504465611%_
                                                           _%tl6504565614%_
                                                           _%__splice103554103555%_
                                                           _%target6508565116%_
                                                           _%tl6508765119%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6503965099%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6503965099%_)))))))
                                  (if (gx#stx-pair? _%hd6504765621%_)
                                      (let ((_%e6506665195%_
                                             (gx#syntax-e _%hd6504765621%_)))
                                        (let ((_%tl6506865202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6506665195%_)))
                                              (_%hd6506765199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6506665195%_))))
                                          (if (gx#identifier? _%hd6506765199%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g109258_|
                                                   _%hd6506765199%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6506865202%_)
                                                      (let ((_%e6506965205%_
                                                             (gx#syntax-e
                                                              _%tl6506865202%_)))
                                                        (let ((_%tl6507165212%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6506965205%_)))
                      (_%hd6507065209%_
                       (let () (declare (not safe)) (##car _%e6506965205%_))))
                  (if (gx#stx-pair/null? _%tl6504565614%_)
                      (let ((_%__splice103554103555%_
                             (gx#syntax-split-splice->vector
                              _%tl6504565614%_
                              '0)))
                        (let ((_%tl6508765119%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice103554103555%_ '1)))
                              (_%target6508565116%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice103554103555%_ '0))))
                          (if (gx#stx-null? _%tl6508765119%_)
                              (_%__match103628103629%_
                               _%e6504365607%_
                               _%hd6504465611%_
                               _%tl6504565614%_
                               _%__splice103554103555%_
                               _%target6508565116%_
                               _%tl6508765119%_)
                              (let ()
                                (declare (not safe))
                                (_%g6503965099%_)))))
                      (let () (declare (not safe)) (_%g6503965099%_)))))
              (if (gx#stx-pair/null? _%tl6504565614%_)
                  (let ((_%__splice103554103555%_
                         (gx#syntax-split-splice->vector _%tl6504565614%_ '0)))
                    (let ((_%tl6508765119%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '1)))
                          (_%target6508565116%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice103554103555%_ '0))))
                      (if (gx#stx-null? _%tl6508765119%_)
                          (_%__match103628103629%_
                           _%e6504365607%_
                           _%hd6504465611%_
                           _%tl6504565614%_
                           _%__splice103554103555%_
                           _%target6508565116%_
                           _%tl6508765119%_)
                          (let () (declare (not safe)) (_%g6503965099%_)))))
                  (let () (declare (not safe)) (_%g6503965099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6504565614%_)
                                                      (let ((_%__splice103554103555%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6504565614%_
                                                              '0)))
                                                        (let ((_%tl6508765119%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice103554103555%_ '1)))
                      (_%target6508565116%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice103554103555%_ '0))))
                  (if (gx#stx-null? _%tl6508765119%_)
                      (_%__match103628103629%_
                       _%e6504365607%_
                       _%hd6504465611%_
                       _%tl6504565614%_
                       _%__splice103554103555%_
                       _%target6508565116%_
                       _%tl6508765119%_)
                      (let () (declare (not safe)) (_%g6503965099%_)))))
              (let () (declare (not safe)) (_%g6503965099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6504565614%_)
                                                  (let ((_%__splice103554103555%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6504565614%_
                                                          '0)))
                                                    (let ((_%tl6508765119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice103554103555%_
                                                              '1)))
                                                          (_%target6508565116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice103554103555%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6508765119%_)
                                                          (_%__match103628103629%_
                                                           _%e6504365607%_
                                                           _%hd6504465611%_
                                                           _%tl6504565614%_
                                                           _%__splice103554103555%_
                                                           _%target6508565116%_
                                                           _%tl6508765119%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6503965099%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6503965099%_))))))
                                      (if (gx#stx-pair/null? _%tl6504565614%_)
                                          (let ((_%__splice103554103555%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6504565614%_
                                                  '0)))
                                            (let ((_%tl6508765119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice103554103555%_
                                                      '1)))
                                                  (_%target6508565116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice103554103555%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6508765119%_)
                                                  (_%__match103628103629%_
                                                   _%e6504365607%_
                                                   _%hd6504465611%_
                                                   _%tl6504565614%_
                                                   _%__splice103554103555%_
                                                   _%target6508565116%_
                                                   _%tl6508765119%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6503965099%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6503965099%_)))))))
                          (if (gx#stx-pair/null? _%tl6504565614%_)
                              (let ((_%__splice103554103555%_
                                     (gx#syntax-split-splice->vector
                                      _%tl6504565614%_
                                      '0)))
                                (let ((_%tl6508765119%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '1)))
                                      (_%target6508565116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice103554103555%_
                                          '0))))
                                  (if (gx#stx-null? _%tl6508765119%_)
                                      (_%__match103628103629%_
                                       _%e6504365607%_
                                       _%hd6504465611%_
                                       _%tl6504565614%_
                                       _%__splice103554103555%_
                                       _%target6508565116%_
                                       _%tl6508765119%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g6503965099%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6503965099%_))))))
                  (let () (declare (not safe)) (_%g6503965099%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx65689%_)
        (let* ((_%__stx103631103632%_ _%stx65689%_)
               (_%g6569365714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx103631103632%_))))
          (let ((_%__kont103634103635%_
                 (lambda (_%g6569565782%_)
                   (let* ((_%g6579465801%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx65689%_
                            _%g6569565782%_))
                          (_%E6579665807%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g6579465801%_
                                    '([var . parts]))
                             (void)))
                          (_%K6579766023%_
                           (lambda (_%parts65811%_ _%var65813%_)
                             (let ((_%$e65815%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var65813%_))))
                               (if _%$e65815%_
                                   ((lambda (_%te65819%_)
                                      (let _%loop65822%_ ((_%parts65825%_
                                                           _%parts65811%_)
                                                          (_%type65827%_
                                                           (##direct-structure-ref
                                                            _%te65819%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object65828%_
                                                           _%var65813%_)
                                                          (_%nil-check?65829%_
                                                           '#f))
                                        (let* ((_%parts6583065838%_
                                                _%parts65825%_)
                                               (_%else6583265850%_
                                                (lambda () _%object65828%_))
                                               (_%K6583466005%_
                                                (lambda (_%rest65854%_
                                                         _%part65856%_)
                                                  (if (and (not _%nil-check?65829%_)
                                                           (let ((__tmp109259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part65856%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp109259)))
              (let ((_%str65860%_ (symbol->string _%part65856%_)))
                (_%loop65822%_
                 (cons (let ((__tmp109260
                              (substring
                               _%str65860%_
                               '1
                               (string-length _%str65860%_))))
                         (declare (not safe))
                         (##string->symbol __tmp109260))
                       _%rest65854%_)
                 _%type65827%_
                 _%object65828%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type65827%_))
                  (let* ((_%g6586565880%_
                          (lambda (_%g6586665876%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g6586665876%_)))
                         (_%g6586465997%_
                          (lambda (_%g6586665884%_)
                            (if (gx#stx-pair? _%g6586665884%_)
                                (let ((_%e6586965887%_
                                       (gx#syntax-e _%g6586665884%_)))
                                  (let ((_%hd6587065891%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6586965887%_)))
                                        (_%tl6587165894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6586965887%_))))
                                    (if (gx#stx-pair? _%tl6587165894%_)
                                        (let ((_%e6587265897%_
                                               (gx#syntax-e _%tl6587165894%_)))
                                          (let ((_%hd6587365901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6587265897%_)))
                                                (_%tl6587465904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6587265897%_))))
                                            (if (gx#stx-null? _%tl6587465904%_)
                                                ((lambda (_%g6586765907%_
                                                          _%g6586865909%_)
                                                   (if (null? _%rest65854%_)
                                                       (let ((_%$e65939%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type65827%_
                                                               _%part65856%_)))
                                                         (if _%$e65939%_
                                                             ((lambda (_%slot-type65943%_)
                                                                (let* ((_%g6594665954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g6594765950%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6594765950%_)))
                               (_%g6594565977%_
                                (lambda (_%g6594765958%_)
                                  ((lambda (_%g6594865961%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%g6594865961%_
                                                             '()))
                                                 (cons (cons _%g6586765907%_
                                                             (cons _%g6586865909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g6594765958%_))))
                          (_%g6594565977%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx65689%_
                              _%slot-type65943%_)))))
                      _%$e65939%_)
                     (if _%nil-check?65829%_
                         (cons _%g6586765907%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%g6586865909%_ '()))
                                     '()))
                         (cons _%g6586765907%_ (cons _%g6586865909%_ '())))))
               (let ((_%$e65985%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type65827%_
                       _%part65856%_)))
                 (if _%$e65985%_
                     ((lambda (_%type65989%_)
                        (let ((_%type65992%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx65689%_
                                  _%type65989%_))))
                          (if _%nil-check?65829%_
                              (_%loop65822%_
                               _%rest65854%_
                               _%type65992%_
                               (cons _%g6586765907%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%g6586865909%_ '()))
                                           '()))
                               '#f)
                              (_%loop65822%_
                               _%rest65854%_
                               _%type65992%_
                               (cons _%g6586765907%_
                                     (cons _%g6586865909%_ '()))
                               '#f))))
                      _%$e65985%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx65689%_
                      _%g6569565782%_
                      _%part65856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd6587365901%_
                                                 _%hd6587065891%_)
                                                (_%g6586565880%_
                                                 _%g6586665884%_))))
                                        (_%g6586565880%_ _%g6586665884%_))))
                                (_%g6586565880%_ _%g6586665884%_)))))
                    (_%g6586465997%_
                     (list (if _%nil-check?65829%_
                               (cons 'check-nil! (cons _%object65828%_ '()))
                               _%object65828%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx65689%_
                            _%type65827%_
                            _%part65856%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type65827%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx65689%_
                       _%type65827%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts6583065838%_)
                                              (let ((_%hd6583566009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts6583065838%_)))
                                                    (_%tl6583666012%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts6583065838%_))))
                                                (let* ((_%part66015%_
                                                        _%hd6583566009%_)
                                                       (_%rest66018%_
                                                        _%tl6583666012%_))
                                                  (_%K6583466005%_
                                                   _%rest66018%_
                                                   _%part66015%_)))
                                              (_%else6583265850%_)))))
                                    _%$e65815%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g6569565782%_ '())))))))
                     (if (pair? _%g6579465801%_)
                         (let ((_%hd6579866027%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g6579465801%_)))
                               (_%tl6579966030%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g6579465801%_))))
                           (let* ((_%var66033%_ _%hd6579866027%_)
                                  (_%parts66036%_ _%tl6579966030%_))
                             (_%K6579766023%_ _%parts66036%_ _%var66033%_)))
                         (_%E6579665807%_)))))
                (_%__kont103636103637%_
                 (lambda (_%g6570265741%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g6570265741%_ '())))))
            (let ((_%__match103652103653%_
                   (lambda (_%e6569665762%_
                            _%hd6569765766%_
                            _%tl6569865769%_
                            _%e6569965772%_
                            _%hd6570065776%_
                            _%tl6570165779%_)
                     (let ((_%g6569565782%_ _%hd6570065776%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g6569565782%_)
                           (_%__kont103634103635%_ _%g6569565782%_)
                           (_%__kont103636103637%_ _%hd6570065776%_))))))
              (if (gx#stx-pair? _%__stx103631103632%_)
                  (let ((_%e6569665762%_ (gx#syntax-e _%__stx103631103632%_)))
                    (let ((_%tl6569865769%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6569665762%_)))
                          (_%hd6569765766%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6569665762%_))))
                      (if (gx#stx-pair? _%tl6569865769%_)
                          (let ((_%e6569965772%_
                                 (gx#syntax-e _%tl6569865769%_)))
                            (let ((_%tl6570165779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6569965772%_)))
                                  (_%hd6570065776%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6569965772%_))))
                              (if (gx#stx-null? _%tl6570165779%_)
                                  (_%__match103652103653%_
                                   _%e6569665762%_
                                   _%hd6569765766%_
                                   _%tl6569865769%_
                                   _%e6569965772%_
                                   _%hd6570065776%_
                                   _%tl6570165779%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6569365714%_)))))
                          (let () (declare (not safe)) (_%g6569365714%_)))))
                  (let () (declare (not safe)) (_%g6569365714%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx66043%_)
        (let* ((_%__stx103669103670%_ _%stx66043%_)
               (_%g6604766076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx103669103670%_))))
          (let ((_%__kont103672103673%_
                 (lambda (_%g6604966168%_ _%g6605066170%_)
                   (let* ((_%g6618466191%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx66043%_
                            _%g6605066170%_))
                          (_%E6618666197%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g6618466191%_
                                    '([var . parts]))
                             (void)))
                          (_%K6618766427%_
                           (lambda (_%parts66201%_ _%var66203%_)
                             (let ((_%$e66205%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var66203%_))))
                               (if _%$e66205%_
                                   ((lambda (_%te66209%_)
                                      (let _%loop66212%_ ((_%parts66215%_
                                                           _%parts66201%_)
                                                          (_%type66217%_
                                                           (##direct-structure-ref
                                                            _%te66209%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object66218%_
                                                           _%var66203%_)
                                                          (_%checked-mutator?66219%_
                                                           (##direct-structure-ref
                                                            _%te66209%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?66220%_
                                                           '#f))
                                        (let* ((_%parts6622166228%_
                                                _%parts66215%_)
                                               (_%E6622366234%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts6622166228%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K6622466409%_
                                                (lambda (_%rest66238%_
                                                         _%part66240%_)
                                                  (if (and (not _%nil-check?66220%_)
                                                           (let ((__tmp109261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part66240%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp109261)))
              (let ((_%str66244%_ (symbol->string _%part66240%_)))
                (_%loop66212%_
                 (cons (let ((__tmp109262
                              (substring
                               _%str66244%_
                               '1
                               (string-length _%str66244%_))))
                         (declare (not safe))
                         (##string->symbol __tmp109262))
                       _%rest66238%_)
                 _%type66217%_
                 _%object66218%_
                 _%checked-mutator?66219%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type66217%_))
                  (if (null? _%rest66238%_)
                      (let* ((_%g6625166266%_
                              (lambda (_%g6625266262%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g6625266262%_)))
                             (_%g6625066323%_
                              (lambda (_%g6625266270%_)
                                (if (gx#stx-pair? _%g6625266270%_)
                                    (let ((_%e6625566273%_
                                           (gx#syntax-e _%g6625266270%_)))
                                      (let ((_%hd6625666277%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6625566273%_)))
                                            (_%tl6625766280%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6625566273%_))))
                                        (if (gx#stx-pair? _%tl6625766280%_)
                                            (let ((_%e6625866283%_
                                                   (gx#syntax-e
                                                    _%tl6625766280%_)))
                                              (let ((_%hd6625966287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6625866283%_)))
                                                    (_%tl6626066290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6625866283%_))))
                                                (if (gx#stx-null?
                                                     _%tl6626066290%_)
                                                    ((lambda (_%g6625366293%_
                                                              _%g6625466295%_)
                                                       (if _%nil-check?66220%_
                                                           (cons _%g6625366293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%g6625466295%_ '()))
                               (cons _%g6604966168%_ '())))
                   (cons _%g6625366293%_
                         (cons _%g6625466295%_ (cons _%g6604966168%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd6625966287%_
                                                     _%hd6625666277%_)
                                                    (_%g6625166266%_
                                                     _%g6625266270%_))))
                                            (_%g6625166266%_
                                             _%g6625266270%_))))
                                    (_%g6625166266%_ _%g6625266270%_)))))
                        (_%g6625066323%_
                         (list _%object66218%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx66043%_
                                _%type66217%_
                                _%part66240%_
                                (if _%checked-mutator?66219%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type66217%_
                                     _%part66240%_)
                                    '#f)))))
                      (let ((_%$e66327%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type66217%_
                              _%part66240%_)))
                        (if _%$e66327%_
                            ((lambda (_%type66331%_)
                               (let* ((_%type66334%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx66043%_
                                          _%type66331%_)))
                                      (_%g6633766352%_
                                       (lambda (_%g6633866348%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g6633866348%_)))
                                      (_%g6633666399%_
                                       (lambda (_%g6633866356%_)
                                         (if (gx#stx-pair? _%g6633866356%_)
                                             (let ((_%e6634166359%_
                                                    (gx#syntax-e
                                                     _%g6633866356%_)))
                                               (let ((_%hd6634266363%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e6634166359%_)))
                                                     (_%tl6634366366%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e6634166359%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl6634366366%_)
                                                     (let ((_%e6634466369%_
                                                            (gx#syntax-e
                                                             _%tl6634366366%_)))
                                                       (let ((_%hd6634566373%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e6634466369%_)))
                     (_%tl6634666376%_
                      (let () (declare (not safe)) (##cdr _%e6634466369%_))))
                 (if (gx#stx-null? _%tl6634666376%_)
                     ((lambda (_%g6633966379%_ _%g6634066381%_)
                        (_%loop66212%_
                         _%rest66238%_
                         _%type66334%_
                         (cons _%g6633966379%_ (cons _%g6634066381%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type66334%_
                          _%part66240%_)
                         '#f))
                      _%hd6634566373%_
                      _%hd6634266363%_)
                     (_%g6633766352%_ _%g6633866356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g6633766352%_
                                                      _%g6633866356%_))))
                                             (_%g6633766352%_
                                              _%g6633866356%_)))))
                                 (_%g6633666399%_
                                  (list (if _%nil-check?66220%_
                                            (cons 'check-nil!
                                                  (cons _%object66218%_ '()))
                                            _%object66218%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx66043%_
                                         _%type66334%_
                                         _%part66240%_)))))
                             _%$e66327%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx66043%_
                             _%g6605066170%_
                             _%part66240%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type66217%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx66043%_
                       _%type66217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts6622166228%_)
                                              (let ((_%hd6622566413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts6622166228%_)))
                                                    (_%tl6622666416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts6622166228%_))))
                                                (let* ((_%part66419%_
                                                        _%hd6622566413%_)
                                                       (_%rest66422%_
                                                        _%tl6622666416%_))
                                                  (_%K6622466409%_
                                                   _%rest66422%_
                                                   _%part66419%_)))
                                              (_%E6622366234%_)))))
                                    _%$e66205%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx66043%_)))))))
                     (if (pair? _%g6618466191%_)
                         (let ((_%hd6618866431%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g6618466191%_)))
                               (_%tl6618966434%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g6618466191%_))))
                           (let* ((_%var66437%_ _%hd6618866431%_)
                                  (_%parts66440%_ _%tl6618966434%_))
                             (_%K6618766427%_ _%parts66440%_ _%var66437%_)))
                         (_%E6618666197%_)))))
                (_%__kont103674103675%_
                 (lambda (_%g6606066113%_ _%g6606166115%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx66043%_)))))
            (let ((_%__match103696103697%_
                   (lambda (_%e6605166138%_
                            _%hd6605266142%_
                            _%tl6605366145%_
                            _%e6605466148%_
                            _%hd6605566152%_
                            _%tl6605666155%_
                            _%e6605766158%_
                            _%hd6605866162%_
                            _%tl6605966165%_)
                     (let ((_%g6604966168%_ _%hd6605866162%_)
                           (_%g6605066170%_ _%hd6605566152%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g6605066170%_)
                           (_%__kont103672103673%_
                            _%g6604966168%_
                            _%g6605066170%_)
                           (_%__kont103674103675%_
                            _%hd6605866162%_
                            _%hd6605566152%_))))))
              (if (gx#stx-pair? _%__stx103669103670%_)
                  (let ((_%e6605166138%_ (gx#syntax-e _%__stx103669103670%_)))
                    (let ((_%tl6605366145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6605166138%_)))
                          (_%hd6605266142%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6605166138%_))))
                      (if (gx#stx-pair? _%tl6605366145%_)
                          (let ((_%e6605466148%_
                                 (gx#syntax-e _%tl6605366145%_)))
                            (let ((_%tl6605666155%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6605466148%_)))
                                  (_%hd6605566152%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6605466148%_))))
                              (if (gx#stx-pair? _%tl6605666155%_)
                                  (let ((_%e6605766158%_
                                         (gx#syntax-e _%tl6605666155%_)))
                                    (let ((_%tl6605966165%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6605766158%_)))
                                          (_%hd6605866162%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6605766158%_))))
                                      (if (gx#stx-null? _%tl6605966165%_)
                                          (_%__match103696103697%_
                                           _%e6605166138%_
                                           _%hd6605266142%_
                                           _%tl6605366145%_
                                           _%e6605466148%_
                                           _%hd6605566152%_
                                           _%tl6605666155%_
                                           _%e6605766158%_
                                           _%hd6605866162%_
                                           _%tl6605966165%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6604766076%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6604766076%_)))))
                          (let () (declare (not safe)) (_%g6604766076%_)))))
                  (let () (declare (not safe)) (_%g6604766076%_))))))))))
