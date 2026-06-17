(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g102421_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102422_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102423_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102426_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102427_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102430_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102431_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102432_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102433_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102437_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102438_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102439_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102440_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g102444_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx53082%_)
        (let* ((_%__stx9574795748%_ _%stx53082%_)
               (_%$%g5309153300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9574795748%_))))
          (let ((_%__kont9575095751%_
                 (lambda (_%$%g5309354192%_
                          _%$%g5309454194%_
                          _%$%g5309554195%_
                          _%$%g5309654196%_
                          _%$%g5309754197%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5309754197%_
                                     (cons _%$%g5309654196%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5309754197%_
                                                       (cons _%$%g5309554195%_
                                                             (cons _%$%g5309454194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5424054243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5424154246%_)
                  (cons _%$%g5424054243%_ _%$%g5424154246%_))
                '()
                _%$%g5309354192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9575495755%_
                 (lambda (_%$%g5312554038%_
                          _%$%g5312654040%_
                          _%$%g5312754041%_
                          _%$%g5312854042%_
                          _%$%g5312954043%_
                          _%$%g5313054044%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5313054044%_
                                     (cons _%$%g5312954043%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5313054044%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5312854042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5313054044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5312754041%_
                                       (cons _%$%g5312654040%_ '())))
                           (foldr (lambda (_%$%g5408854091%_ _%$%g5408954094%_)
                                    (cons _%$%g5408854091%_ _%$%g5408954094%_))
                                  '()
                                  _%$%g5312554038%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9575895759%_
                 (lambda (_%$%g5316453857%_
                          _%$%g5316553859%_
                          _%$%g5316653860%_
                          _%$%g5316753861%_)
                   (let ((_%meta53898%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53082%_
                             _%$%g5316553859%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta53898%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5316753861%_
                                           (cons _%$%g5316653860%_
                                                 (cons _%$%g5316553859%_ '())))
                                     (foldr (lambda (_%$%g5390253905%_
                                                     _%$%g5390353908%_)
                                              (cons _%$%g5390253905%_
                                                    _%$%g5390353908%_))
                                            '()
                                            _%$%g5316453857%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta53898%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5316753861%_
                                               (cons _%$%g5316653860%_
                                                     (cons _%$%g5316553859%_
                                                           '())))
                                         (foldr (lambda (_%$%g5391253915%_
                                                         _%$%g5391353918%_)
                                                  (cons _%$%g5391253915%_
                                                        _%$%g5391353918%_))
                                                '()
                                                _%$%g5316453857%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx53082%_
                              _%$%g5316553859%_
                              _%meta53898%_))))))
                (_%__kont9576295763%_
                 (lambda (_%$%g5319253737%_
                          _%$%g5319353739%_
                          _%$%g5319453740%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5319453740%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5319353739%_ '())))
                               (foldr (lambda (_%$%g5376353766%_
                                               _%$%g5376453769%_)
                                        (cons _%$%g5376353766%_
                                              _%$%g5376453769%_))
                                      '()
                                      _%$%g5319253737%_)))))
                (_%__kont9576695767%_
                 (lambda (_%$%g5321953597%_
                          _%$%g5322053599%_
                          _%$%g5322153600%_
                          _%$%g5322253601%_
                          _%$%g5322353602%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5322353602%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5322253601%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5322353602%_
                                                       (cons _%$%g5322153600%_
                                                             (cons _%$%g5322053599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5364353646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5364453649%_)
                  (cons _%$%g5364353646%_ _%$%g5364453649%_))
                '()
                _%$%g5321953597%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9577095771%_
                 (lambda (_%$%g5325453457%_
                          _%$%g5325553459%_
                          _%$%g5325653460%_
                          _%$%g5325753461%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5325753461%_ _%$%g5325653460%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5325553459%_
                                                 (foldr (lambda (_%$%g5348353486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5348453489%_)
                  (cons _%$%g5348353486%_ _%$%g5348453489%_))
                '()
                _%$%g5325453457%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9577495775%_
                 (lambda (_%$%g5327953355%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5337353376%_
                                               _%$%g5337453379%_)
                                        (cons _%$%g5337353376%_
                                              _%$%g5337453379%_))
                                      '()
                                      _%$%g5327953355%_))))))
            (let* ((_%__match9608096081%_
                    (lambda (_%$%e5328053307%_
                             _%$%hd5328153311%_
                             _%$%tl5328253314%_
                             _%$%e5328353317%_
                             _%$%hd5328453321%_
                             _%$%tl5328553324%_
                             _%__splice9577695777%_
                             _%$%target5328653327%_
                             _%$%tl5328853330%_)
                      (letrec ((_%$%loop5328953333%_
                                (lambda (_%$%hd5328753337%_
                                         _%$%body5329353340%_)
                                  (if (gx#stx-pair? _%$%hd5328753337%_)
                                      (let ((_%$%e5329053342%_
                                             (gx#syntax-e _%$%hd5328753337%_)))
                                        (let ((_%$%lp-tl5329253349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5329053342%_)))
                                              (_%$%lp-hd5329153346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5329053342%_))))
                                          (_%$%loop5328953333%_
                                           _%$%lp-tl5329253349%_
                                           (cons _%$%lp-hd5329153346%_
                                                 _%$%body5329353340%_))))
                                      (let ((_%$%body5329453352%_
                                             (reverse _%$%body5329353340%_)))
                                        (_%__kont9577495775%_
                                         _%$%body5329453352%_))))))
                        (_%$%loop5328953333%_ _%$%target5328653327%_ '()))))
                   (_%__match9605896059%_
                    (lambda (_%$%e5325853389%_
                             _%$%hd5325953393%_
                             _%$%tl5326053396%_
                             _%$%e5326153399%_
                             _%$%hd5326253403%_
                             _%$%tl5326353406%_
                             _%$%e5326453409%_
                             _%$%hd5326553413%_
                             _%$%tl5326653416%_
                             _%$%e5326753419%_
                             _%$%hd5326853423%_
                             _%$%tl5326953426%_
                             _%__splice9577295773%_
                             _%$%target5327053429%_
                             _%$%tl5327253432%_)
                      (letrec ((_%$%loop5327353435%_
                                (lambda (_%$%hd5327153439%_
                                         _%$%body5327753442%_)
                                  (if (gx#stx-pair? _%$%hd5327153439%_)
                                      (let ((_%$%e5327453444%_
                                             (gx#syntax-e _%$%hd5327153439%_)))
                                        (let ((_%$%lp-tl5327653451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5327453444%_)))
                                              (_%$%lp-hd5327553448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5327453444%_))))
                                          (_%$%loop5327353435%_
                                           _%$%lp-tl5327653451%_
                                           (cons _%$%lp-hd5327553448%_
                                                 _%$%body5327753442%_))))
                                      (let ((_%$%body5327853454%_
                                             (reverse _%$%body5327753442%_)))
                                        (let ((_%$%g5325453457%_
                                               _%$%body5327853454%_)
                                              (_%$%g5325553459%_
                                               _%$%tl5326653416%_)
                                              (_%$%g5325653460%_
                                               _%$%tl5326953426%_)
                                              (_%$%g5325753461%_
                                               _%$%hd5326853423%_))
                                          (if (gx#identifier?
                                               _%$%g5325753461%_)
                                              (_%__kont9577095771%_
                                               _%$%g5325453457%_
                                               _%$%g5325553459%_
                                               _%$%g5325653460%_
                                               _%$%g5325753461%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_)))))))))
                        (_%$%loop5327353435%_ _%$%target5327053429%_ '()))))
                   (_%__match9604496045%_
                    (lambda (_%$%e5325853389%_
                             _%$%hd5325953393%_
                             _%$%tl5326053396%_
                             _%$%e5326153399%_
                             _%$%hd5326253403%_
                             _%$%tl5326353406%_
                             _%$%e5326453409%_
                             _%$%hd5326553413%_
                             _%$%tl5326653416%_)
                      (if (gx#stx-pair? _%$%hd5326553413%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5326553413%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (if (gx#stx-pair/null? _%$%tl5326353406%_)
                                  (let ((_%__splice9577295773%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5326353406%_
                                          '0)))
                                    (let ((_%$%tl5327253432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '1)))
                                          (_%$%target5327053429%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327253432%_)
                                          (_%__match9605896059%_
                                           _%$%e5325853389%_
                                           _%$%hd5325953393%_
                                           _%$%tl5326053396%_
                                           _%$%e5326153399%_
                                           _%$%hd5326253403%_
                                           _%$%tl5326353406%_
                                           _%$%e5326453409%_
                                           _%$%hd5326553413%_
                                           _%$%tl5326653416%_
                                           _%$%e5326753419%_
                                           _%$%hd5326853423%_
                                           _%$%tl5326953426%_
                                           _%__splice9577295773%_
                                           _%$%target5327053429%_
                                           _%$%tl5327253432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                   (_%__match9602696027%_
                    (lambda (_%$%e5322453499%_
                             _%$%hd5322553503%_
                             _%$%tl5322653506%_
                             _%$%e5322753509%_
                             _%$%hd5322853513%_
                             _%$%tl5322953516%_
                             _%$%e5323053519%_
                             _%$%hd5323153523%_
                             _%$%tl5323253526%_
                             _%$%e5323353529%_
                             _%$%hd5323453533%_
                             _%$%tl5323553536%_
                             _%$%e5323653539%_
                             _%$%hd5323753543%_
                             _%$%tl5323853546%_
                             _%$%e5323953549%_
                             _%$%hd5324053553%_
                             _%$%tl5324153556%_
                             _%$%e5324253559%_
                             _%$%hd5324353563%_
                             _%$%tl5324453566%_
                             _%__splice9576895769%_
                             _%$%target5324553569%_
                             _%$%tl5324753572%_)
                      (letrec ((_%$%loop5324853575%_
                                (lambda (_%$%hd5324653579%_
                                         _%$%body5325253582%_)
                                  (if (gx#stx-pair? _%$%hd5324653579%_)
                                      (let ((_%$%e5324953584%_
                                             (gx#syntax-e _%$%hd5324653579%_)))
                                        (let ((_%$%lp-tl5325153591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5324953584%_)))
                                              (_%$%lp-hd5325053588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5324953584%_))))
                                          (_%$%loop5324853575%_
                                           _%$%lp-tl5325153591%_
                                           (cons _%$%lp-hd5325053588%_
                                                 _%$%body5325253582%_))))
                                      (let ((_%$%body5325353594%_
                                             (reverse _%$%body5325253582%_)))
                                        (let ((_%$%g5321953597%_
                                               _%$%body5325353594%_)
                                              (_%$%g5322053599%_
                                               _%$%hd5324353563%_)
                                              (_%$%g5322153600%_
                                               _%$%hd5324053553%_)
                                              (_%$%g5322253601%_
                                               _%$%hd5323753543%_)
                                              (_%$%g5322353602%_
                                               _%$%hd5323153523%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5322353602%_)
                                                   (gx#identifier?
                                                    _%$%g5322053599%_)
                                                   (gx#identifier?
                                                    _%$%g5322153600%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5322153600%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5322153600%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5322153600%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5322153600%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9576695767%_
                                               _%$%g5321953597%_
                                               _%$%g5322053599%_
                                               _%$%g5322153600%_
                                               _%$%g5322253601%_
                                               _%$%g5322353602%_)
                                              (_%__match9604496045%_
                                               _%$%e5322453499%_
                                               _%$%hd5322553503%_
                                               _%$%tl5322653506%_
                                               _%$%e5322753509%_
                                               _%$%hd5322853513%_
                                               _%$%tl5322953516%_
                                               _%$%e5323053519%_
                                               _%$%hd5323153523%_
                                               _%$%tl5323253526%_))))))))
                        (_%$%loop5324853575%_ _%$%target5324553569%_ '()))))
                   (_%__match9597095971%_
                    (lambda (_%$%e5319553659%_
                             _%$%hd5319653663%_
                             _%$%tl5319753666%_
                             _%$%e5319853669%_
                             _%$%hd5319953673%_
                             _%$%tl5320053676%_
                             _%$%e5320153679%_
                             _%$%hd5320253683%_
                             _%$%tl5320353686%_
                             _%$%e5320453689%_
                             _%$%hd5320553693%_
                             _%$%tl5320653696%_
                             _%$%e5320753699%_
                             _%$%hd5320853703%_
                             _%$%tl5320953706%_
                             _%__splice9576495765%_
                             _%$%target5321053709%_
                             _%$%tl5321253712%_)
                      (letrec ((_%$%loop5321353715%_
                                (lambda (_%$%hd5321153719%_
                                         _%$%body5321753722%_)
                                  (if (gx#stx-pair? _%$%hd5321153719%_)
                                      (let ((_%$%e5321453724%_
                                             (gx#syntax-e _%$%hd5321153719%_)))
                                        (let ((_%$%lp-tl5321653731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5321453724%_)))
                                              (_%$%lp-hd5321553728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5321453724%_))))
                                          (_%$%loop5321353715%_
                                           _%$%lp-tl5321653731%_
                                           (cons _%$%lp-hd5321553728%_
                                                 _%$%body5321753722%_))))
                                      (let ((_%$%body5321853734%_
                                             (reverse _%$%body5321753722%_)))
                                        (let ((_%$%g5319253737%_
                                               _%$%body5321853734%_)
                                              (_%$%g5319353739%_
                                               _%$%hd5320853703%_)
                                              (_%$%g5319453740%_
                                               _%$%hd5320253683%_))
                                          (if (gx#identifier?
                                               _%$%g5319453740%_)
                                              (_%__kont9576295763%_
                                               _%$%g5319253737%_
                                               _%$%g5319353739%_
                                               _%$%g5319453740%_)
                                              (_%__match9604496045%_
                                               _%$%e5319553659%_
                                               _%$%hd5319653663%_
                                               _%$%tl5319753666%_
                                               _%$%e5319853669%_
                                               _%$%hd5319953673%_
                                               _%$%tl5320053676%_
                                               _%$%e5320153679%_
                                               _%$%hd5320253683%_
                                               _%$%tl5320353686%_))))))))
                        (_%$%loop5321353715%_ _%$%target5321053709%_ '()))))
                   (_%__match9595095951%_
                    (lambda (_%$%e5319553659%_
                             _%$%hd5319653663%_
                             _%$%tl5319753666%_
                             _%$%e5319853669%_
                             _%$%hd5319953673%_
                             _%$%tl5320053676%_
                             _%$%e5320153679%_
                             _%$%hd5320253683%_
                             _%$%tl5320353686%_
                             _%$%e5320453689%_
                             _%$%hd5320553693%_
                             _%$%tl5320653696%_)
                      (if (gx#identifier? _%$%hd5320553693%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102421_|
                               _%$%hd5320553693%_)
                              (if (gx#stx-pair? _%$%tl5320653696%_)
                                  (let ((_%$%e5320753699%_
                                         (gx#syntax-e _%$%tl5320653696%_)))
                                    (let ((_%$%tl5320953706%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5320753699%_)))
                                          (_%$%hd5320853703%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5320753699%_))))
                                      (if (gx#stx-null? _%$%tl5320953706%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5320053676%_)
                                              (let ((_%__splice9576495765%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5320053676%_
                                                      '0)))
                                                (let ((_%$%tl5321253712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576495765%_
                                                          '1)))
                                                      (_%$%target5321053709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9576495765%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5321253712%_)
                                                      (_%__match9597095971%_
                                                       _%$%e5319553659%_
                                                       _%$%hd5319653663%_
                                                       _%$%tl5319753666%_
                                                       _%$%e5319853669%_
                                                       _%$%hd5319953673%_
                                                       _%$%tl5320053676%_
                                                       _%$%e5320153679%_
                                                       _%$%hd5320253683%_
                                                       _%$%tl5320353686%_
                                                       _%$%e5320453689%_
                                                       _%$%hd5320553693%_
                                                       _%$%tl5320653696%_
                                                       _%$%e5320753699%_
                                                       _%$%hd5320853703%_
                                                       _%$%tl5320953706%_
                                                       _%__splice9576495765%_
                                                       _%$%target5321053709%_
                                                       _%$%tl5321253712%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5320253683%_)
                                                          (let ((_%$%e5326753419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5320253683%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5320253683%_)
                                                  (let ((_%$%e5326753419%_
                                                         (gx#syntax-e
                                                          _%$%hd5320253683%_)))
                                                    (let ((_%$%tl5326953426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5326753419%_)))
                                                          (_%$%hd5326853423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5326753419%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309153300%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))
                                          (if (gx#stx-pair? _%$%tl5320953706%_)
                                              (let ((_%$%e5323953549%_
                                                     (gx#syntax-e
                                                      _%$%tl5320953706%_)))
                                                (let ((_%$%tl5324153556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5323953549%_)))
                                                      (_%$%hd5324053553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5323953549%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5324153556%_)
                                                      (let ((_%$%e5324253559%_
                                                             (gx#syntax-e
                                                              _%$%tl5324153556%_)))
                                                        (let ((_%$%tl5324453566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324253559%_)))
                      (_%$%hd5324353563%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324253559%_))))
                  (if (gx#stx-null? _%$%tl5324453566%_)
                      (if (gx#stx-pair/null? _%$%tl5320053676%_)
                          (let ((_%__splice9576895769%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5320053676%_
                                  '0)))
                            (let ((_%$%tl5324753572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576895769%_ '1)))
                                  (_%$%target5324553569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576895769%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324753572%_)
                                  (_%__match9602696027%_
                                   _%$%e5319553659%_
                                   _%$%hd5319653663%_
                                   _%$%tl5319753666%_
                                   _%$%e5319853669%_
                                   _%$%hd5319953673%_
                                   _%$%tl5320053676%_
                                   _%$%e5320153679%_
                                   _%$%hd5320253683%_
                                   _%$%tl5320353686%_
                                   _%$%e5320453689%_
                                   _%$%hd5320553693%_
                                   _%$%tl5320653696%_
                                   _%$%e5320753699%_
                                   _%$%hd5320853703%_
                                   _%$%tl5320953706%_
                                   _%$%e5323953549%_
                                   _%$%hd5324053553%_
                                   _%$%tl5324153556%_
                                   _%$%e5324253559%_
                                   _%$%hd5324353563%_
                                   _%$%tl5324453566%_
                                   _%__splice9576895769%_
                                   _%$%target5324553569%_
                                   _%$%tl5324753572%_)
                                  (if (gx#stx-pair? _%$%hd5320253683%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5320253683%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))
                          (if (gx#stx-pair? _%$%hd5320253683%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5320253683%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                      (if (gx#stx-pair? _%$%hd5320253683%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5320253683%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (if (gx#stx-pair/null? _%$%tl5320053676%_)
                                  (let ((_%__splice9577295773%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5320053676%_
                                          '0)))
                                    (let ((_%$%tl5327253432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '1)))
                                          (_%$%target5327053429%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327253432%_)
                                          (_%__match9605896059%_
                                           _%$%e5319553659%_
                                           _%$%hd5319653663%_
                                           _%$%tl5319753666%_
                                           _%$%e5319853669%_
                                           _%$%hd5319953673%_
                                           _%$%tl5320053676%_
                                           _%$%e5320153679%_
                                           _%$%hd5320253683%_
                                           _%$%tl5320353686%_
                                           _%$%e5326753419%_
                                           _%$%hd5326853423%_
                                           _%$%tl5326953426%_
                                           _%__splice9577295773%_
                                           _%$%target5327053429%_
                                           _%$%tl5327253432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))))
              (if (gx#stx-pair? _%$%hd5320253683%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5320253683%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5320053676%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5320053676%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5319553659%_
                                   _%$%hd5319653663%_
                                   _%$%tl5319753666%_
                                   _%$%e5319853669%_
                                   _%$%hd5319953673%_
                                   _%$%tl5320053676%_
                                   _%$%e5320153679%_
                                   _%$%hd5320253683%_
                                   _%$%tl5320353686%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5320253683%_)
                                                  (let ((_%$%e5326753419%_
                                                         (gx#syntax-e
                                                          _%$%hd5320253683%_)))
                                                    (let ((_%$%tl5326953426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5326753419%_)))
                                                          (_%$%hd5326853423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5326753419%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5320053676%_)
                                                          (let ((_%__splice9577295773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5320053676%_
                          '0)))
                    (let ((_%$%tl5327253432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '1)))
                          (_%$%target5327053429%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '0))))
                      (if (gx#stx-null? _%$%tl5327253432%_)
                          (_%__match9605896059%_
                           _%$%e5319553659%_
                           _%$%hd5319653663%_
                           _%$%tl5319753666%_
                           _%$%e5319853669%_
                           _%$%hd5319953673%_
                           _%$%tl5320053676%_
                           _%$%e5320153679%_
                           _%$%hd5320253683%_
                           _%$%tl5320353686%_
                           _%$%e5326753419%_
                           _%$%hd5326853423%_
                           _%$%tl5326953426%_
                           _%__splice9577295773%_
                           _%$%target5327053429%_
                           _%$%tl5327253432%_)
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))))
                                  (if (gx#stx-pair? _%$%hd5320253683%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5320253683%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5320053676%_)
                                              (let ((_%__splice9577295773%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5320053676%_
                                                      '0)))
                                                (let ((_%$%tl5327253432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '1)))
                                                      (_%$%target5327053429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327253432%_)
                                                      (_%__match9605896059%_
                                                       _%$%e5319553659%_
                                                       _%$%hd5319653663%_
                                                       _%$%tl5319753666%_
                                                       _%$%e5319853669%_
                                                       _%$%hd5319953673%_
                                                       _%$%tl5320053676%_
                                                       _%$%e5320153679%_
                                                       _%$%hd5320253683%_
                                                       _%$%tl5320353686%_
                                                       _%$%e5326753419%_
                                                       _%$%hd5326853423%_
                                                       _%$%tl5326953426%_
                                                       _%__splice9577295773%_
                                                       _%$%target5327053429%_
                                                       _%$%tl5327253432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309153300%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                              (if (gx#stx-pair? _%$%hd5320253683%_)
                                  (let ((_%$%e5326753419%_
                                         (gx#syntax-e _%$%hd5320253683%_)))
                                    (let ((_%$%tl5326953426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5326753419%_)))
                                          (_%$%hd5326853423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5326753419%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5320053676%_)
                                          (let ((_%__splice9577295773%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5320053676%_
                                                  '0)))
                                            (let ((_%$%tl5327253432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9577295773%_
                                                      '1)))
                                                  (_%$%target5327053429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9577295773%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5327253432%_)
                                                  (_%__match9605896059%_
                                                   _%$%e5319553659%_
                                                   _%$%hd5319653663%_
                                                   _%$%tl5319753666%_
                                                   _%$%e5319853669%_
                                                   _%$%hd5319953673%_
                                                   _%$%tl5320053676%_
                                                   _%$%e5320153679%_
                                                   _%$%hd5320253683%_
                                                   _%$%tl5320353686%_
                                                   _%$%e5326753419%_
                                                   _%$%hd5326853423%_
                                                   _%$%tl5326953426%_
                                                   _%__splice9577295773%_
                                                   _%$%target5327053429%_
                                                   _%$%tl5327253432%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                          (if (gx#stx-pair? _%$%hd5320253683%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5320253683%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (if (gx#stx-pair/null? _%$%tl5320053676%_)
                                      (let ((_%__splice9577295773%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5320053676%_
                                              '0)))
                                        (let ((_%$%tl5327253432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9577295773%_
                                                  '1)))
                                              (_%$%target5327053429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9577295773%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5327253432%_)
                                              (_%__match9605896059%_
                                               _%$%e5319553659%_
                                               _%$%hd5319653663%_
                                               _%$%tl5319753666%_
                                               _%$%e5319853669%_
                                               _%$%hd5319953673%_
                                               _%$%tl5320053676%_
                                               _%$%e5320153679%_
                                               _%$%hd5320253683%_
                                               _%$%tl5320353686%_
                                               _%$%e5326753419%_
                                               _%$%hd5326853423%_
                                               _%$%tl5326953426%_
                                               _%__splice9577295773%_
                                               _%$%target5327053429%_
                                               _%$%tl5327253432%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))))
                   (_%__match9592695927%_
                    (lambda (_%$%e5316853779%_
                             _%$%hd5316953783%_
                             _%$%tl5317053786%_
                             _%$%e5317153789%_
                             _%$%hd5317253793%_
                             _%$%tl5317353796%_
                             _%$%e5317453799%_
                             _%$%hd5317553803%_
                             _%$%tl5317653806%_
                             _%$%e5317753809%_
                             _%$%hd5317853813%_
                             _%$%tl5317953816%_
                             _%$%e5318053819%_
                             _%$%hd5318153823%_
                             _%$%tl5318253826%_
                             _%__splice9576095761%_
                             _%$%target5318353829%_
                             _%$%tl5318553832%_)
                      (letrec ((_%$%loop5318653835%_
                                (lambda (_%$%hd5318453839%_
                                         _%$%body5319053842%_)
                                  (if (gx#stx-pair? _%$%hd5318453839%_)
                                      (let ((_%$%e5318753844%_
                                             (gx#syntax-e _%$%hd5318453839%_)))
                                        (let ((_%$%lp-tl5318953851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5318753844%_)))
                                              (_%$%lp-hd5318853848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5318753844%_))))
                                          (_%$%loop5318653835%_
                                           _%$%lp-tl5318953851%_
                                           (cons _%$%lp-hd5318853848%_
                                                 _%$%body5319053842%_))))
                                      (let ((_%$%body5319153854%_
                                             (reverse _%$%body5319053842%_)))
                                        (let ((_%$%g5316453857%_
                                               _%$%body5319153854%_)
                                              (_%$%g5316553859%_
                                               _%$%hd5318153823%_)
                                              (_%$%g5316653860%_
                                               _%$%hd5317853813%_)
                                              (_%$%g5316753861%_
                                               _%$%hd5317553803%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5316753861%_)
                                                   (gx#identifier?
                                                    _%$%g5316553859%_)
                                                   (gx#identifier?
                                                    _%$%g5316653860%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5316653860%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5316653860%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5316653860%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5316653860%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9575895759%_
                                               _%$%g5316453857%_
                                               _%$%g5316553859%_
                                               _%$%g5316653860%_
                                               _%$%g5316753861%_)
                                              (_%__match9595095951%_
                                               _%$%e5316853779%_
                                               _%$%hd5316953783%_
                                               _%$%tl5317053786%_
                                               _%$%e5317153789%_
                                               _%$%hd5317253793%_
                                               _%$%tl5317353796%_
                                               _%$%e5317453799%_
                                               _%$%hd5317553803%_
                                               _%$%tl5317653806%_
                                               _%$%e5317753809%_
                                               _%$%hd5317853813%_
                                               _%$%tl5317953816%_))))))))
                        (_%$%loop5318653835%_ _%$%target5318353829%_ '()))))
                   (_%__match9588695887%_
                    (lambda (_%$%e5313153930%_
                             _%$%hd5313253934%_
                             _%$%tl5313353937%_
                             _%$%e5313453940%_
                             _%$%hd5313553944%_
                             _%$%tl5313653947%_
                             _%$%e5313753950%_
                             _%$%hd5313853954%_
                             _%$%tl5313953957%_
                             _%$%e5314053960%_
                             _%$%hd5314153964%_
                             _%$%tl5314253967%_
                             _%$%e5314353970%_
                             _%$%hd5314453974%_
                             _%$%tl5314553977%_
                             _%$%e5314653980%_
                             _%$%hd5314753984%_
                             _%$%tl5314853987%_
                             _%$%e5314953990%_
                             _%$%hd5315053994%_
                             _%$%tl5315153997%_
                             _%$%e5315254000%_
                             _%$%hd5315354004%_
                             _%$%tl5315454007%_
                             _%__splice9575695757%_
                             _%$%target5315554010%_
                             _%$%tl5315754013%_)
                      (letrec ((_%$%loop5315854016%_
                                (lambda (_%$%hd5315654020%_
                                         _%$%body5316254023%_)
                                  (if (gx#stx-pair? _%$%hd5315654020%_)
                                      (let ((_%$%e5315954025%_
                                             (gx#syntax-e _%$%hd5315654020%_)))
                                        (let ((_%$%lp-tl5316154032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5315954025%_)))
                                              (_%$%lp-hd5316054029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5315954025%_))))
                                          (_%$%loop5315854016%_
                                           _%$%lp-tl5316154032%_
                                           (cons _%$%lp-hd5316054029%_
                                                 _%$%body5316254023%_))))
                                      (let ((_%$%body5316354035%_
                                             (reverse _%$%body5316254023%_)))
                                        (let ((_%$%g5312554038%_
                                               _%$%body5316354035%_)
                                              (_%$%g5312654040%_
                                               _%$%hd5315354004%_)
                                              (_%$%g5312754041%_
                                               _%$%hd5315053994%_)
                                              (_%$%g5312854042%_
                                               _%$%hd5314753984%_)
                                              (_%$%g5312954043%_
                                               _%$%hd5314153964%_)
                                              (_%$%g5313054044%_
                                               _%$%hd5313853954%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5313054044%_)
                                                   (gx#identifier?
                                                    _%$%g5312654040%_)
                                                   (gx#identifier?
                                                    _%$%g5312754041%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5312754041%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5312754041%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5312754041%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5312754041%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9575495755%_
                                               _%$%g5312554038%_
                                               _%$%g5312654040%_
                                               _%$%g5312754041%_
                                               _%$%g5312854042%_
                                               _%$%g5312954043%_
                                               _%$%g5313054044%_)
                                              (_%__match9595095951%_
                                               _%$%e5313153930%_
                                               _%$%hd5313253934%_
                                               _%$%tl5313353937%_
                                               _%$%e5313453940%_
                                               _%$%hd5313553944%_
                                               _%$%tl5313653947%_
                                               _%$%e5313753950%_
                                               _%$%hd5313853954%_
                                               _%$%tl5313953957%_
                                               _%$%e5314053960%_
                                               _%$%hd5314153964%_
                                               _%$%tl5314253967%_))))))))
                        (_%$%loop5315854016%_ _%$%target5315554010%_ '()))))
                   (_%__match9585495855%_
                    (lambda (_%$%e5313153930%_
                             _%$%hd5313253934%_
                             _%$%tl5313353937%_
                             _%$%e5313453940%_
                             _%$%hd5313553944%_
                             _%$%tl5313653947%_
                             _%$%e5313753950%_
                             _%$%hd5313853954%_
                             _%$%tl5313953957%_
                             _%$%e5314053960%_
                             _%$%hd5314153964%_
                             _%$%tl5314253967%_
                             _%$%e5314353970%_
                             _%$%hd5314453974%_
                             _%$%tl5314553977%_)
                      (if (gx#identifier? _%$%hd5314453974%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g102422_|
                               _%$%hd5314453974%_)
                              (if (gx#stx-pair? _%$%tl5314553977%_)
                                  (let ((_%$%e5314653980%_
                                         (gx#syntax-e _%$%tl5314553977%_)))
                                    (let ((_%$%tl5314853987%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5314653980%_)))
                                          (_%$%hd5314753984%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5314653980%_))))
                                      (if (gx#stx-pair? _%$%tl5314853987%_)
                                          (let ((_%$%e5314953990%_
                                                 (gx#syntax-e
                                                  _%$%tl5314853987%_)))
                                            (let ((_%$%tl5315153997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5314953990%_)))
                                                  (_%$%hd5315053994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5314953990%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5315153997%_)
                                                  (let ((_%$%e5315254000%_
                                                         (gx#syntax-e
                                                          _%$%tl5315153997%_)))
                                                    (let ((_%$%tl5315454007%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5315254000%_)))
                                                          (_%$%hd5315354004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5315254000%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5315454007%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5313653947%_)
                                                              (let ((_%__splice9575695757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5313653947%_
                              '0)))
                        (let ((_%$%tl5315754013%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575695757%_ '1)))
                              (_%$%target5315554010%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9575695757%_ '0))))
                          (if (gx#stx-null? _%$%tl5315754013%_)
                              (_%__match9588695887%_
                               _%$%e5313153930%_
                               _%$%hd5313253934%_
                               _%$%tl5313353937%_
                               _%$%e5313453940%_
                               _%$%hd5313553944%_
                               _%$%tl5313653947%_
                               _%$%e5313753950%_
                               _%$%hd5313853954%_
                               _%$%tl5313953957%_
                               _%$%e5314053960%_
                               _%$%hd5314153964%_
                               _%$%tl5314253967%_
                               _%$%e5314353970%_
                               _%$%hd5314453974%_
                               _%$%tl5314553977%_
                               _%$%e5314653980%_
                               _%$%hd5314753984%_
                               _%$%tl5314853987%_
                               _%$%e5314953990%_
                               _%$%hd5315053994%_
                               _%$%tl5315153997%_
                               _%$%e5315254000%_
                               _%$%hd5315354004%_
                               _%$%tl5315454007%_
                               _%__splice9575695757%_
                               _%$%target5315554010%_
                               _%$%tl5315754013%_)
                              (if (gx#stx-pair? _%$%hd5313853954%_)
                                  (let ((_%$%e5326753419%_
                                         (gx#syntax-e _%$%hd5313853954%_)))
                                    (let ((_%$%tl5326953426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5326753419%_)))
                                          (_%$%hd5326853423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5326753419%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))))
                      (if (gx#stx-pair? _%$%hd5313853954%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5313853954%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (if (gx#stx-pair? _%$%hd5313853954%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5313853954%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (if (gx#stx-pair/null? _%$%tl5313653947%_)
                              (let ((_%__splice9577295773%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313653947%_
                                      '0)))
                                (let ((_%$%tl5327253432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '1)))
                                      (_%$%target5327053429%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327253432%_)
                                      (_%__match9605896059%_
                                       _%$%e5313153930%_
                                       _%$%hd5313253934%_
                                       _%$%tl5313353937%_
                                       _%$%e5313453940%_
                                       _%$%hd5313553944%_
                                       _%$%tl5313653947%_
                                       _%$%e5313753950%_
                                       _%$%hd5313853954%_
                                       _%$%tl5313953957%_
                                       _%$%e5326753419%_
                                       _%$%hd5326853423%_
                                       _%$%tl5326953426%_
                                       _%__splice9577295773%_
                                       _%$%target5327053429%_
                                       _%$%tl5327253432%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5314153964%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102421_|
                                                           _%$%hd5314153964%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5315153997%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5313653947%_)
                          (let ((_%__splice9576895769%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313653947%_
                                  '0)))
                            (let ((_%$%tl5324753572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576895769%_ '1)))
                                  (_%$%target5324553569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576895769%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324753572%_)
                                  (_%__match9602696027%_
                                   _%$%e5313153930%_
                                   _%$%hd5313253934%_
                                   _%$%tl5313353937%_
                                   _%$%e5313453940%_
                                   _%$%hd5313553944%_
                                   _%$%tl5313653947%_
                                   _%$%e5313753950%_
                                   _%$%hd5313853954%_
                                   _%$%tl5313953957%_
                                   _%$%e5314053960%_
                                   _%$%hd5314153964%_
                                   _%$%tl5314253967%_
                                   _%$%e5314353970%_
                                   _%$%hd5314453974%_
                                   _%$%tl5314553977%_
                                   _%$%e5314653980%_
                                   _%$%hd5314753984%_
                                   _%$%tl5314853987%_
                                   _%$%e5314953990%_
                                   _%$%hd5315053994%_
                                   _%$%tl5315153997%_
                                   _%__splice9576895769%_
                                   _%$%target5324553569%_
                                   _%$%tl5324753572%_)
                                  (if (gx#stx-pair? _%$%hd5313853954%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5313853954%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))
                          (if (gx#stx-pair? _%$%hd5313853954%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5313853954%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                      (if (gx#stx-pair? _%$%hd5313853954%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5313853954%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (if (gx#stx-pair/null? _%$%tl5313653947%_)
                                  (let ((_%__splice9577295773%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313653947%_
                                          '0)))
                                    (let ((_%$%tl5327253432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '1)))
                                          (_%$%target5327053429%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327253432%_)
                                          (_%__match9605896059%_
                                           _%$%e5313153930%_
                                           _%$%hd5313253934%_
                                           _%$%tl5313353937%_
                                           _%$%e5313453940%_
                                           _%$%hd5313553944%_
                                           _%$%tl5313653947%_
                                           _%$%e5313753950%_
                                           _%$%hd5313853954%_
                                           _%$%tl5313953957%_
                                           _%$%e5326753419%_
                                           _%$%hd5326853423%_
                                           _%$%tl5326953426%_
                                           _%__splice9577295773%_
                                           _%$%target5327053429%_
                                           _%$%tl5327253432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (if (gx#stx-pair? _%$%hd5313853954%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5313853954%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (if (gx#stx-pair/null? _%$%tl5313653947%_)
                              (let ((_%__splice9577295773%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313653947%_
                                      '0)))
                                (let ((_%$%tl5327253432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '1)))
                                      (_%$%target5327053429%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327253432%_)
                                      (_%__match9605896059%_
                                       _%$%e5313153930%_
                                       _%$%hd5313253934%_
                                       _%$%tl5313353937%_
                                       _%$%e5313453940%_
                                       _%$%hd5313553944%_
                                       _%$%tl5313653947%_
                                       _%$%e5313753950%_
                                       _%$%hd5313853954%_
                                       _%$%tl5313953957%_
                                       _%$%e5326753419%_
                                       _%$%hd5326853423%_
                                       _%$%tl5326953426%_
                                       _%__splice9577295773%_
                                       _%$%target5327053429%_
                                       _%$%tl5327253432%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
              (if (gx#stx-pair? _%$%hd5313853954%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5313853954%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5313653947%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313653947%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5313153930%_
                                   _%$%hd5313253934%_
                                   _%$%tl5313353937%_
                                   _%$%e5313453940%_
                                   _%$%hd5313553944%_
                                   _%$%tl5313653947%_
                                   _%$%e5313753950%_
                                   _%$%hd5313853954%_
                                   _%$%tl5313953957%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5313853954%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5313853954%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313653947%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313653947%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5313153930%_
                       _%$%hd5313253934%_
                       _%$%tl5313353937%_
                       _%$%e5313453940%_
                       _%$%hd5313553944%_
                       _%$%tl5313653947%_
                       _%$%e5313753950%_
                       _%$%hd5313853954%_
                       _%$%tl5313953957%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))))
                                  (if (gx#stx-null? _%$%tl5314553977%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5313653947%_)
                                          (let ((_%__splice9576095761%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5313653947%_
                                                  '0)))
                                            (let ((_%$%tl5318553832%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576095761%_
                                                      '1)))
                                                  (_%$%target5318353829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9576095761%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5318553832%_)
                                                  (_%__match9592695927%_
                                                   _%$%e5313153930%_
                                                   _%$%hd5313253934%_
                                                   _%$%tl5313353937%_
                                                   _%$%e5313453940%_
                                                   _%$%hd5313553944%_
                                                   _%$%tl5313653947%_
                                                   _%$%e5313753950%_
                                                   _%$%hd5313853954%_
                                                   _%$%tl5313953957%_
                                                   _%$%e5314053960%_
                                                   _%$%hd5314153964%_
                                                   _%$%tl5314253967%_
                                                   _%$%e5314353970%_
                                                   _%$%hd5314453974%_
                                                   _%$%tl5314553977%_
                                                   _%__splice9576095761%_
                                                   _%$%target5318353829%_
                                                   _%$%tl5318553832%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5313853954%_)
                                                      (let ((_%$%e5326753419%_
                                                             (gx#syntax-e
                                                              _%$%hd5313853954%_)))
                                                        (let ((_%$%tl5326953426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5326753419%_)))
                      (_%$%hd5326853423%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5326753419%_))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))
              (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5313853954%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5313853954%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                      (if (gx#stx-pair? _%$%hd5313853954%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5313853954%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313653947%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313653947%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5313153930%_
                                                           _%$%hd5313253934%_
                                                           _%$%tl5313353937%_
                                                           _%$%e5313453940%_
                                                           _%$%hd5313553944%_
                                                           _%$%tl5313653947%_
                                                           _%$%e5313753950%_
                                                           _%$%hd5313853954%_
                                                           _%$%tl5313953957%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                              (if (gx#stx-null? _%$%tl5314553977%_)
                                  (if (gx#stx-pair/null? _%$%tl5313653947%_)
                                      (let ((_%__splice9576095761%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5313653947%_
                                              '0)))
                                        (let ((_%$%tl5318553832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9576095761%_
                                                  '1)))
                                              (_%$%target5318353829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9576095761%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5318553832%_)
                                              (_%__match9592695927%_
                                               _%$%e5313153930%_
                                               _%$%hd5313253934%_
                                               _%$%tl5313353937%_
                                               _%$%e5313453940%_
                                               _%$%hd5313553944%_
                                               _%$%tl5313653947%_
                                               _%$%e5313753950%_
                                               _%$%hd5313853954%_
                                               _%$%tl5313953957%_
                                               _%$%e5314053960%_
                                               _%$%hd5314153964%_
                                               _%$%tl5314253967%_
                                               _%$%e5314353970%_
                                               _%$%hd5314453974%_
                                               _%$%tl5314553977%_
                                               _%__splice9576095761%_
                                               _%$%target5318353829%_
                                               _%$%tl5318553832%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5313853954%_)
                                                  (let ((_%$%e5326753419%_
                                                         (gx#syntax-e
                                                          _%$%hd5313853954%_)))
                                                    (let ((_%$%tl5326953426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5326753419%_)))
                                                          (_%$%hd5326853423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5326753419%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309153300%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))))
                                      (if (gx#stx-pair? _%$%hd5313853954%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5313853954%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                  (if (gx#identifier? _%$%hd5314153964%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102421_|
                                           _%$%hd5314153964%_)
                                          (if (gx#stx-pair? _%$%tl5314553977%_)
                                              (let ((_%$%e5323953549%_
                                                     (gx#syntax-e
                                                      _%$%tl5314553977%_)))
                                                (let ((_%$%tl5324153556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5323953549%_)))
                                                      (_%$%hd5324053553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5323953549%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5324153556%_)
                                                      (let ((_%$%e5324253559%_
                                                             (gx#syntax-e
                                                              _%$%tl5324153556%_)))
                                                        (let ((_%$%tl5324453566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5324253559%_)))
                      (_%$%hd5324353563%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5324253559%_))))
                  (if (gx#stx-null? _%$%tl5324453566%_)
                      (if (gx#stx-pair/null? _%$%tl5313653947%_)
                          (let ((_%__splice9576895769%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313653947%_
                                  '0)))
                            (let ((_%$%tl5324753572%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576895769%_ '1)))
                                  (_%$%target5324553569%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576895769%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5324753572%_)
                                  (_%__match9602696027%_
                                   _%$%e5313153930%_
                                   _%$%hd5313253934%_
                                   _%$%tl5313353937%_
                                   _%$%e5313453940%_
                                   _%$%hd5313553944%_
                                   _%$%tl5313653947%_
                                   _%$%e5313753950%_
                                   _%$%hd5313853954%_
                                   _%$%tl5313953957%_
                                   _%$%e5314053960%_
                                   _%$%hd5314153964%_
                                   _%$%tl5314253967%_
                                   _%$%e5314353970%_
                                   _%$%hd5314453974%_
                                   _%$%tl5314553977%_
                                   _%$%e5323953549%_
                                   _%$%hd5324053553%_
                                   _%$%tl5324153556%_
                                   _%$%e5324253559%_
                                   _%$%hd5324353563%_
                                   _%$%tl5324453566%_
                                   _%__splice9576895769%_
                                   _%$%target5324553569%_
                                   _%$%tl5324753572%_)
                                  (if (gx#stx-pair? _%$%hd5313853954%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5313853954%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))
                          (if (gx#stx-pair? _%$%hd5313853954%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5313853954%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                      (if (gx#stx-pair? _%$%hd5313853954%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5313853954%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (if (gx#stx-pair/null? _%$%tl5313653947%_)
                                  (let ((_%__splice9577295773%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313653947%_
                                          '0)))
                                    (let ((_%$%tl5327253432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '1)))
                                          (_%$%target5327053429%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327253432%_)
                                          (_%__match9605896059%_
                                           _%$%e5313153930%_
                                           _%$%hd5313253934%_
                                           _%$%tl5313353937%_
                                           _%$%e5313453940%_
                                           _%$%hd5313553944%_
                                           _%$%tl5313653947%_
                                           _%$%e5313753950%_
                                           _%$%hd5313853954%_
                                           _%$%tl5313953957%_
                                           _%$%e5326753419%_
                                           _%$%hd5326853423%_
                                           _%$%tl5326953426%_
                                           _%__splice9577295773%_
                                           _%$%target5327053429%_
                                           _%$%tl5327253432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))))
              (if (gx#stx-pair? _%$%hd5313853954%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5313853954%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5313653947%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5313653947%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5313153930%_
                                   _%$%hd5313253934%_
                                   _%$%tl5313353937%_
                                   _%$%e5313453940%_
                                   _%$%hd5313553944%_
                                   _%$%tl5313653947%_
                                   _%$%e5313753950%_
                                   _%$%hd5313853954%_
                                   _%$%tl5313953957%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5313853954%_)
                                                  (let ((_%$%e5326753419%_
                                                         (gx#syntax-e
                                                          _%$%hd5313853954%_)))
                                                    (let ((_%$%tl5326953426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5326753419%_)))
                                                          (_%$%hd5326853423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5326753419%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5313653947%_)
                                                          (let ((_%__splice9577295773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5313653947%_
                          '0)))
                    (let ((_%$%tl5327253432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '1)))
                          (_%$%target5327053429%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '0))))
                      (if (gx#stx-null? _%$%tl5327253432%_)
                          (_%__match9605896059%_
                           _%$%e5313153930%_
                           _%$%hd5313253934%_
                           _%$%tl5313353937%_
                           _%$%e5313453940%_
                           _%$%hd5313553944%_
                           _%$%tl5313653947%_
                           _%$%e5313753950%_
                           _%$%hd5313853954%_
                           _%$%tl5313953957%_
                           _%$%e5326753419%_
                           _%$%hd5326853423%_
                           _%$%tl5326953426%_
                           _%__splice9577295773%_
                           _%$%target5327053429%_
                           _%$%tl5327253432%_)
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))
                                          (if (gx#stx-pair? _%$%hd5313853954%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5313853954%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313653947%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313653947%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5313153930%_
                       _%$%hd5313253934%_
                       _%$%tl5313353937%_
                       _%$%e5313453940%_
                       _%$%hd5313553944%_
                       _%$%tl5313653947%_
                       _%$%e5313753950%_
                       _%$%hd5313853954%_
                       _%$%tl5313953957%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                      (if (gx#stx-pair? _%$%hd5313853954%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5313853954%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313653947%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313653947%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5313153930%_
                                                           _%$%hd5313253934%_
                                                           _%$%tl5313353937%_
                                                           _%$%e5313453940%_
                                                           _%$%hd5313553944%_
                                                           _%$%tl5313653947%_
                                                           _%$%e5313753950%_
                                                           _%$%hd5313853954%_
                                                           _%$%tl5313953957%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))))
                          (if (gx#stx-null? _%$%tl5314553977%_)
                              (if (gx#stx-pair/null? _%$%tl5313653947%_)
                                  (let ((_%__splice9576095761%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5313653947%_
                                          '0)))
                                    (let ((_%$%tl5318553832%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576095761%_
                                              '1)))
                                          (_%$%target5318353829%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9576095761%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5318553832%_)
                                          (_%__match9592695927%_
                                           _%$%e5313153930%_
                                           _%$%hd5313253934%_
                                           _%$%tl5313353937%_
                                           _%$%e5313453940%_
                                           _%$%hd5313553944%_
                                           _%$%tl5313653947%_
                                           _%$%e5313753950%_
                                           _%$%hd5313853954%_
                                           _%$%tl5313953957%_
                                           _%$%e5314053960%_
                                           _%$%hd5314153964%_
                                           _%$%tl5314253967%_
                                           _%$%e5314353970%_
                                           _%$%hd5314453974%_
                                           _%$%tl5314553977%_
                                           _%__splice9576095761%_
                                           _%$%target5318353829%_
                                           _%$%tl5318553832%_)
                                          (if (gx#stx-pair? _%$%hd5313853954%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5313853954%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))))
                                  (if (gx#stx-pair? _%$%hd5313853954%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5313853954%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                              (if (gx#identifier? _%$%hd5314153964%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102421_|
                                       _%$%hd5314153964%_)
                                      (if (gx#stx-pair? _%$%tl5314553977%_)
                                          (let ((_%$%e5323953549%_
                                                 (gx#syntax-e
                                                  _%$%tl5314553977%_)))
                                            (let ((_%$%tl5324153556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5323953549%_)))
                                                  (_%$%hd5324053553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5323953549%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5324153556%_)
                                                  (let ((_%$%e5324253559%_
                                                         (gx#syntax-e
                                                          _%$%tl5324153556%_)))
                                                    (let ((_%$%tl5324453566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5324253559%_)))
                                                          (_%$%hd5324353563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5324253559%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5324453566%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5313653947%_)
                                                              (let ((_%__splice9576895769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5313653947%_
                              '0)))
                        (let ((_%$%tl5324753572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576895769%_ '1)))
                              (_%$%target5324553569%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576895769%_ '0))))
                          (if (gx#stx-null? _%$%tl5324753572%_)
                              (_%__match9602696027%_
                               _%$%e5313153930%_
                               _%$%hd5313253934%_
                               _%$%tl5313353937%_
                               _%$%e5313453940%_
                               _%$%hd5313553944%_
                               _%$%tl5313653947%_
                               _%$%e5313753950%_
                               _%$%hd5313853954%_
                               _%$%tl5313953957%_
                               _%$%e5314053960%_
                               _%$%hd5314153964%_
                               _%$%tl5314253967%_
                               _%$%e5314353970%_
                               _%$%hd5314453974%_
                               _%$%tl5314553977%_
                               _%$%e5323953549%_
                               _%$%hd5324053553%_
                               _%$%tl5324153556%_
                               _%$%e5324253559%_
                               _%$%hd5324353563%_
                               _%$%tl5324453566%_
                               _%__splice9576895769%_
                               _%$%target5324553569%_
                               _%$%tl5324753572%_)
                              (if (gx#stx-pair? _%$%hd5313853954%_)
                                  (let ((_%$%e5326753419%_
                                         (gx#syntax-e _%$%hd5313853954%_)))
                                    (let ((_%$%tl5326953426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5326753419%_)))
                                          (_%$%hd5326853423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5326753419%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))))
                      (if (gx#stx-pair? _%$%hd5313853954%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5313853954%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (if (gx#stx-pair? _%$%hd5313853954%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5313853954%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (if (gx#stx-pair/null? _%$%tl5313653947%_)
                              (let ((_%__splice9577295773%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5313653947%_
                                      '0)))
                                (let ((_%$%tl5327253432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '1)))
                                      (_%$%target5327053429%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327253432%_)
                                      (_%__match9605896059%_
                                       _%$%e5313153930%_
                                       _%$%hd5313253934%_
                                       _%$%tl5313353937%_
                                       _%$%e5313453940%_
                                       _%$%hd5313553944%_
                                       _%$%tl5313653947%_
                                       _%$%e5313753950%_
                                       _%$%hd5313853954%_
                                       _%$%tl5313953957%_
                                       _%$%e5326753419%_
                                       _%$%hd5326853423%_
                                       _%$%tl5326953426%_
                                       _%__splice9577295773%_
                                       _%$%target5327053429%_
                                       _%$%tl5327253432%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5313853954%_)
                                                      (let ((_%$%e5326753419%_
                                                             (gx#syntax-e
                                                              _%$%hd5313853954%_)))
                                                        (let ((_%$%tl5326953426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5326753419%_)))
                      (_%$%hd5326853423%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5326753419%_))))
                  (if (gx#stx-pair/null? _%$%tl5313653947%_)
                      (let ((_%__splice9577295773%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5313653947%_
                              '0)))
                        (let ((_%$%tl5327253432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '1)))
                              (_%$%target5327053429%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '0))))
                          (if (gx#stx-null? _%$%tl5327253432%_)
                              (_%__match9605896059%_
                               _%$%e5313153930%_
                               _%$%hd5313253934%_
                               _%$%tl5313353937%_
                               _%$%e5313453940%_
                               _%$%hd5313553944%_
                               _%$%tl5313653947%_
                               _%$%e5313753950%_
                               _%$%hd5313853954%_
                               _%$%tl5313953957%_
                               _%$%e5326753419%_
                               _%$%hd5326853423%_
                               _%$%tl5326953426%_
                               _%__splice9577295773%_
                               _%$%target5327053429%_
                               _%$%tl5327253432%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5313853954%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5313853954%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5313653947%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5313653947%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5313153930%_
                       _%$%hd5313253934%_
                       _%$%tl5313353937%_
                       _%$%e5313453940%_
                       _%$%hd5313553944%_
                       _%$%tl5313653947%_
                       _%$%e5313753950%_
                       _%$%hd5313853954%_
                       _%$%tl5313953957%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                      (if (gx#stx-pair? _%$%hd5313853954%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5313853954%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5313653947%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5313653947%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5313153930%_
                                                           _%$%hd5313253934%_
                                                           _%$%tl5313353937%_
                                                           _%$%e5313453940%_
                                                           _%$%hd5313553944%_
                                                           _%$%tl5313653947%_
                                                           _%$%e5313753950%_
                                                           _%$%hd5313853954%_
                                                           _%$%tl5313953957%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                  (if (gx#stx-pair? _%$%hd5313853954%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5313853954%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5313653947%_)
                                              (let ((_%__splice9577295773%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5313653947%_
                                                      '0)))
                                                (let ((_%$%tl5327253432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '1)))
                                                      (_%$%target5327053429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327253432%_)
                                                      (_%__match9605896059%_
                                                       _%$%e5313153930%_
                                                       _%$%hd5313253934%_
                                                       _%$%tl5313353937%_
                                                       _%$%e5313453940%_
                                                       _%$%hd5313553944%_
                                                       _%$%tl5313653947%_
                                                       _%$%e5313753950%_
                                                       _%$%hd5313853954%_
                                                       _%$%tl5313953957%_
                                                       _%$%e5326753419%_
                                                       _%$%hd5326853423%_
                                                       _%$%tl5326953426%_
                                                       _%__splice9577295773%_
                                                       _%$%target5327053429%_
                                                       _%$%tl5327253432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309153300%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))))
                   (_%__match9582495825%_
                    (lambda (_%$%e5309854104%_
                             _%$%hd5309954108%_
                             _%$%tl5310054111%_
                             _%$%e5310154114%_
                             _%$%hd5310254118%_
                             _%$%tl5310354121%_
                             _%$%e5310454124%_
                             _%$%hd5310554128%_
                             _%$%tl5310654131%_
                             _%$%e5310754134%_
                             _%$%hd5310854138%_
                             _%$%tl5310954141%_
                             _%$%e5311054144%_
                             _%$%hd5311154148%_
                             _%$%tl5311254151%_
                             _%$%e5311354154%_
                             _%$%hd5311454158%_
                             _%$%tl5311554161%_
                             _%__splice9575295753%_
                             _%$%target5311654164%_
                             _%$%tl5311854167%_)
                      (letrec ((_%$%loop5311954170%_
                                (lambda (_%$%hd5311754174%_
                                         _%$%body5312354177%_)
                                  (if (gx#stx-pair? _%$%hd5311754174%_)
                                      (let ((_%$%e5312054179%_
                                             (gx#syntax-e _%$%hd5311754174%_)))
                                        (let ((_%$%lp-tl5312254186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5312054179%_)))
                                              (_%$%lp-hd5312154183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5312054179%_))))
                                          (_%$%loop5311954170%_
                                           _%$%lp-tl5312254186%_
                                           (cons _%$%lp-hd5312154183%_
                                                 _%$%body5312354177%_))))
                                      (let ((_%$%body5312454189%_
                                             (reverse _%$%body5312354177%_)))
                                        (let ((_%$%g5309354192%_
                                               _%$%body5312454189%_)
                                              (_%$%g5309454194%_
                                               _%$%hd5311454158%_)
                                              (_%$%g5309554195%_
                                               _%$%hd5311154148%_)
                                              (_%$%g5309654196%_
                                               _%$%hd5310854138%_)
                                              (_%$%g5309754197%_
                                               _%$%hd5310554128%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5309754197%_)
                                                   (gx#identifier?
                                                    _%$%g5309554195%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5309554195%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5309554195%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5309554195%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5309554195%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5309554195%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9575095751%_
                                               _%$%g5309354192%_
                                               _%$%g5309454194%_
                                               _%$%g5309554195%_
                                               _%$%g5309654196%_
                                               _%$%g5309754197%_)
                                              (_%__match9585495855%_
                                               _%$%e5309854104%_
                                               _%$%hd5309954108%_
                                               _%$%tl5310054111%_
                                               _%$%e5310154114%_
                                               _%$%hd5310254118%_
                                               _%$%tl5310354121%_
                                               _%$%e5310454124%_
                                               _%$%hd5310554128%_
                                               _%$%tl5310654131%_
                                               _%$%e5310754134%_
                                               _%$%hd5310854138%_
                                               _%$%tl5310954141%_
                                               _%$%e5311054144%_
                                               _%$%hd5311154148%_
                                               _%$%tl5311254151%_))))))))
                        (_%$%loop5311954170%_ _%$%target5311654164%_ '())))))
              (if (gx#stx-pair? _%__stx9574795748%_)
                  (let ((_%$%e5309854104%_ (gx#syntax-e _%__stx9574795748%_)))
                    (let ((_%$%tl5310054111%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5309854104%_)))
                          (_%$%hd5309954108%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5309854104%_))))
                      (if (gx#stx-pair? _%$%tl5310054111%_)
                          (let ((_%$%e5310154114%_
                                 (gx#syntax-e _%$%tl5310054111%_)))
                            (let ((_%$%tl5310354121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5310154114%_)))
                                  (_%$%hd5310254118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5310154114%_))))
                              (if (gx#stx-pair? _%$%hd5310254118%_)
                                  (let ((_%$%e5310454124%_
                                         (gx#syntax-e _%$%hd5310254118%_)))
                                    (let ((_%$%tl5310654131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5310454124%_)))
                                          (_%$%hd5310554128%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5310454124%_))))
                                      (if (gx#stx-pair? _%$%tl5310654131%_)
                                          (let ((_%$%e5310754134%_
                                                 (gx#syntax-e
                                                  _%$%tl5310654131%_)))
                                            (let ((_%$%tl5310954141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5310754134%_)))
                                                  (_%$%hd5310854138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5310754134%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5310954141%_)
                                                  (let ((_%$%e5311054144%_
                                                         (gx#syntax-e
                                                          _%$%tl5310954141%_)))
                                                    (let ((_%$%tl5311254151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5311054144%_)))
                                                          (_%$%hd5311154148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5311054144%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5311254151%_)
                                                          (let ((_%$%e5311354154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5311254151%_)))
                    (let ((_%$%tl5311554161%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5311354154%_)))
                          (_%$%hd5311454158%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5311354154%_))))
                      (if (gx#stx-null? _%$%tl5311554161%_)
                          (if (gx#stx-pair/null? _%$%tl5310354121%_)
                              (let ((_%__splice9575295753%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5310354121%_
                                      '0)))
                                (let ((_%$%tl5311854167%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575295753%_
                                          '1)))
                                      (_%$%target5311654164%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9575295753%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5311854167%_)
                                      (_%__match9582495825%_
                                       _%$%e5309854104%_
                                       _%$%hd5309954108%_
                                       _%$%tl5310054111%_
                                       _%$%e5310154114%_
                                       _%$%hd5310254118%_
                                       _%$%tl5310354121%_
                                       _%$%e5310454124%_
                                       _%$%hd5310554128%_
                                       _%$%tl5310654131%_
                                       _%$%e5310754134%_
                                       _%$%hd5310854138%_
                                       _%$%tl5310954141%_
                                       _%$%e5311054144%_
                                       _%$%hd5311154148%_
                                       _%$%tl5311254151%_
                                       _%$%e5311354154%_
                                       _%$%hd5311454158%_
                                       _%$%tl5311554161%_
                                       _%__splice9575295753%_
                                       _%$%target5311654164%_
                                       _%$%tl5311854167%_)
                                      (if (gx#stx-pair? _%$%hd5310554128%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5310554128%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))))
                              (if (gx#stx-pair? _%$%hd5310554128%_)
                                  (let ((_%$%e5326753419%_
                                         (gx#syntax-e _%$%hd5310554128%_)))
                                    (let ((_%$%tl5326953426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5326753419%_)))
                                          (_%$%hd5326853423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5326753419%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                          (if (gx#identifier? _%$%hd5311154148%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g102422_|
                                   _%$%hd5311154148%_)
                                  (if (gx#stx-pair? _%$%tl5311554161%_)
                                      (let ((_%$%e5314953990%_
                                             (gx#syntax-e _%$%tl5311554161%_)))
                                        (let ((_%$%tl5315153997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5314953990%_)))
                                              (_%$%hd5315053994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5314953990%_))))
                                          (if (gx#stx-pair? _%$%tl5315153997%_)
                                              (let ((_%$%e5315254000%_
                                                     (gx#syntax-e
                                                      _%$%tl5315153997%_)))
                                                (let ((_%$%tl5315454007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5315254000%_)))
                                                      (_%$%hd5315354004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5315254000%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5315454007%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310354121%_)
                                                          (let ((_%__splice9575695757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310354121%_
                          '0)))
                    (let ((_%$%tl5315754013%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575695757%_ '1)))
                          (_%$%target5315554010%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9575695757%_ '0))))
                      (if (gx#stx-null? _%$%tl5315754013%_)
                          (_%__match9588695887%_
                           _%$%e5309854104%_
                           _%$%hd5309954108%_
                           _%$%tl5310054111%_
                           _%$%e5310154114%_
                           _%$%hd5310254118%_
                           _%$%tl5310354121%_
                           _%$%e5310454124%_
                           _%$%hd5310554128%_
                           _%$%tl5310654131%_
                           _%$%e5310754134%_
                           _%$%hd5310854138%_
                           _%$%tl5310954141%_
                           _%$%e5311054144%_
                           _%$%hd5311154148%_
                           _%$%tl5311254151%_
                           _%$%e5311354154%_
                           _%$%hd5311454158%_
                           _%$%tl5311554161%_
                           _%$%e5314953990%_
                           _%$%hd5315053994%_
                           _%$%tl5315153997%_
                           _%$%e5315254000%_
                           _%$%hd5315354004%_
                           _%$%tl5315454007%_
                           _%__splice9575695757%_
                           _%$%target5315554010%_
                           _%$%tl5315754013%_)
                          (if (gx#stx-pair? _%$%hd5310554128%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5310554128%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))))
                  (if (gx#stx-pair? _%$%hd5310554128%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5310554128%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
              (if (gx#stx-pair? _%$%hd5310554128%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5310554128%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5310354121%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310354121%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5309854104%_
                                   _%$%hd5309954108%_
                                   _%$%tl5310054111%_
                                   _%$%e5310154114%_
                                   _%$%hd5310254118%_
                                   _%$%tl5310354121%_
                                   _%$%e5310454124%_
                                   _%$%hd5310554128%_
                                   _%$%tl5310654131%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5310854138%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g102421_|
                                                       _%$%hd5310854138%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5315153997%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5310354121%_)
                                                              (let ((_%__splice9576895769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5310354121%_
                              '0)))
                        (let ((_%$%tl5324753572%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576895769%_ '1)))
                              (_%$%target5324553569%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9576895769%_ '0))))
                          (if (gx#stx-null? _%$%tl5324753572%_)
                              (_%__match9602696027%_
                               _%$%e5309854104%_
                               _%$%hd5309954108%_
                               _%$%tl5310054111%_
                               _%$%e5310154114%_
                               _%$%hd5310254118%_
                               _%$%tl5310354121%_
                               _%$%e5310454124%_
                               _%$%hd5310554128%_
                               _%$%tl5310654131%_
                               _%$%e5310754134%_
                               _%$%hd5310854138%_
                               _%$%tl5310954141%_
                               _%$%e5311054144%_
                               _%$%hd5311154148%_
                               _%$%tl5311254151%_
                               _%$%e5311354154%_
                               _%$%hd5311454158%_
                               _%$%tl5311554161%_
                               _%$%e5314953990%_
                               _%$%hd5315053994%_
                               _%$%tl5315153997%_
                               _%__splice9576895769%_
                               _%$%target5324553569%_
                               _%$%tl5324753572%_)
                              (if (gx#stx-pair? _%$%hd5310554128%_)
                                  (let ((_%$%e5326753419%_
                                         (gx#syntax-e _%$%hd5310554128%_)))
                                    (let ((_%$%tl5326953426%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5326753419%_)))
                                          (_%$%hd5326853423%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5326753419%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))))
                      (if (gx#stx-pair? _%$%hd5310554128%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5310554128%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (if (gx#stx-pair? _%$%hd5310554128%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5310554128%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (if (gx#stx-pair/null? _%$%tl5310354121%_)
                              (let ((_%__splice9577295773%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5310354121%_
                                      '0)))
                                (let ((_%$%tl5327253432%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '1)))
                                      (_%$%target5327053429%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9577295773%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5327253432%_)
                                      (_%__match9605896059%_
                                       _%$%e5309854104%_
                                       _%$%hd5309954108%_
                                       _%$%tl5310054111%_
                                       _%$%e5310154114%_
                                       _%$%hd5310254118%_
                                       _%$%tl5310354121%_
                                       _%$%e5310454124%_
                                       _%$%hd5310554128%_
                                       _%$%tl5310654131%_
                                       _%$%e5326753419%_
                                       _%$%hd5326853423%_
                                       _%$%tl5326953426%_
                                       _%__splice9577295773%_
                                       _%$%target5327053429%_
                                       _%$%tl5327253432%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
              (if (gx#stx-pair? _%$%hd5310554128%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5310554128%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5310354121%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310354121%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5309854104%_
                                   _%$%hd5309954108%_
                                   _%$%tl5310054111%_
                                   _%$%e5310154114%_
                                   _%$%hd5310254118%_
                                   _%$%tl5310354121%_
                                   _%$%e5310454124%_
                                   _%$%hd5310554128%_
                                   _%$%tl5310654131%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310554128%_)
                                                      (let ((_%$%e5326753419%_
                                                             (gx#syntax-e
                                                              _%$%hd5310554128%_)))
                                                        (let ((_%$%tl5326953426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5326753419%_)))
                      (_%$%hd5326853423%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5326753419%_))))
                  (if (gx#stx-pair/null? _%$%tl5310354121%_)
                      (let ((_%__splice9577295773%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310354121%_
                              '0)))
                        (let ((_%$%tl5327253432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '1)))
                              (_%$%target5327053429%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '0))))
                          (if (gx#stx-null? _%$%tl5327253432%_)
                              (_%__match9605896059%_
                               _%$%e5309854104%_
                               _%$%hd5309954108%_
                               _%$%tl5310054111%_
                               _%$%e5310154114%_
                               _%$%hd5310254118%_
                               _%$%tl5310354121%_
                               _%$%e5310454124%_
                               _%$%hd5310554128%_
                               _%$%tl5310654131%_
                               _%$%e5326753419%_
                               _%$%hd5326853423%_
                               _%$%tl5326953426%_
                               _%__splice9577295773%_
                               _%$%target5327053429%_
                               _%$%tl5327253432%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5310554128%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5310554128%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310354121%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310354121%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5309854104%_
                                                           _%$%hd5309954108%_
                                                           _%$%tl5310054111%_
                                                           _%$%e5310154114%_
                                                           _%$%hd5310254118%_
                                                           _%$%tl5310354121%_
                                                           _%$%e5310454124%_
                                                           _%$%hd5310554128%_
                                                           _%$%tl5310654131%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                  (if (gx#identifier? _%$%hd5310854138%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102421_|
                                           _%$%hd5310854138%_)
                                          (if (gx#stx-pair? _%$%tl5311554161%_)
                                              (let ((_%$%e5324253559%_
                                                     (gx#syntax-e
                                                      _%$%tl5311554161%_)))
                                                (let ((_%$%tl5324453566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5324253559%_)))
                                                      (_%$%hd5324353563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5324253559%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5324453566%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310354121%_)
                                                          (let ((_%__splice9576895769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310354121%_
                          '0)))
                    (let ((_%$%tl5324753572%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576895769%_ '1)))
                          (_%$%target5324553569%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9576895769%_ '0))))
                      (if (gx#stx-null? _%$%tl5324753572%_)
                          (_%__match9602696027%_
                           _%$%e5309854104%_
                           _%$%hd5309954108%_
                           _%$%tl5310054111%_
                           _%$%e5310154114%_
                           _%$%hd5310254118%_
                           _%$%tl5310354121%_
                           _%$%e5310454124%_
                           _%$%hd5310554128%_
                           _%$%tl5310654131%_
                           _%$%e5310754134%_
                           _%$%hd5310854138%_
                           _%$%tl5310954141%_
                           _%$%e5311054144%_
                           _%$%hd5311154148%_
                           _%$%tl5311254151%_
                           _%$%e5311354154%_
                           _%$%hd5311454158%_
                           _%$%tl5311554161%_
                           _%$%e5324253559%_
                           _%$%hd5324353563%_
                           _%$%tl5324453566%_
                           _%__splice9576895769%_
                           _%$%target5324553569%_
                           _%$%tl5324753572%_)
                          (if (gx#stx-pair? _%$%hd5310554128%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5310554128%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))))
                  (if (gx#stx-pair? _%$%hd5310554128%_)
                      (let ((_%$%e5326753419%_
                             (gx#syntax-e _%$%hd5310554128%_)))
                        (let ((_%$%tl5326953426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5326753419%_)))
                              (_%$%hd5326853423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5326753419%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
              (if (gx#stx-pair? _%$%hd5310554128%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5310554128%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (if (gx#stx-pair/null? _%$%tl5310354121%_)
                          (let ((_%__splice9577295773%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310354121%_
                                  '0)))
                            (let ((_%$%tl5327253432%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9577295773%_ '1)))
                                  (_%$%target5327053429%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9577295773%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5327253432%_)
                                  (_%__match9605896059%_
                                   _%$%e5309854104%_
                                   _%$%hd5309954108%_
                                   _%$%tl5310054111%_
                                   _%$%e5310154114%_
                                   _%$%hd5310254118%_
                                   _%$%tl5310354121%_
                                   _%$%e5310454124%_
                                   _%$%hd5310554128%_
                                   _%$%tl5310654131%_
                                   _%$%e5326753419%_
                                   _%$%hd5326853423%_
                                   _%$%tl5326953426%_
                                   _%__splice9577295773%_
                                   _%$%target5327053429%_
                                   _%$%tl5327253432%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5310554128%_)
                                                  (let ((_%$%e5326753419%_
                                                         (gx#syntax-e
                                                          _%$%hd5310554128%_)))
                                                    (let ((_%$%tl5326953426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5326753419%_)))
                                                          (_%$%hd5326853423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5326753419%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5310354121%_)
                                                          (let ((_%__splice9577295773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5310354121%_
                          '0)))
                    (let ((_%$%tl5327253432%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '1)))
                          (_%$%target5327053429%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9577295773%_ '0))))
                      (if (gx#stx-null? _%$%tl5327253432%_)
                          (_%__match9605896059%_
                           _%$%e5309854104%_
                           _%$%hd5309954108%_
                           _%$%tl5310054111%_
                           _%$%e5310154114%_
                           _%$%hd5310254118%_
                           _%$%tl5310354121%_
                           _%$%e5310454124%_
                           _%$%hd5310554128%_
                           _%$%tl5310654131%_
                           _%$%e5326753419%_
                           _%$%hd5326853423%_
                           _%$%tl5326953426%_
                           _%__splice9577295773%_
                           _%$%target5327053429%_
                           _%$%tl5327253432%_)
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_))))
                                          (if (gx#stx-pair? _%$%hd5310554128%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5310554128%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310354121%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310354121%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5309854104%_
                       _%$%hd5309954108%_
                       _%$%tl5310054111%_
                       _%$%e5310154114%_
                       _%$%hd5310254118%_
                       _%$%tl5310354121%_
                       _%$%e5310454124%_
                       _%$%hd5310554128%_
                       _%$%tl5310654131%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                      (if (gx#stx-pair? _%$%hd5310554128%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5310554128%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310354121%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310354121%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5309854104%_
                                                           _%$%hd5309954108%_
                                                           _%$%tl5310054111%_
                                                           _%$%e5310154114%_
                                                           _%$%hd5310254118%_
                                                           _%$%tl5310354121%_
                                                           _%$%e5310454124%_
                                                           _%$%hd5310554128%_
                                                           _%$%tl5310654131%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                              (if (gx#identifier? _%$%hd5310854138%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102421_|
                                       _%$%hd5310854138%_)
                                      (if (gx#stx-pair? _%$%tl5311554161%_)
                                          (let ((_%$%e5324253559%_
                                                 (gx#syntax-e
                                                  _%$%tl5311554161%_)))
                                            (let ((_%$%tl5324453566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5324253559%_)))
                                                  (_%$%hd5324353563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5324253559%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5324453566%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310354121%_)
                                                      (let ((_%__splice9576895769%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310354121%_
                                                              '0)))
                                                        (let ((_%$%tl5324753572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9576895769%_ '1)))
                      (_%$%target5324553569%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9576895769%_ '0))))
                  (if (gx#stx-null? _%$%tl5324753572%_)
                      (_%__match9602696027%_
                       _%$%e5309854104%_
                       _%$%hd5309954108%_
                       _%$%tl5310054111%_
                       _%$%e5310154114%_
                       _%$%hd5310254118%_
                       _%$%tl5310354121%_
                       _%$%e5310454124%_
                       _%$%hd5310554128%_
                       _%$%tl5310654131%_
                       _%$%e5310754134%_
                       _%$%hd5310854138%_
                       _%$%tl5310954141%_
                       _%$%e5311054144%_
                       _%$%hd5311154148%_
                       _%$%tl5311254151%_
                       _%$%e5311354154%_
                       _%$%hd5311454158%_
                       _%$%tl5311554161%_
                       _%$%e5324253559%_
                       _%$%hd5324353563%_
                       _%$%tl5324453566%_
                       _%__splice9576895769%_
                       _%$%target5324553569%_
                       _%$%tl5324753572%_)
                      (if (gx#stx-pair? _%$%hd5310554128%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5310554128%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                          (let () (declare (not safe)) (_%$%g5309153300%_))))))
              (if (gx#stx-pair? _%$%hd5310554128%_)
                  (let ((_%$%e5326753419%_ (gx#syntax-e _%$%hd5310554128%_)))
                    (let ((_%$%tl5326953426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5326753419%_)))
                          (_%$%hd5326853423%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5326753419%_))))
                      (let () (declare (not safe)) (_%$%g5309153300%_))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310554128%_)
                                                      (let ((_%$%e5326753419%_
                                                             (gx#syntax-e
                                                              _%$%hd5310554128%_)))
                                                        (let ((_%$%tl5326953426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5326753419%_)))
                      (_%$%hd5326853423%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5326753419%_))))
                  (if (gx#stx-pair/null? _%$%tl5310354121%_)
                      (let ((_%__splice9577295773%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310354121%_
                              '0)))
                        (let ((_%$%tl5327253432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '1)))
                              (_%$%target5327053429%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '0))))
                          (if (gx#stx-null? _%$%tl5327253432%_)
                              (_%__match9605896059%_
                               _%$%e5309854104%_
                               _%$%hd5309954108%_
                               _%$%tl5310054111%_
                               _%$%e5310154114%_
                               _%$%hd5310254118%_
                               _%$%tl5310354121%_
                               _%$%e5310454124%_
                               _%$%hd5310554128%_
                               _%$%tl5310654131%_
                               _%$%e5326753419%_
                               _%$%hd5326853423%_
                               _%$%tl5326953426%_
                               _%__splice9577295773%_
                               _%$%target5327053429%_
                               _%$%tl5327253432%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5310554128%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5310554128%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310354121%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310354121%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5309854104%_
                       _%$%hd5309954108%_
                       _%$%tl5310054111%_
                       _%$%e5310154114%_
                       _%$%hd5310254118%_
                       _%$%tl5310354121%_
                       _%$%e5310454124%_
                       _%$%hd5310554128%_
                       _%$%tl5310654131%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))
                                      (if (gx#stx-pair? _%$%hd5310554128%_)
                                          (let ((_%$%e5326753419%_
                                                 (gx#syntax-e
                                                  _%$%hd5310554128%_)))
                                            (let ((_%$%tl5326953426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5326753419%_)))
                                                  (_%$%hd5326853423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5326753419%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5310354121%_)
                                                  (let ((_%__splice9577295773%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5310354121%_
                                                          '0)))
                                                    (let ((_%$%tl5327253432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '1)))
                                                          (_%$%target5327053429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9577295773%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5327253432%_)
                                                          (_%__match9605896059%_
                                                           _%$%e5309854104%_
                                                           _%$%hd5309954108%_
                                                           _%$%tl5310054111%_
                                                           _%$%e5310154114%_
                                                           _%$%hd5310254118%_
                                                           _%$%tl5310354121%_
                                                           _%$%e5310454124%_
                                                           _%$%hd5310554128%_
                                                           _%$%tl5310654131%_
                                                           _%$%e5326753419%_
                                                           _%$%hd5326853423%_
                                                           _%$%tl5326953426%_
                                                           _%__splice9577295773%_
                                                           _%$%target5327053429%_
                                                           _%$%tl5327253432%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5309153300%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                  (if (gx#stx-pair? _%$%hd5310554128%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5310554128%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5310354121%_)
                                              (let ((_%__splice9577295773%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5310354121%_
                                                      '0)))
                                                (let ((_%$%tl5327253432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '1)))
                                                      (_%$%target5327053429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9577295773%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5327253432%_)
                                                      (_%__match9605896059%_
                                                       _%$%e5309854104%_
                                                       _%$%hd5309954108%_
                                                       _%$%tl5310054111%_
                                                       _%$%e5310154114%_
                                                       _%$%hd5310254118%_
                                                       _%$%tl5310354121%_
                                                       _%$%e5310454124%_
                                                       _%$%hd5310554128%_
                                                       _%$%tl5310654131%_
                                                       _%$%e5326753419%_
                                                       _%$%hd5326853423%_
                                                       _%$%tl5326953426%_
                                                       _%__splice9577295773%_
                                                       _%$%target5327053429%_
                                                       _%$%tl5327253432%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5309153300%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))))
                  (if (gx#stx-null? _%$%tl5311254151%_)
                      (if (gx#stx-pair/null? _%$%tl5310354121%_)
                          (let ((_%__splice9576095761%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5310354121%_
                                  '0)))
                            (let ((_%$%tl5318553832%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9576095761%_ '1)))
                                  (_%$%target5318353829%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9576095761%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5318553832%_)
                                  (_%__match9592695927%_
                                   _%$%e5309854104%_
                                   _%$%hd5309954108%_
                                   _%$%tl5310054111%_
                                   _%$%e5310154114%_
                                   _%$%hd5310254118%_
                                   _%$%tl5310354121%_
                                   _%$%e5310454124%_
                                   _%$%hd5310554128%_
                                   _%$%tl5310654131%_
                                   _%$%e5310754134%_
                                   _%$%hd5310854138%_
                                   _%$%tl5310954141%_
                                   _%$%e5311054144%_
                                   _%$%hd5311154148%_
                                   _%$%tl5311254151%_
                                   _%__splice9576095761%_
                                   _%$%target5318353829%_
                                   _%$%tl5318553832%_)
                                  (if (gx#stx-pair? _%$%hd5310554128%_)
                                      (let ((_%$%e5326753419%_
                                             (gx#syntax-e _%$%hd5310554128%_)))
                                        (let ((_%$%tl5326953426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5326753419%_)))
                                              (_%$%hd5326853423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5326753419%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))
                          (if (gx#stx-pair? _%$%hd5310554128%_)
                              (let ((_%$%e5326753419%_
                                     (gx#syntax-e _%$%hd5310554128%_)))
                                (let ((_%$%tl5326953426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5326753419%_)))
                                      (_%$%hd5326853423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5326753419%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_))))
                      (if (gx#stx-pair? _%$%hd5310554128%_)
                          (let ((_%$%e5326753419%_
                                 (gx#syntax-e _%$%hd5310554128%_)))
                            (let ((_%$%tl5326953426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5326753419%_)))
                                  (_%$%hd5326853423%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5326753419%_))))
                              (if (gx#stx-pair/null? _%$%tl5310354121%_)
                                  (let ((_%__splice9577295773%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5310354121%_
                                          '0)))
                                    (let ((_%$%tl5327253432%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '1)))
                                          (_%$%target5327053429%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9577295773%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5327253432%_)
                                          (_%__match9605896059%_
                                           _%$%e5309854104%_
                                           _%$%hd5309954108%_
                                           _%$%tl5310054111%_
                                           _%$%e5310154114%_
                                           _%$%hd5310254118%_
                                           _%$%tl5310354121%_
                                           _%$%e5310454124%_
                                           _%$%hd5310554128%_
                                           _%$%tl5310654131%_
                                           _%$%e5326753419%_
                                           _%$%hd5326853423%_
                                           _%$%tl5326953426%_
                                           _%__splice9577295773%_
                                           _%$%target5327053429%_
                                           _%$%tl5327253432%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5309153300%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5309153300%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5310554128%_)
                                                      (let ((_%$%e5326753419%_
                                                             (gx#syntax-e
                                                              _%$%hd5310554128%_)))
                                                        (let ((_%$%tl5326953426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5326753419%_)))
                      (_%$%hd5326853423%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5326753419%_))))
                  (if (gx#stx-pair/null? _%$%tl5310354121%_)
                      (let ((_%__splice9577295773%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5310354121%_
                              '0)))
                        (let ((_%$%tl5327253432%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '1)))
                              (_%$%target5327053429%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9577295773%_ '0))))
                          (if (gx#stx-null? _%$%tl5327253432%_)
                              (_%__match9605896059%_
                               _%$%e5309854104%_
                               _%$%hd5309954108%_
                               _%$%tl5310054111%_
                               _%$%e5310154114%_
                               _%$%hd5310254118%_
                               _%$%tl5310354121%_
                               _%$%e5310454124%_
                               _%$%hd5310554128%_
                               _%$%tl5310654131%_
                               _%$%e5326753419%_
                               _%$%hd5326853423%_
                               _%$%tl5326953426%_
                               _%__splice9577295773%_
                               _%$%target5327053429%_
                               _%$%tl5327253432%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5309153300%_)))))
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5310554128%_)
                                              (let ((_%$%e5326753419%_
                                                     (gx#syntax-e
                                                      _%$%hd5310554128%_)))
                                                (let ((_%$%tl5326953426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5326753419%_)))
                                                      (_%$%hd5326853423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5326753419%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5310354121%_)
                                                      (let ((_%__splice9577295773%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5310354121%_
                                                              '0)))
                                                        (let ((_%$%tl5327253432%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '1)))
                      (_%$%target5327053429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9577295773%_ '0))))
                  (if (gx#stx-null? _%$%tl5327253432%_)
                      (_%__match9605896059%_
                       _%$%e5309854104%_
                       _%$%hd5309954108%_
                       _%$%tl5310054111%_
                       _%$%e5310154114%_
                       _%$%hd5310254118%_
                       _%$%tl5310354121%_
                       _%$%e5310454124%_
                       _%$%hd5310554128%_
                       _%$%tl5310654131%_
                       _%$%e5326753419%_
                       _%$%hd5326853423%_
                       _%$%tl5326953426%_
                       _%__splice9577295773%_
                       _%$%target5327053429%_
                       _%$%tl5327253432%_)
                      (let () (declare (not safe)) (_%$%g5309153300%_)))))
              (let () (declare (not safe)) (_%$%g5309153300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5309153300%_))))))
                                  (if (gx#stx-null? _%$%hd5310254118%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5310354121%_)
                                          (let ((_%__splice9577695777%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5310354121%_
                                                  '0)))
                                            (let ((_%$%tl5328853330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9577695777%_
                                                      '1)))
                                                  (_%$%target5328653327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9577695777%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5328853330%_)
                                                  (_%__match9608096081%_
                                                   _%$%e5309854104%_
                                                   _%$%hd5309954108%_
                                                   _%$%tl5310054111%_
                                                   _%$%e5310154114%_
                                                   _%$%hd5310254118%_
                                                   _%$%tl5310354121%_
                                                   _%__splice9577695777%_
                                                   _%$%target5328653327%_
                                                   _%$%tl5328853330%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5309153300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5309153300%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5309153300%_))))))
                          (let () (declare (not safe)) (_%$%g5309153300%_)))))
                  (let () (declare (not safe)) (_%$%g5309153300%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx54260%_)
        (let* ((_%$%g5426454298%_
                (lambda (_%$%g5426554294%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5426554294%_)))
               (_%$%g5426354419%_
                (lambda (_%$%g5426554302%_)
                  (if (gx#stx-pair? _%$%g5426554302%_)
                      (let ((_%$%e5426954305%_
                             (gx#syntax-e _%$%g5426554302%_)))
                        (let ((_%$%hd5427054309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5426954305%_)))
                              (_%$%tl5427154312%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5426954305%_))))
                          (if (gx#stx-pair? _%$%tl5427154312%_)
                              (let ((_%$%e5427254315%_
                                     (gx#syntax-e _%$%tl5427154312%_)))
                                (let ((_%$%hd5427354319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5427254315%_)))
                                      (_%$%tl5427454322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5427254315%_))))
                                  (if (gx#stx-pair? _%$%hd5427354319%_)
                                      (let ((_%$%e5427554325%_
                                             (gx#syntax-e _%$%hd5427354319%_)))
                                        (let ((_%$%hd5427654329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5427554325%_)))
                                              (_%$%tl5427754332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5427554325%_))))
                                          (if (gx#stx-pair? _%$%tl5427754332%_)
                                              (let ((_%$%e5427854335%_
                                                     (gx#syntax-e
                                                      _%$%tl5427754332%_)))
                                                (let ((_%$%hd5427954339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5427854335%_)))
                                                      (_%$%tl5428054342%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5427854335%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5427954339%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102423_|
                                                           _%$%hd5427954339%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5428054342%_)
                                                              (let ((_%$%e5428154345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5428054342%_)))
                        (let ((_%$%hd5428254349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5428154345%_)))
                              (_%$%tl5428354352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5428154345%_))))
                          (if (gx#stx-null? _%$%tl5428354352%_)
                              (if (gx#stx-pair/null? _%$%tl5427454322%_)
                                  (let ((_g102424_
                                         (gx#syntax-split-splice
                                          _%$%tl5427454322%_
                                          '0)))
                                    (begin
                                      (let ((_g102425_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g102424_)
                                                   (##values-length _g102424_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g102425_ 2)))
                                            (error "Context expects 2 values"
                                                   _g102425_)))
                                      (let ((_%$%target5428454355%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102424_ 0)))
                                            (_%$%tl5428654358%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g102424_ 1))))
                                        (if (gx#stx-null? _%$%tl5428654358%_)
                                            (letrec ((_%$%loop5428754361%_
                                                      (lambda (_%$%hd5428554365%_
                                                               _%$%body5429154368%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5428554365%_)
                                                            (let ((_%$%e5428854370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5428554365%_)))
                      (let ((_%$%lp-hd5428954374%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5428854370%_)))
                            (_%$%lp-tl5429054377%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5428854370%_))))
                        (_%$%loop5428754361%_
                         _%$%lp-tl5429054377%_
                         (cons _%$%lp-hd5428954374%_ _%$%body5429154368%_))))
                    (let ((_%$%body5429254380%_
                           (reverse _%$%body5429154368%_)))
                      (if (gx#identifier? _%$%hd5427654329%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5428254349%_
                                            (cons _%$%hd5427654329%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5441054413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5441154416%_)
                         (cons _%$%g5441054413%_ _%$%g5441154416%_))
                       '()
                       _%$%body5429254380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5427654329%_
                                                              (cons _%$%hd5428254349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5427654329%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5426454298%_ _%$%g5426554302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5428754361%_
                                               _%$%target5428454355%_
                                               '()))
                                            (_%$%g5426454298%_
                                             _%$%g5426554302%_)))))
                                  (_%$%g5426454298%_ _%$%g5426554302%_))
                              (_%$%g5426454298%_ _%$%g5426554302%_))))
                      (_%$%g5426454298%_ _%$%g5426554302%_))
                  (_%$%g5426454298%_ _%$%g5426554302%_))
              (_%$%g5426454298%_ _%$%g5426554302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5426454298%_
                                               _%$%g5426554302%_))))
                                      (_%$%g5426454298%_ _%$%g5426554302%_))))
                              (_%$%g5426454298%_ _%$%g5426554302%_))))
                      (_%$%g5426454298%_ _%$%g5426554302%_)))))
          (_%$%g5426354419%_ _%$stx54260%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass55177%_ _%slot55179%_)
        (let ((_%$e55181%_
               (let ((__obj102219 _%klass55177%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102219
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102219 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102219
                      'slot-types)))))
          (if _%$e55181%_ (agetq _%slot55179%_ _%$e55181%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass55158%_ _%slot55160%_)
        (let ((_%$e55162%_
               (let ((__obj102220 _%klass55158%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102220
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102220 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102220
                      'slot-defaults)))))
          (if _%$e55162%_
              (let ((_%$e55169%_ (agetq _%slot55160%_ _%$e55162%_)))
                (if _%$e55169%_ (gx#syntax-local-introduce _%$e55169%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass55139%_ _%slot55141%_)
        (let ((_%$e55143%_
               (let ((__obj102221 _%klass55139%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj102221
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj102221 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj102221
                      'slot-defaults)))))
          (if _%$e55143%_
              (let ((_%$e55150%_ (agetq _%slot55141%_ _%$e55143%_)))
                (if _%$e55150%_ (gx#syntax-local-introduce _%$e55150%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass54908%_ _%slot54910%_)
        (let ((_%$%contract5491154913%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54908%_
                _%slot54910%_)))
          (if _%$%contract5491154913%_
              (let* ((_%contract54916%_ _%$%contract5491154913%_)
                     (_%__stx9608396084%_ _%contract54916%_)
                     (_%$%g5492154958%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9608396084%_))))
                (let ((_%__kont9608696087%_
                       (lambda (_%$%g5492355108%_ _%$%g5492455110%_)
                         (not (gx#free-identifier=?
                               _%$%g5492455110%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9608896089%_
                       (lambda (_%$%g5493155048%_
                                _%$%g5493255050%_
                                _%$%g5493355051%_)
                         (not (gx#free-identifier=?
                               _%$%g5493255050%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9609096091%_ (lambda (_%$%g5494654985%_) '#f)))
                  (let* ((_%__match9613696137%_
                          (lambda (_%$%e5493455008%_
                                   _%$%hd5493555012%_
                                   _%$%tl5493655015%_
                                   _%$%e5493755018%_
                                   _%$%hd5493855022%_
                                   _%$%tl5493955025%_
                                   _%$%e5494055028%_
                                   _%$%hd5494155032%_
                                   _%$%tl5494255035%_
                                   _%$%e5494355038%_
                                   _%$%hd5494455042%_
                                   _%$%tl5494555045%_)
                            (let ((_%$%g5493155048%_ _%$%hd5494455042%_)
                                  (_%$%g5493255050%_ _%$%hd5494155032%_)
                                  (_%$%g5493355051%_ _%$%hd5493855022%_))
                              (if (and (gx#identifier? _%$%g5493255050%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5493255050%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5493255050%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5493255050%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5493255050%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9608896089%_
                                   _%$%g5493155048%_
                                   _%$%g5493255050%_
                                   _%$%g5493355051%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5492154958%_))))))
                         (_%__match9610696107%_
                          (lambda (_%$%e5492555088%_
                                   _%$%hd5492655092%_
                                   _%$%tl5492755095%_
                                   _%$%e5492855098%_
                                   _%$%hd5492955102%_
                                   _%$%tl5493055105%_)
                            (let ((_%$%g5492355108%_ _%$%hd5492955102%_)
                                  (_%$%g5492455110%_ _%$%hd5492655092%_))
                              (if (and (gx#identifier? _%$%g5492455110%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5492455110%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5492455110%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5492455110%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5492455110%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9608696087%_
                                   _%$%g5492355108%_
                                   _%$%g5492455110%_)
                                  (if (gx#identifier? _%$%hd5492655092%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102426_|
                                           _%$%hd5492655092%_)
                                          (_%__kont9609096091%_
                                           _%$%hd5492955102%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5492154958%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5492154958%_))))))))
                    (if (gx#stx-pair? _%__stx9608396084%_)
                        (let ((_%$%e5492555088%_
                               (gx#syntax-e _%__stx9608396084%_)))
                          (let ((_%$%tl5492755095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5492555088%_)))
                                (_%$%hd5492655092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5492555088%_))))
                            (if (gx#stx-pair? _%$%tl5492755095%_)
                                (let ((_%$%e5492855098%_
                                       (gx#syntax-e _%$%tl5492755095%_)))
                                  (let ((_%$%tl5493055105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5492855098%_)))
                                        (_%$%hd5492955102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5492855098%_))))
                                    (if (gx#stx-null? _%$%tl5493055105%_)
                                        (_%__match9610696107%_
                                         _%$%e5492555088%_
                                         _%$%hd5492655092%_
                                         _%$%tl5492755095%_
                                         _%$%e5492855098%_
                                         _%$%hd5492955102%_
                                         _%$%tl5493055105%_)
                                        (if (gx#identifier? _%$%hd5492655092%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102426_|
                                                 _%$%hd5492655092%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5493055105%_)
                                                    (let ((_%$%e5494055028%_
                                                           (gx#syntax-e
                                                            _%$%tl5493055105%_)))
                                                      (let ((_%$%tl5494255035%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5494055028%_)))
                    (_%$%hd5494155032%_
                     (let () (declare (not safe)) (##car _%$%e5494055028%_))))
                (if (gx#stx-pair? _%$%tl5494255035%_)
                    (let ((_%$%e5494355038%_ (gx#syntax-e _%$%tl5494255035%_)))
                      (let ((_%$%tl5494555045%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5494355038%_)))
                            (_%$%hd5494455042%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5494355038%_))))
                        (if (gx#stx-null? _%$%tl5494555045%_)
                            (_%__match9613696137%_
                             _%$%e5492555088%_
                             _%$%hd5492655092%_
                             _%$%tl5492755095%_
                             _%$%e5492855098%_
                             _%$%hd5492955102%_
                             _%$%tl5493055105%_
                             _%$%e5494055028%_
                             _%$%hd5494155032%_
                             _%$%tl5494255035%_
                             _%$%e5494355038%_
                             _%$%hd5494455042%_
                             _%$%tl5494555045%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5492154958%_)))))
                    (let () (declare (not safe)) (_%$%g5492154958%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5492154958%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5492154958%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5492154958%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5492154958%_)))))
                        (let () (declare (not safe)) (_%$%g5492154958%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass54677%_ _%slot54679%_)
        (let ((_%$%contract5468054682%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass54677%_
                _%slot54679%_)))
          (if _%$%contract5468054682%_
              (let* ((_%contract54685%_ _%$%contract5468054682%_)
                     (_%__stx9615796158%_ _%contract54685%_)
                     (_%$%g5469054727%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9615796158%_))))
                (let ((_%__kont9616096161%_
                       (lambda (_%$%g5469254877%_ _%$%g5469354879%_)
                         (not (gx#free-identifier=?
                               _%$%g5469354879%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9616296163%_
                       (lambda (_%$%g5470054817%_
                                _%$%g5470154819%_
                                _%$%g5470254820%_)
                         '#t))
                      (_%__kont9616496165%_ (lambda (_%$%g5471554754%_) '#t)))
                  (let* ((_%__match9621096211%_
                          (lambda (_%$%e5470354777%_
                                   _%$%hd5470454781%_
                                   _%$%tl5470554784%_
                                   _%$%e5470654787%_
                                   _%$%hd5470754791%_
                                   _%$%tl5470854794%_
                                   _%$%e5470954797%_
                                   _%$%hd5471054801%_
                                   _%$%tl5471154804%_
                                   _%$%e5471254807%_
                                   _%$%hd5471354811%_
                                   _%$%tl5471454814%_)
                            (let ((_%$%g5470054817%_ _%$%hd5471354811%_)
                                  (_%$%g5470154819%_ _%$%hd5471054801%_)
                                  (_%$%g5470254820%_ _%$%hd5470754791%_))
                              (if (and (gx#identifier? _%$%g5470154819%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5470154819%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5470154819%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5470154819%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5470154819%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9616296163%_
                                   _%$%g5470054817%_
                                   _%$%g5470154819%_
                                   _%$%g5470254820%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5469054727%_))))))
                         (_%__match9618096181%_
                          (lambda (_%$%e5469454857%_
                                   _%$%hd5469554861%_
                                   _%$%tl5469654864%_
                                   _%$%e5469754867%_
                                   _%$%hd5469854871%_
                                   _%$%tl5469954874%_)
                            (let ((_%$%g5469254877%_ _%$%hd5469854871%_)
                                  (_%$%g5469354879%_ _%$%hd5469554861%_))
                              (if (and (gx#identifier? _%$%g5469354879%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5469354879%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5469354879%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5469354879%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5469354879%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9616096161%_
                                   _%$%g5469254877%_
                                   _%$%g5469354879%_)
                                  (if (gx#identifier? _%$%hd5469554861%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g102427_|
                                           _%$%hd5469554861%_)
                                          (_%__kont9616496165%_
                                           _%$%hd5469854871%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5469054727%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5469054727%_))))))))
                    (if (gx#stx-pair? _%__stx9615796158%_)
                        (let ((_%$%e5469454857%_
                               (gx#syntax-e _%__stx9615796158%_)))
                          (let ((_%$%tl5469654864%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5469454857%_)))
                                (_%$%hd5469554861%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5469454857%_))))
                            (if (gx#stx-pair? _%$%tl5469654864%_)
                                (let ((_%$%e5469754867%_
                                       (gx#syntax-e _%$%tl5469654864%_)))
                                  (let ((_%$%tl5469954874%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5469754867%_)))
                                        (_%$%hd5469854871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5469754867%_))))
                                    (if (gx#stx-null? _%$%tl5469954874%_)
                                        (_%__match9618096181%_
                                         _%$%e5469454857%_
                                         _%$%hd5469554861%_
                                         _%$%tl5469654864%_
                                         _%$%e5469754867%_
                                         _%$%hd5469854871%_
                                         _%$%tl5469954874%_)
                                        (if (gx#identifier? _%$%hd5469554861%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g102427_|
                                                 _%$%hd5469554861%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5469954874%_)
                                                    (let ((_%$%e5470954797%_
                                                           (gx#syntax-e
                                                            _%$%tl5469954874%_)))
                                                      (let ((_%$%tl5471154804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5470954797%_)))
                    (_%$%hd5471054801%_
                     (let () (declare (not safe)) (##car _%$%e5470954797%_))))
                (if (gx#stx-pair? _%$%tl5471154804%_)
                    (let ((_%$%e5471254807%_ (gx#syntax-e _%$%tl5471154804%_)))
                      (let ((_%$%tl5471454814%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5471254807%_)))
                            (_%$%hd5471354811%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5471254807%_))))
                        (if (gx#stx-null? _%$%tl5471454814%_)
                            (_%__match9621096211%_
                             _%$%e5469454857%_
                             _%$%hd5469554861%_
                             _%$%tl5469654864%_
                             _%$%e5469754867%_
                             _%$%hd5469854871%_
                             _%$%tl5469954874%_
                             _%$%e5470954797%_
                             _%$%hd5471054801%_
                             _%$%tl5471154804%_
                             _%$%e5471254807%_
                             _%$%hd5471354811%_
                             _%$%tl5471454814%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5469054727%_)))))
                    (let () (declare (not safe)) (_%$%g5469054727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5469054727%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5469054727%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5469054727%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5469054727%_)))))
                        (let () (declare (not safe)) (_%$%g5469054727%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id54664%_)
        (if (gx#identifier? _%id54664%_)
            (let* ((_%str54667%_ (symbol->string (gx#stx-e _%id54664%_)))
                   (_%$%index5466954671%_ (string-index _%str54667%_ '#\.)))
              (if _%$%index5466954671%_
                  (let ((_%index54674%_ _%$%index5466954671%_))
                    (if (let () (declare (not safe)) (##fx> _%index54674%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str54667%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx54657%_ _%id54659%_)
        (let ((_%parts54661%_
               (string-split (symbol->string (gx#stx-e _%id54659%_)) '#\.)))
          (if (find string-empty? _%parts54661%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx54657%_
               _%id54659%_)
              (cons (gx#stx-identifier _%id54659%_ (car _%parts54661%_))
                    (map string->symbol (cdr _%parts54661%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx54543%_ _%klass-or-id54545%_ _%slot54546%_)
        (let* ((_%klass54548%_
                (if (gx#identifier? _%klass-or-id54545%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54543%_
                       _%klass-or-id54545%_))
                    _%klass-or-id54545%_))
               (_%$e54553%_
                (agetq _%slot54546%_
                       (let ((__obj102222 _%klass54548%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj102222
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj102222
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj102222
                              'unchecked-accessors))))))
          (if _%$e54553%_
              _%$e54553%_
              (let ((_%$e54561%_
                     (agetq _%slot54546%_
                            (let ((_%$e54557%_
                                   (let ((__obj102223 _%klass54548%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102223
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102223
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102223
                                          'slot-offsets)))))
                              (if _%$e54557%_ _%$e54557%_ '())))))
                (if _%$e54561%_
                    (let* ((_%$%g5456854587%_
                            (lambda (_%$%g5456954583%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5456954583%_)))
                           (_%$%g5456754651%_
                            (lambda (_%$%g5456954591%_)
                              (if (gx#stx-pair? _%$%g5456954591%_)
                                  (let ((_%$%e5457354594%_
                                         (gx#syntax-e _%$%g5456954591%_)))
                                    (let ((_%$%hd5457454598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5457354594%_)))
                                          (_%$%tl5457554601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5457354594%_))))
                                      (if (gx#stx-pair? _%$%tl5457554601%_)
                                          (let ((_%$%e5457654604%_
                                                 (gx#syntax-e
                                                  _%$%tl5457554601%_)))
                                            (let ((_%$%hd5457754608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5457654604%_)))
                                                  (_%$%tl5457854611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5457654604%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5457854611%_)
                                                  (let ((_%$%e5457954614%_
                                                         (gx#syntax-e
                                                          _%$%tl5457854611%_)))
                                                    (let ((_%$%hd5458054618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5457954614%_)))
                                                          (_%$%tl5458154621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5457954614%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5458154621%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%$%hd5458054618%_
                                                       (cons _%$%hd5457454598%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5457754608%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54543%_))
                  (_%$%g5456854587%_ _%$%g5456954591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5456854587%_
                                                   _%$%g5456954591%_))))
                                          (_%$%g5456854587%_
                                           _%$%g5456954591%_))))
                                  (_%$%g5456854587%_ _%$%g5456954591%_)))))
                      (_%$%g5456754651%_
                       (list (let ((__obj102224 _%klass54548%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102224
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102224
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102224
                                    'type-descriptor)))
                             _%slot54546%_
                             _%$e54561%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx54543%_
                     _%klass54548%_
                     _%slot54546%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx54424%_
               _%klass-or-id54426%_
               _%slot54427%_
               _%checked?54428%_)
        (let* ((_%klass54430%_
                (if (gx#identifier? _%klass-or-id54426%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx54424%_
                       _%klass-or-id54426%_))
                    _%klass-or-id54426%_))
               (_%mutators54433%_
                (if _%checked?54428%_
                    (let ((__obj102225 _%klass54430%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102225
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102225
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102225
                           'mutators)))
                    (let ((__obj102226 _%klass54430%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj102226
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj102226
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj102226
                           'unchecked-mutators)))))
               (_%$e54438%_ (agetq _%slot54427%_ _%mutators54433%_)))
          (if _%$e54438%_
              _%$e54438%_
              (let ((_%$e54446%_
                     (agetq _%slot54427%_
                            (let ((_%$e54442%_
                                   (let ((__obj102227 _%klass54430%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj102227
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj102227
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj102227
                                          'slot-offsets)))))
                              (if _%$e54442%_ _%$e54442%_ '())))))
                (if _%$e54446%_
                    (let* ((_%$%g5445354472%_
                            (lambda (_%$%g5445454468%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5445454468%_)))
                           (_%$%g5445254537%_
                            (lambda (_%$%g5445454476%_)
                              (if (gx#stx-pair? _%$%g5445454476%_)
                                  (let ((_%$%e5445854479%_
                                         (gx#syntax-e _%$%g5445454476%_)))
                                    (let ((_%$%hd5445954483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5445854479%_)))
                                          (_%$%tl5446054486%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5445854479%_))))
                                      (if (gx#stx-pair? _%$%tl5446054486%_)
                                          (let ((_%$%e5446154489%_
                                                 (gx#syntax-e
                                                  _%$%tl5446054486%_)))
                                            (let ((_%$%hd5446254493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5446154489%_)))
                                                  (_%$%tl5446354496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5446154489%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5446354496%_)
                                                  (let ((_%$%e5446454499%_
                                                         (gx#syntax-e
                                                          _%$%tl5446354496%_)))
                                                    (let ((_%$%hd5446554503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5446454499%_)))
                                                          (_%$%tl5446654506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5446454499%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5446654506%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%$%hd5446554503%_
                                                             (cons _%$%hd5445954483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5446254493%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx54424%_))
                  (_%$%g5445354472%_ _%$%g5445454476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5445354472%_
                                                   _%$%g5445454476%_))))
                                          (_%$%g5445354472%_
                                           _%$%g5445454476%_))))
                                  (_%$%g5445354472%_ _%$%g5445454476%_)))))
                      (_%$%g5445254537%_
                       (list (let ((__obj102228 _%klass54430%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102228
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102228
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102228
                                    'type-descriptor)))
                             _%slot54427%_
                             _%$e54446%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx54424%_
                     _%klass54430%_
                     _%slot54427%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx55190%_)
        (letrec ((_%expand-body55193%_
                  (lambda (_%klass56091%_
                           _%var56093%_
                           _%Type56094%_
                           _%body56095%_
                           _%checked?56096%_)
                    (let* ((_%$%g5609856142%_
                            (lambda (_%$%g5609956138%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5609956138%_)))
                           (_%$%g5609756297%_
                            (lambda (_%$%g5609956146%_)
                              (if (gx#stx-pair? _%$%g5609956146%_)
                                  (let ((_%$%e5610756149%_
                                         (gx#syntax-e _%$%g5609956146%_)))
                                    (let ((_%$%hd5610856153%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5610756149%_)))
                                          (_%$%tl5610956156%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5610756149%_))))
                                      (if (gx#stx-pair? _%$%tl5610956156%_)
                                          (let ((_%$%e5611056159%_
                                                 (gx#syntax-e
                                                  _%$%tl5610956156%_)))
                                            (let ((_%$%hd5611156163%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5611056159%_)))
                                                  (_%$%tl5611256166%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5611056159%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5611256166%_)
                                                  (let ((_%$%e5611356169%_
                                                         (gx#syntax-e
                                                          _%$%tl5611256166%_)))
                                                    (let ((_%$%hd5611456173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5611356169%_)))
                                                          (_%$%tl5611556176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5611356169%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5611556176%_)
                                                          (let ((_%$%e5611656179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5611556176%_)))
                    (let ((_%$%hd5611756183%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5611656179%_)))
                          (_%$%tl5611856186%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5611656179%_))))
                      (if (gx#stx-pair? _%$%tl5611856186%_)
                          (let ((_%$%e5611956189%_
                                 (gx#syntax-e _%$%tl5611856186%_)))
                            (let ((_%$%hd5612056193%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5611956189%_)))
                                  (_%$%tl5612156196%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5611956189%_))))
                              (if (gx#stx-pair? _%$%tl5612156196%_)
                                  (let ((_%$%e5612256199%_
                                         (gx#syntax-e _%$%tl5612156196%_)))
                                    (let ((_%$%hd5612356203%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5612256199%_)))
                                          (_%$%tl5612456206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5612256199%_))))
                                      (if (gx#stx-pair? _%$%tl5612456206%_)
                                          (let ((_%$%e5612556209%_
                                                 (gx#syntax-e
                                                  _%$%tl5612456206%_)))
                                            (let ((_%$%hd5612656213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5612556209%_)))
                                                  (_%$%tl5612756216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5612556209%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5612656213%_)
                                                  (let ((_g102428_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5612656213%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102428_)
                           (##values-length _g102428_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102429_ 2)))
                    (error "Context expects 2 values" _g102429_)))
              (let ((_%$%target5612856219%_
                     (let () (declare (not safe)) (##values-ref _g102428_ 0)))
                    (_%$%tl5613056222%_
                     (let () (declare (not safe)) (##values-ref _g102428_ 1))))
                (if (gx#stx-null? _%$%tl5613056222%_)
                    (letrec ((_%$%loop5613156225%_
                              (lambda (_%$%hd5612956229%_ _%$%body5613556232%_)
                                (if (gx#stx-pair? _%$%hd5612956229%_)
                                    (let ((_%$%e5613256234%_
                                           (gx#syntax-e _%$%hd5612956229%_)))
                                      (let ((_%$%lp-hd5613356238%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5613256234%_)))
                                            (_%$%lp-tl5613456241%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5613256234%_))))
                                        (_%$%loop5613156225%_
                                         _%$%lp-tl5613456241%_
                                         (cons _%$%lp-hd5613356238%_
                                               _%$%body5613556232%_))))
                                    (let ((_%$%body5613656244%_
                                           (reverse _%$%body5613556232%_)))
                                      (if (gx#stx-null? _%$%tl5612756216%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5611456173%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5611156163%_ '()))
                                      (cons _%$%hd5611456173%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5610856153%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5611456173%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5611756183%_ '()))
                            (cons _%$%hd5612056193%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5612356203%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5628856291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5628956294%_)
                   (cons _%$%g5628856291%_ _%$%g5628956294%_))
                 '()
                 _%$%body5613656244%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5609856142%_
                                           _%$%g5609956146%_)))))))
                      (_%$%loop5613156225%_ _%$%target5612856219%_ '()))
                    (_%$%g5609856142%_ _%$%g5609956146%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5609856142%_
                                                   _%$%g5609956146%_))))
                                          (_%$%g5609856142%_
                                           _%$%g5609956146%_))))
                                  (_%$%g5609856142%_ _%$%g5609956146%_))))
                          (_%$%g5609856142%_ _%$%g5609956146%_))))
                  (_%$%g5609856142%_ _%$%g5609956146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5609856142%_
                                                   _%$%g5609956146%_))))
                                          (_%$%g5609856142%_
                                           _%$%g5609956146%_))))
                                  (_%$%g5609856142%_ _%$%g5609956146%_)))))
                      (_%$%g5609756297%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj102229 _%klass56091%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102229
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102229
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj102229
                                    'type-descriptor)))
                             _%var56093%_
                             _%klass56091%_
                             _%checked?56096%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56095%_)))))
                 (_%expand55195%_
                  (lambda (_%var55983%_
                           _%Type55985%_
                           _%body55986%_
                           _%checked?55987%_
                           _%checked-mutators?55988%_
                           _%maybe?55989%_)
                    (let* ((_%klass55991%_
                            (gx#syntax-local-value _%Type55985%_ false))
                           (_%expr-body55998%_
                            (_%expand-body55193%_
                             _%klass55991%_
                             _%var55983%_
                             _%Type55985%_
                             _%body55986%_
                             (let ((_%$e55994%_ _%checked?55987%_))
                               (if _%$e55994%_
                                   _%$e55994%_
                                   _%checked-mutators?55988%_)))))
                      (if _%checked?55987%_
                          (let* ((_%$%g5600356022%_
                                  (lambda (_%$%g5600456018%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5600456018%_)))
                                 (_%$%g5600256084%_
                                  (lambda (_%$%g5600456026%_)
                                    (if (gx#stx-pair? _%$%g5600456026%_)
                                        (let ((_%$%e5600856029%_
                                               (gx#syntax-e
                                                _%$%g5600456026%_)))
                                          (let ((_%$%hd5600956033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5600856029%_)))
                                                (_%$%tl5601056036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5600856029%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5601056036%_)
                                                (let ((_%$%e5601156039%_
                                                       (gx#syntax-e
                                                        _%$%tl5601056036%_)))
                                                  (let ((_%$%hd5601256043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5601156039%_)))
                                                        (_%$%tl5601356046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5601156039%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5601356046%_)
                                                        (let ((_%$%e5601456049%_
                                                               (gx#syntax-e
                                                                _%$%tl5601356046%_)))
                                                          (let ((_%$%hd5601556053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5601456049%_)))
                        (_%$%tl5601656056%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5601456049%_))))
                    (if (gx#stx-null? _%$%tl5601656056%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5601256043%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5600956033%_ '())))
                                    (cons _%$%hd5601556053%_ '())))
                        (_%$%g5600356022%_ _%$%g5600456026%_))))
                (_%$%g5600356022%_ _%$%g5600456026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5600356022%_
                                                 _%$%g5600456026%_))))
                                        (_%$%g5600356022%_
                                         _%$%g5600456026%_)))))
                            (_%$%g5600256084%_
                             (list (let ((_%instance?56088%_
                                          (let ((__obj102230 _%klass55991%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj102230
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj102230
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj102230
                                                 'predicate)))))
                                     (if _%maybe?55989%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?56088%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?56088%_))
                                   _%var55983%_
                                   _%expr-body55998%_)))
                          _%expr-body55998%_)))))
          (let* ((_%__stx9623196232%_ _%stx55190%_)
                 (_%$%g5520155344%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9623196232%_))))
            (let ((_%__kont9623496235%_
                   (lambda (_%$%g5520355911%_
                            _%$%g5520455913%_
                            _%$%g5520555914%_
                            _%$%g5520655915%_)
                     (let* ((_%$%g5594055948%_
                             (lambda (_%$%g5594155944%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5594155944%_)))
                            (_%$%g5593955975%_
                             (lambda (_%$%g5594155952%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5520655915%_
                                                 (cons _%$%g5520555914%_
                                                       (cons _%$%g5594155952%_
                                                             '())))
                                           (foldr (lambda (_%$%g5596655969%_
                                                           _%$%g5596755972%_)
                                                    (cons _%$%g5596655969%_
                                                          _%$%g5596755972%_))
                                                  '()
                                                  _%$%g5520355911%_))))))
                       (_%$%g5593955975%_
                        (let ((__obj102231
                               (gx#syntax-local-value _%$%g5520455913%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102231
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102231
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102231
                               'identifier)))))))
                  (_%__kont9623896239%_
                   (lambda (_%$%g5523155791%_
                            _%$%g5523255793%_
                            _%$%g5523355794%_)
                     (_%expand55195%_
                      _%$%g5523355794%_
                      _%$%g5523255793%_
                      (foldr (lambda (_%$%g5581755820%_ _%$%g5581855823%_)
                               (cons _%$%g5581755820%_ _%$%g5581855823%_))
                             '()
                             _%$%g5523155791%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9624296243%_
                   (lambda (_%$%g5525855671%_
                            _%$%g5525955673%_
                            _%$%g5526055674%_)
                     (_%expand55195%_
                      _%$%g5526055674%_
                      _%$%g5525955673%_
                      (foldr (lambda (_%$%g5569755700%_ _%$%g5569855703%_)
                               (cons _%$%g5569755700%_ _%$%g5569855703%_))
                             '()
                             _%$%g5525855671%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9624696247%_
                   (lambda (_%$%g5528555551%_
                            _%$%g5528655553%_
                            _%$%g5528755554%_)
                     (_%expand55195%_
                      _%$%g5528755554%_
                      _%$%g5528655553%_
                      (foldr (lambda (_%$%g5557755580%_ _%$%g5557855583%_)
                               (cons _%$%g5557755580%_ _%$%g5557855583%_))
                             '()
                             _%$%g5528555551%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9625096251%_
                   (lambda (_%$%g5531255429%_
                            _%$%g5531355431%_
                            _%$%g5531455432%_)
                     (_%expand55195%_
                      _%$%g5531455432%_
                      _%$%g5531355431%_
                      (foldr (lambda (_%$%g5545755460%_ _%$%g5545855463%_)
                               (cons _%$%g5545755460%_ _%$%g5545855463%_))
                             '()
                             _%$%g5531255429%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9647096471%_
                      (lambda (_%$%e5531555351%_
                               _%$%hd5531655355%_
                               _%$%tl5531755358%_
                               _%$%e5531855361%_
                               _%$%hd5531955365%_
                               _%$%tl5532055368%_
                               _%$%e5532155371%_
                               _%$%hd5532255375%_
                               _%$%tl5532355378%_
                               _%$%e5532455381%_
                               _%$%hd5532555385%_
                               _%$%tl5532655388%_
                               _%$%e5532755391%_
                               _%$%hd5532855395%_
                               _%$%tl5532955398%_
                               _%__splice9625296253%_
                               _%$%target5533055401%_
                               _%$%tl5533255404%_)
                        (letrec ((_%$%loop5533355407%_
                                  (lambda (_%$%hd5533155411%_
                                           _%$%body5533755414%_)
                                    (if (gx#stx-pair? _%$%hd5533155411%_)
                                        (let ((_%$%e5533455416%_
                                               (gx#syntax-e
                                                _%$%hd5533155411%_)))
                                          (let ((_%$%lp-tl5533655423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5533455416%_)))
                                                (_%$%lp-hd5533555420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5533455416%_))))
                                            (_%$%loop5533355407%_
                                             _%$%lp-tl5533655423%_
                                             (cons _%$%lp-hd5533555420%_
                                                   _%$%body5533755414%_))))
                                        (let ((_%$%body5533855426%_
                                               (reverse _%$%body5533755414%_)))
                                          (let ((_%$%g5531255429%_
                                                 _%$%body5533855426%_)
                                                (_%$%g5531355431%_
                                                 _%$%hd5532855395%_)
                                                (_%$%g5531455432%_
                                                 _%$%hd5532255375%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5531355431%_))
                                                (_%__kont9625096251%_
                                                 _%$%g5531255429%_
                                                 _%$%g5531355431%_
                                                 _%$%g5531455432%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))))))))
                          (_%$%loop5533355407%_ _%$%target5533055401%_ '()))))
                     (_%__match9642696427%_
                      (lambda (_%$%e5528855473%_
                               _%$%hd5528955477%_
                               _%$%tl5529055480%_
                               _%$%e5529155483%_
                               _%$%hd5529255487%_
                               _%$%tl5529355490%_
                               _%$%e5529455493%_
                               _%$%hd5529555497%_
                               _%$%tl5529655500%_
                               _%$%e5529755503%_
                               _%$%hd5529855507%_
                               _%$%tl5529955510%_
                               _%$%e5530055513%_
                               _%$%hd5530155517%_
                               _%$%tl5530255520%_
                               _%__splice9624896249%_
                               _%$%target5530355523%_
                               _%$%tl5530555526%_)
                        (letrec ((_%$%loop5530655529%_
                                  (lambda (_%$%hd5530455533%_
                                           _%$%body5531055536%_)
                                    (if (gx#stx-pair? _%$%hd5530455533%_)
                                        (let ((_%$%e5530755538%_
                                               (gx#syntax-e
                                                _%$%hd5530455533%_)))
                                          (let ((_%$%lp-tl5530955545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5530755538%_)))
                                                (_%$%lp-hd5530855542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5530755538%_))))
                                            (_%$%loop5530655529%_
                                             _%$%lp-tl5530955545%_
                                             (cons _%$%lp-hd5530855542%_
                                                   _%$%body5531055536%_))))
                                        (let ((_%$%body5531155548%_
                                               (reverse _%$%body5531055536%_)))
                                          (let ((_%$%g5528555551%_
                                                 _%$%body5531155548%_)
                                                (_%$%g5528655553%_
                                                 _%$%hd5530155517%_)
                                                (_%$%g5528755554%_
                                                 _%$%hd5529555497%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5528655553%_))
                                                (_%__kont9624696247%_
                                                 _%$%g5528555551%_
                                                 _%$%g5528655553%_
                                                 _%$%g5528755554%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))))))))
                          (_%$%loop5530655529%_ _%$%target5530355523%_ '()))))
                     (_%__match9638296383%_
                      (lambda (_%$%e5526155593%_
                               _%$%hd5526255597%_
                               _%$%tl5526355600%_
                               _%$%e5526455603%_
                               _%$%hd5526555607%_
                               _%$%tl5526655610%_
                               _%$%e5526755613%_
                               _%$%hd5526855617%_
                               _%$%tl5526955620%_
                               _%$%e5527055623%_
                               _%$%hd5527155627%_
                               _%$%tl5527255630%_
                               _%$%e5527355633%_
                               _%$%hd5527455637%_
                               _%$%tl5527555640%_
                               _%__splice9624496245%_
                               _%$%target5527655643%_
                               _%$%tl5527855646%_)
                        (letrec ((_%$%loop5527955649%_
                                  (lambda (_%$%hd5527755653%_
                                           _%$%body5528355656%_)
                                    (if (gx#stx-pair? _%$%hd5527755653%_)
                                        (let ((_%$%e5528055658%_
                                               (gx#syntax-e
                                                _%$%hd5527755653%_)))
                                          (let ((_%$%lp-tl5528255665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5528055658%_)))
                                                (_%$%lp-hd5528155662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5528055658%_))))
                                            (_%$%loop5527955649%_
                                             _%$%lp-tl5528255665%_
                                             (cons _%$%lp-hd5528155662%_
                                                   _%$%body5528355656%_))))
                                        (let ((_%$%body5528455668%_
                                               (reverse _%$%body5528355656%_)))
                                          (let ((_%$%g5525855671%_
                                                 _%$%body5528455668%_)
                                                (_%$%g5525955673%_
                                                 _%$%hd5527455637%_)
                                                (_%$%g5526055674%_
                                                 _%$%hd5526855617%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5525955673%_))
                                                (_%__kont9624296243%_
                                                 _%$%g5525855671%_
                                                 _%$%g5525955673%_
                                                 _%$%g5526055674%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))))))))
                          (_%$%loop5527955649%_ _%$%target5527655643%_ '()))))
                     (_%__match9633896339%_
                      (lambda (_%$%e5523455713%_
                               _%$%hd5523555717%_
                               _%$%tl5523655720%_
                               _%$%e5523755723%_
                               _%$%hd5523855727%_
                               _%$%tl5523955730%_
                               _%$%e5524055733%_
                               _%$%hd5524155737%_
                               _%$%tl5524255740%_
                               _%$%e5524355743%_
                               _%$%hd5524455747%_
                               _%$%tl5524555750%_
                               _%$%e5524655753%_
                               _%$%hd5524755757%_
                               _%$%tl5524855760%_
                               _%__splice9624096241%_
                               _%$%target5524955763%_
                               _%$%tl5525155766%_)
                        (letrec ((_%$%loop5525255769%_
                                  (lambda (_%$%hd5525055773%_
                                           _%$%body5525655776%_)
                                    (if (gx#stx-pair? _%$%hd5525055773%_)
                                        (let ((_%$%e5525355778%_
                                               (gx#syntax-e
                                                _%$%hd5525055773%_)))
                                          (let ((_%$%lp-tl5525555785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5525355778%_)))
                                                (_%$%lp-hd5525455782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5525355778%_))))
                                            (_%$%loop5525255769%_
                                             _%$%lp-tl5525555785%_
                                             (cons _%$%lp-hd5525455782%_
                                                   _%$%body5525655776%_))))
                                        (let ((_%$%body5525755788%_
                                               (reverse _%$%body5525655776%_)))
                                          (let ((_%$%g5523155791%_
                                                 _%$%body5525755788%_)
                                                (_%$%g5523255793%_
                                                 _%$%hd5524755757%_)
                                                (_%$%g5523355794%_
                                                 _%$%hd5524155737%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5523255793%_))
                                                (_%__kont9623896239%_
                                                 _%$%g5523155791%_
                                                 _%$%g5523255793%_
                                                 _%$%g5523355794%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))))))))
                          (_%$%loop5525255769%_ _%$%target5524955763%_ '()))))
                     (_%__match9631896319%_
                      (lambda (_%$%e5523455713%_
                               _%$%hd5523555717%_
                               _%$%tl5523655720%_
                               _%$%e5523755723%_
                               _%$%hd5523855727%_
                               _%$%tl5523955730%_
                               _%$%e5524055733%_
                               _%$%hd5524155737%_
                               _%$%tl5524255740%_
                               _%$%e5524355743%_
                               _%$%hd5524455747%_
                               _%$%tl5524555750%_)
                        (if (gx#identifier? _%$%hd5524455747%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102430_|
                                 _%$%hd5524455747%_)
                                (if (gx#stx-pair? _%$%tl5524555750%_)
                                    (let ((_%$%e5524655753%_
                                           (gx#syntax-e _%$%tl5524555750%_)))
                                      (let ((_%$%tl5524855760%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5524655753%_)))
                                            (_%$%hd5524755757%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5524655753%_))))
                                        (if (gx#stx-null? _%$%tl5524855760%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5523955730%_)
                                                (let ((_%__splice9624096241%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5523955730%_
                                                        '0)))
                                                  (let ((_%$%tl5525155766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9624096241%_
                                                            '1)))
                                                        (_%$%target5524955763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9624096241%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5525155766%_)
                                                        (_%__match9633896339%_
                                                         _%$%e5523455713%_
                                                         _%$%hd5523555717%_
                                                         _%$%tl5523655720%_
                                                         _%$%e5523755723%_
                                                         _%$%hd5523855727%_
                                                         _%$%tl5523955730%_
                                                         _%$%e5524055733%_
                                                         _%$%hd5524155737%_
                                                         _%$%tl5524255740%_
                                                         _%$%e5524355743%_
                                                         _%$%hd5524455747%_
                                                         _%$%tl5524555750%_
                                                         _%$%e5524655753%_
                                                         _%$%hd5524755757%_
                                                         _%$%tl5524855760%_
                                                         _%__splice9624096241%_
                                                         _%$%target5524955763%_
                                                         _%$%tl5525155766%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5520155344%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520155344%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5520155344%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102431_|
                                     _%$%hd5524455747%_)
                                    (if (gx#stx-pair? _%$%tl5524555750%_)
                                        (let ((_%$%e5527355633%_
                                               (gx#syntax-e
                                                _%$%tl5524555750%_)))
                                          (let ((_%$%tl5527555640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5527355633%_)))
                                                (_%$%hd5527455637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5527355633%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5527555640%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5523955730%_)
                                                    (let ((_%__splice9624496245%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5523955730%_
                                                            '0)))
                                                      (let ((_%$%tl5527855646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9624496245%_ '1)))
                    (_%$%target5527655643%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9624496245%_ '0))))
                (if (gx#stx-null? _%$%tl5527855646%_)
                    (_%__match9638296383%_
                     _%$%e5523455713%_
                     _%$%hd5523555717%_
                     _%$%tl5523655720%_
                     _%$%e5523755723%_
                     _%$%hd5523855727%_
                     _%$%tl5523955730%_
                     _%$%e5524055733%_
                     _%$%hd5524155737%_
                     _%$%tl5524255740%_
                     _%$%e5524355743%_
                     _%$%hd5524455747%_
                     _%$%tl5524555750%_
                     _%$%e5527355633%_
                     _%$%hd5527455637%_
                     _%$%tl5527555640%_
                     _%__splice9624496245%_
                     _%$%target5527655643%_
                     _%$%tl5527855646%_)
                    (let () (declare (not safe)) (_%$%g5520155344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520155344%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5520155344%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102432_|
                                         _%$%hd5524455747%_)
                                        (if (gx#stx-pair? _%$%tl5524555750%_)
                                            (let ((_%$%e5530055513%_
                                                   (gx#syntax-e
                                                    _%$%tl5524555750%_)))
                                              (let ((_%$%tl5530255520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5530055513%_)))
                                                    (_%$%hd5530155517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5530055513%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5530255520%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5523955730%_)
                                                        (let ((_%__splice9624896249%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5523955730%_
                                                                '0)))
                                                          (let ((_%$%tl5530555526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9624896249%_ '1)))
                        (_%$%target5530355523%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9624896249%_ '0))))
                    (if (gx#stx-null? _%$%tl5530555526%_)
                        (_%__match9642696427%_
                         _%$%e5523455713%_
                         _%$%hd5523555717%_
                         _%$%tl5523655720%_
                         _%$%e5523755723%_
                         _%$%hd5523855727%_
                         _%$%tl5523955730%_
                         _%$%e5524055733%_
                         _%$%hd5524155737%_
                         _%$%tl5524255740%_
                         _%$%e5524355743%_
                         _%$%hd5524455747%_
                         _%$%tl5524555750%_
                         _%$%e5530055513%_
                         _%$%hd5530155517%_
                         _%$%tl5530255520%_
                         _%__splice9624896249%_
                         _%$%target5530355523%_
                         _%$%tl5530555526%_)
                        (let () (declare (not safe)) (_%$%g5520155344%_)))))
                (let () (declare (not safe)) (_%$%g5520155344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520155344%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520155344%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102433_|
                                             _%$%hd5524455747%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5524555750%_)
                                                (let ((_%$%e5532755391%_
                                                       (gx#syntax-e
                                                        _%$%tl5524555750%_)))
                                                  (let ((_%$%tl5532955398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5532755391%_)))
                                                        (_%$%hd5532855395%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5532755391%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5532955398%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5523955730%_)
                                                            (let ((_%__splice9625296253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5523955730%_
                            '0)))
                      (let ((_%$%tl5533255404%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9625296253%_ '1)))
                            (_%$%target5533055401%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9625296253%_ '0))))
                        (if (gx#stx-null? _%$%tl5533255404%_)
                            (_%__match9647096471%_
                             _%$%e5523455713%_
                             _%$%hd5523555717%_
                             _%$%tl5523655720%_
                             _%$%e5523755723%_
                             _%$%hd5523855727%_
                             _%$%tl5523955730%_
                             _%$%e5524055733%_
                             _%$%hd5524155737%_
                             _%$%tl5524255740%_
                             _%$%e5524355743%_
                             _%$%hd5524455747%_
                             _%$%tl5524555750%_
                             _%$%e5532755391%_
                             _%$%hd5532855395%_
                             _%$%tl5532955398%_
                             _%__splice9625296253%_
                             _%$%target5533055401%_
                             _%$%tl5533255404%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5520155344%_)))))
                    (let () (declare (not safe)) (_%$%g5520155344%_)))
                (let () (declare (not safe)) (_%$%g5520155344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5520155344%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520155344%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5520155344%_)))))
                     (_%__match9629496295%_
                      (lambda (_%$%e5520755833%_
                               _%$%hd5520855837%_
                               _%$%tl5520955840%_
                               _%$%e5521055843%_
                               _%$%hd5521155847%_
                               _%$%tl5521255850%_
                               _%$%e5521355853%_
                               _%$%hd5521455857%_
                               _%$%tl5521555860%_
                               _%$%e5521655863%_
                               _%$%hd5521755867%_
                               _%$%tl5521855870%_
                               _%$%e5521955873%_
                               _%$%hd5522055877%_
                               _%$%tl5522155880%_
                               _%__splice9623696237%_
                               _%$%target5522255883%_
                               _%$%tl5522455886%_)
                        (letrec ((_%$%loop5522555889%_
                                  (lambda (_%$%hd5522355893%_
                                           _%$%body5522955896%_)
                                    (if (gx#stx-pair? _%$%hd5522355893%_)
                                        (let ((_%$%e5522655898%_
                                               (gx#syntax-e
                                                _%$%hd5522355893%_)))
                                          (let ((_%$%lp-tl5522855905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5522655898%_)))
                                                (_%$%lp-hd5522755902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5522655898%_))))
                                            (_%$%loop5522555889%_
                                             _%$%lp-tl5522855905%_
                                             (cons _%$%lp-hd5522755902%_
                                                   _%$%body5522955896%_))))
                                        (let ((_%$%body5523055908%_
                                               (reverse _%$%body5522955896%_)))
                                          (let ((_%$%g5520355911%_
                                                 _%$%body5523055908%_)
                                                (_%$%g5520455913%_
                                                 _%$%hd5522055877%_)
                                                (_%$%g5520555914%_
                                                 _%$%hd5521755867%_)
                                                (_%$%g5520655915%_
                                                 _%$%hd5521455857%_))
                                            (if (let ((__tmp102434
                                                       (gx#syntax-local-value
                                                        _%$%g5520455913%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102434))
                                                (_%__kont9623496235%_
                                                 _%$%g5520355911%_
                                                 _%$%g5520455913%_
                                                 _%$%g5520555914%_
                                                 _%$%g5520655915%_)
                                                (_%__match9631896319%_
                                                 _%$%e5520755833%_
                                                 _%$%hd5520855837%_
                                                 _%$%tl5520955840%_
                                                 _%$%e5521055843%_
                                                 _%$%hd5521155847%_
                                                 _%$%tl5521255850%_
                                                 _%$%e5521355853%_
                                                 _%$%hd5521455857%_
                                                 _%$%tl5521555860%_
                                                 _%$%e5521655863%_
                                                 _%$%hd5521755867%_
                                                 _%$%tl5521855870%_))))))))
                          (_%$%loop5522555889%_ _%$%target5522255883%_ '())))))
                (if (gx#stx-pair? _%__stx9623196232%_)
                    (let ((_%$%e5520755833%_
                           (gx#syntax-e _%__stx9623196232%_)))
                      (let ((_%$%tl5520955840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5520755833%_)))
                            (_%$%hd5520855837%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5520755833%_))))
                        (if (gx#stx-pair? _%$%tl5520955840%_)
                            (let ((_%$%e5521055843%_
                                   (gx#syntax-e _%$%tl5520955840%_)))
                              (let ((_%$%tl5521255850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5521055843%_)))
                                    (_%$%hd5521155847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5521055843%_))))
                                (if (gx#stx-pair? _%$%hd5521155847%_)
                                    (let ((_%$%e5521355853%_
                                           (gx#syntax-e _%$%hd5521155847%_)))
                                      (let ((_%$%tl5521555860%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5521355853%_)))
                                            (_%$%hd5521455857%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5521355853%_))))
                                        (if (gx#stx-pair? _%$%tl5521555860%_)
                                            (let ((_%$%e5521655863%_
                                                   (gx#syntax-e
                                                    _%$%tl5521555860%_)))
                                              (let ((_%$%tl5521855870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5521655863%_)))
                                                    (_%$%hd5521755867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5521655863%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5521855870%_)
                                                    (let ((_%$%e5521955873%_
                                                           (gx#syntax-e
                                                            _%$%tl5521855870%_)))
                                                      (let ((_%$%tl5522155880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5521955873%_)))
                    (_%$%hd5522055877%_
                     (let () (declare (not safe)) (##car _%$%e5521955873%_))))
                (if (gx#stx-null? _%$%tl5522155880%_)
                    (if (gx#stx-pair/null? _%$%tl5521255850%_)
                        (let ((_%__splice9623696237%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5521255850%_
                                '0)))
                          (let ((_%$%tl5522455886%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9623696237%_ '1)))
                                (_%$%target5522255883%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9623696237%_ '0))))
                            (if (gx#stx-null? _%$%tl5522455886%_)
                                (_%__match9629496295%_
                                 _%$%e5520755833%_
                                 _%$%hd5520855837%_
                                 _%$%tl5520955840%_
                                 _%$%e5521055843%_
                                 _%$%hd5521155847%_
                                 _%$%tl5521255850%_
                                 _%$%e5521355853%_
                                 _%$%hd5521455857%_
                                 _%$%tl5521555860%_
                                 _%$%e5521655863%_
                                 _%$%hd5521755867%_
                                 _%$%tl5521855870%_
                                 _%$%e5521955873%_
                                 _%$%hd5522055877%_
                                 _%$%tl5522155880%_
                                 _%__splice9623696237%_
                                 _%$%target5522255883%_
                                 _%$%tl5522455886%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5520155344%_)))))
                        (let () (declare (not safe)) (_%$%g5520155344%_)))
                    (let () (declare (not safe)) (_%$%g5520155344%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5520155344%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5520155344%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5520155344%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5520155344%_)))))
                    (let () (declare (not safe)) (_%$%g5520155344%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx56307%_)
        (letrec ((_%expand-body56310%_
                  (lambda (_%var57301%_
                           _%Interface57303%_
                           _%body57304%_
                           _%checked?57305%_)
                    (let* ((_%type57307%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx56307%_
                               _%Interface57303%_)))
                           (_%$%g5731057354%_
                            (lambda (_%$%g5731157350%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5731157350%_)))
                           (_%$%g5730957510%_
                            (lambda (_%$%g5731157358%_)
                              (if (gx#stx-pair? _%$%g5731157358%_)
                                  (let ((_%$%e5731957361%_
                                         (gx#syntax-e _%$%g5731157358%_)))
                                    (let ((_%$%hd5732057365%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5731957361%_)))
                                          (_%$%tl5732157368%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5731957361%_))))
                                      (if (gx#stx-pair? _%$%tl5732157368%_)
                                          (let ((_%$%e5732257371%_
                                                 (gx#syntax-e
                                                  _%$%tl5732157368%_)))
                                            (let ((_%$%hd5732357375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5732257371%_)))
                                                  (_%$%tl5732457378%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5732257371%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5732457378%_)
                                                  (let ((_%$%e5732557381%_
                                                         (gx#syntax-e
                                                          _%$%tl5732457378%_)))
                                                    (let ((_%$%hd5732657385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5732557381%_)))
                                                          (_%$%tl5732757388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5732557381%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5732757388%_)
                                                          (let ((_%$%e5732857391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5732757388%_)))
                    (let ((_%$%hd5732957395%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5732857391%_)))
                          (_%$%tl5733057398%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5732857391%_))))
                      (if (gx#stx-pair? _%$%tl5733057398%_)
                          (let ((_%$%e5733157401%_
                                 (gx#syntax-e _%$%tl5733057398%_)))
                            (let ((_%$%hd5733257405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5733157401%_)))
                                  (_%$%tl5733357408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5733157401%_))))
                              (if (gx#stx-pair? _%$%tl5733357408%_)
                                  (let ((_%$%e5733457411%_
                                         (gx#syntax-e _%$%tl5733357408%_)))
                                    (let ((_%$%hd5733557415%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5733457411%_)))
                                          (_%$%tl5733657418%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5733457411%_))))
                                      (if (gx#stx-pair? _%$%tl5733657418%_)
                                          (let ((_%$%e5733757421%_
                                                 (gx#syntax-e
                                                  _%$%tl5733657418%_)))
                                            (let ((_%$%hd5733857425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5733757421%_)))
                                                  (_%$%tl5733957428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5733757421%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5733857425%_)
                                                  (let ((_g102435_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5733857425%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g102436_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g102435_)
                           (##values-length _g102435_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102436_ 2)))
                    (error "Context expects 2 values" _g102436_)))
              (let ((_%$%target5734057431%_
                     (let () (declare (not safe)) (##values-ref _g102435_ 0)))
                    (_%$%tl5734257434%_
                     (let () (declare (not safe)) (##values-ref _g102435_ 1))))
                (if (gx#stx-null? _%$%tl5734257434%_)
                    (letrec ((_%$%loop5734357437%_
                              (lambda (_%$%hd5734157441%_ _%$%body5734757444%_)
                                (if (gx#stx-pair? _%$%hd5734157441%_)
                                    (let ((_%$%e5734457446%_
                                           (gx#syntax-e _%$%hd5734157441%_)))
                                      (let ((_%$%lp-hd5734557450%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5734457446%_)))
                                            (_%$%lp-tl5734657453%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5734457446%_))))
                                        (_%$%loop5734357437%_
                                         _%$%lp-tl5734657453%_
                                         (cons _%$%lp-hd5734557450%_
                                               _%$%body5734757444%_))))
                                    (let ((_%$%body5734857456%_
                                           (reverse _%$%body5734757444%_)))
                                      (if (gx#stx-null? _%$%tl5733957428%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5732957395%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5732657385%_ '()))
                                      (cons _%$%hd5732957395%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5732057365%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5732957395%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5732357375%_ '()))
                            (cons _%$%hd5733257405%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5733557415%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5750157504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5750257507%_)
                   (cons _%$%g5750157504%_ _%$%g5750257507%_))
                 '()
                 _%$%body5734857456%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5731057354%_
                                           _%$%g5731157358%_)))))))
                      (_%$%loop5734357437%_ _%$%target5734057431%_ '()))
                    (_%$%g5731057354%_ _%$%g5731157358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5731057354%_
                                                   _%$%g5731157358%_))))
                                          (_%$%g5731057354%_
                                           _%$%g5731157358%_))))
                                  (_%$%g5731057354%_ _%$%g5731157358%_))))
                          (_%$%g5731057354%_ _%$%g5731157358%_))))
                  (_%$%g5731057354%_ _%$%g5731157358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5731057354%_
                                                   _%$%g5731157358%_))))
                                          (_%$%g5731057354%_
                                           _%$%g5731157358%_))))
                                  (_%$%g5731057354%_ _%$%g5731157358%_)))))
                      (_%$%g5730957510%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type57307%_
                             (let ((__obj102232 _%type57307%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102232
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102232
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj102232
                                    'type-descriptor)))
                             _%var57301%_
                             _%checked?57305%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body57304%_)))))
                 (_%expand56312%_
                  (lambda (_%var57100%_
                           _%Interface57102%_
                           _%body57103%_
                           _%checked?57104%_
                           _%checked-methods?57105%_
                           _%maybe?57106%_)
                    (let* ((_%$%g5710857116%_
                            (lambda (_%$%g5710957112%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5710957112%_)))
                           (_%$%g5710757293%_
                            (lambda (_%$%g5710957120%_)
                              (if _%checked?57104%_
                                  (if _%maybe?57106%_
                                      (let* ((_%$%g5713557150%_
                                              (lambda (_%$%g5713657146%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5713657146%_)))
                                             (_%$%g5713457196%_
                                              (lambda (_%$%g5713657154%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5713657154%_)
                                                    (let ((_%$%e5713957157%_
                                                           (gx#syntax-e
                                                            _%$%g5713657154%_)))
                                                      (let ((_%$%hd5714057161%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5713957157%_)))
                    (_%$%tl5714157164%_
                     (let () (declare (not safe)) (##cdr _%$%e5713957157%_))))
                (if (gx#stx-pair? _%$%tl5714157164%_)
                    (let ((_%$%e5714257167%_ (gx#syntax-e _%$%tl5714157164%_)))
                      (let ((_%$%hd5714357171%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5714257167%_)))
                            (_%$%tl5714457174%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5714257167%_))))
                        (if (gx#stx-null? _%$%tl5714457174%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5714057161%_
                                              (cons (cons _%$%hd5714357171%_
                                                          (cons _%$%hd5714057161%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5714057161%_
                                                          (cons _%$%g5710957120%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5714057161%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5713557150%_ _%$%g5713657154%_))))
                    (_%$%g5713557150%_ _%$%g5713657154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5713557150%_
                                                     _%$%g5713657154%_)))))
                                        (_%$%g5713457196%_
                                         (list _%var57100%_
                                               _%Interface57102%_)))
                                      (let* ((_%$%g5720057215%_
                                              (lambda (_%$%g5720157211%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5720157211%_)))
                                             (_%$%g5719957259%_
                                              (lambda (_%$%g5720157219%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5720157219%_)
                                                    (let ((_%$%e5720457222%_
                                                           (gx#syntax-e
                                                            _%$%g5720157219%_)))
                                                      (let ((_%$%hd5720557226%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5720457222%_)))
                    (_%$%tl5720657229%_
                     (let () (declare (not safe)) (##cdr _%$%e5720457222%_))))
                (if (gx#stx-pair? _%$%tl5720657229%_)
                    (let ((_%$%e5720757232%_ (gx#syntax-e _%$%tl5720657229%_)))
                      (let ((_%$%hd5720857236%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5720757232%_)))
                            (_%$%tl5720957239%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5720757232%_))))
                        (if (gx#stx-null? _%$%tl5720957239%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5720557226%_
                                              (cons (cons _%$%hd5720857236%_
                                                          (cons _%$%hd5720557226%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5710957120%_ '())))
                            (_%$%g5720057215%_ _%$%g5720157219%_))))
                    (_%$%g5720057215%_ _%$%g5720157219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5720057215%_
                                                     _%$%g5720157219%_)))))
                                        (_%$%g5719957259%_
                                         (list _%var57100%_
                                               _%Interface57102%_))))
                                  (if _%maybe?57106%_
                                      (let* ((_%$%g5726357271%_
                                              (lambda (_%$%g5726457267%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5726457267%_)))
                                             (_%$%g5726257289%_
                                              (lambda (_%$%g5726457275%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g5726457275%_
                                                            (cons _%$%g5710957120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g5726457275%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5726257289%_ _%var57100%_))
                                      _%$%g5710957120%_)))))
                      (_%$%g5710757293%_
                       (_%expand-body56310%_
                        _%var57100%_
                        _%Interface57102%_
                        _%body57103%_
                        (let ((_%$e57297%_ _%checked?57104%_))
                          (if _%$e57297%_
                              _%$e57297%_
                              _%checked-methods?57105%_))))))))
          (let* ((_%__stx9647396474%_ _%stx56307%_)
                 (_%$%g5631856461%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9647396474%_))))
            (let ((_%__kont9647696477%_
                   (lambda (_%$%g5632057028%_
                            _%$%g5632157030%_
                            _%$%g5632257031%_
                            _%$%g5632357032%_)
                     (let* ((_%$%g5705757065%_
                             (lambda (_%$%g5705857061%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5705857061%_)))
                            (_%$%g5705657092%_
                             (lambda (_%$%g5705857069%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5632357032%_
                                                 (cons _%$%g5632257031%_
                                                       (cons _%$%g5705857069%_
                                                             '())))
                                           (foldr (lambda (_%$%g5708357086%_
                                                           _%$%g5708457089%_)
                                                    (cons _%$%g5708357086%_
                                                          _%$%g5708457089%_))
                                                  '()
                                                  _%$%g5632057028%_))))))
                       (_%$%g5705657092%_
                        (let ((__obj102233
                               (gx#syntax-local-value _%$%g5632157030%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj102233
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj102233
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj102233
                               'identifier)))))))
                  (_%__kont9648096481%_
                   (lambda (_%$%g5634856908%_
                            _%$%g5634956910%_
                            _%$%g5635056911%_)
                     (_%expand56312%_
                      _%$%g5635056911%_
                      _%$%g5634956910%_
                      (foldr (lambda (_%$%g5693456937%_ _%$%g5693556940%_)
                               (cons _%$%g5693456937%_ _%$%g5693556940%_))
                             '()
                             _%$%g5634856908%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9648496485%_
                   (lambda (_%$%g5637556788%_
                            _%$%g5637656790%_
                            _%$%g5637756791%_)
                     (_%expand56312%_
                      _%$%g5637756791%_
                      _%$%g5637656790%_
                      (foldr (lambda (_%$%g5681456817%_ _%$%g5681556820%_)
                               (cons _%$%g5681456817%_ _%$%g5681556820%_))
                             '()
                             _%$%g5637556788%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9648896489%_
                   (lambda (_%$%g5640256668%_
                            _%$%g5640356670%_
                            _%$%g5640456671%_)
                     (_%expand56312%_
                      _%$%g5640456671%_
                      _%$%g5640356670%_
                      (foldr (lambda (_%$%g5669456697%_ _%$%g5669556700%_)
                               (cons _%$%g5669456697%_ _%$%g5669556700%_))
                             '()
                             _%$%g5640256668%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9649296493%_
                   (lambda (_%$%g5642956546%_
                            _%$%g5643056548%_
                            _%$%g5643156549%_)
                     (_%expand56312%_
                      _%$%g5643156549%_
                      _%$%g5643056548%_
                      (foldr (lambda (_%$%g5657456577%_ _%$%g5657556580%_)
                               (cons _%$%g5657456577%_ _%$%g5657556580%_))
                             '()
                             _%$%g5642956546%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9671296713%_
                      (lambda (_%$%e5643256468%_
                               _%$%hd5643356472%_
                               _%$%tl5643456475%_
                               _%$%e5643556478%_
                               _%$%hd5643656482%_
                               _%$%tl5643756485%_
                               _%$%e5643856488%_
                               _%$%hd5643956492%_
                               _%$%tl5644056495%_
                               _%$%e5644156498%_
                               _%$%hd5644256502%_
                               _%$%tl5644356505%_
                               _%$%e5644456508%_
                               _%$%hd5644556512%_
                               _%$%tl5644656515%_
                               _%__splice9649496495%_
                               _%$%target5644756518%_
                               _%$%tl5644956521%_)
                        (letrec ((_%$%loop5645056524%_
                                  (lambda (_%$%hd5644856528%_
                                           _%$%body5645456531%_)
                                    (if (gx#stx-pair? _%$%hd5644856528%_)
                                        (let ((_%$%e5645156533%_
                                               (gx#syntax-e
                                                _%$%hd5644856528%_)))
                                          (let ((_%$%lp-tl5645356540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5645156533%_)))
                                                (_%$%lp-hd5645256537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5645156533%_))))
                                            (_%$%loop5645056524%_
                                             _%$%lp-tl5645356540%_
                                             (cons _%$%lp-hd5645256537%_
                                                   _%$%body5645456531%_))))
                                        (let ((_%$%body5645556543%_
                                               (reverse _%$%body5645456531%_)))
                                          (let ((_%$%g5642956546%_
                                                 _%$%body5645556543%_)
                                                (_%$%g5643056548%_
                                                 _%$%hd5644556512%_)
                                                (_%$%g5643156549%_
                                                 _%$%hd5643956492%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5643156549%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5643056548%_)))
                                                (_%__kont9649296493%_
                                                 _%$%g5642956546%_
                                                 _%$%g5643056548%_
                                                 _%$%g5643156549%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))))))))
                          (_%$%loop5645056524%_ _%$%target5644756518%_ '()))))
                     (_%__match9666896669%_
                      (lambda (_%$%e5640556590%_
                               _%$%hd5640656594%_
                               _%$%tl5640756597%_
                               _%$%e5640856600%_
                               _%$%hd5640956604%_
                               _%$%tl5641056607%_
                               _%$%e5641156610%_
                               _%$%hd5641256614%_
                               _%$%tl5641356617%_
                               _%$%e5641456620%_
                               _%$%hd5641556624%_
                               _%$%tl5641656627%_
                               _%$%e5641756630%_
                               _%$%hd5641856634%_
                               _%$%tl5641956637%_
                               _%__splice9649096491%_
                               _%$%target5642056640%_
                               _%$%tl5642256643%_)
                        (letrec ((_%$%loop5642356646%_
                                  (lambda (_%$%hd5642156650%_
                                           _%$%body5642756653%_)
                                    (if (gx#stx-pair? _%$%hd5642156650%_)
                                        (let ((_%$%e5642456655%_
                                               (gx#syntax-e
                                                _%$%hd5642156650%_)))
                                          (let ((_%$%lp-tl5642656662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5642456655%_)))
                                                (_%$%lp-hd5642556659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5642456655%_))))
                                            (_%$%loop5642356646%_
                                             _%$%lp-tl5642656662%_
                                             (cons _%$%lp-hd5642556659%_
                                                   _%$%body5642756653%_))))
                                        (let ((_%$%body5642856665%_
                                               (reverse _%$%body5642756653%_)))
                                          (let ((_%$%g5640256668%_
                                                 _%$%body5642856665%_)
                                                (_%$%g5640356670%_
                                                 _%$%hd5641856634%_)
                                                (_%$%g5640456671%_
                                                 _%$%hd5641256614%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5640456671%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5640356670%_)))
                                                (_%__kont9648896489%_
                                                 _%$%g5640256668%_
                                                 _%$%g5640356670%_
                                                 _%$%g5640456671%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))))))))
                          (_%$%loop5642356646%_ _%$%target5642056640%_ '()))))
                     (_%__match9662496625%_
                      (lambda (_%$%e5637856710%_
                               _%$%hd5637956714%_
                               _%$%tl5638056717%_
                               _%$%e5638156720%_
                               _%$%hd5638256724%_
                               _%$%tl5638356727%_
                               _%$%e5638456730%_
                               _%$%hd5638556734%_
                               _%$%tl5638656737%_
                               _%$%e5638756740%_
                               _%$%hd5638856744%_
                               _%$%tl5638956747%_
                               _%$%e5639056750%_
                               _%$%hd5639156754%_
                               _%$%tl5639256757%_
                               _%__splice9648696487%_
                               _%$%target5639356760%_
                               _%$%tl5639556763%_)
                        (letrec ((_%$%loop5639656766%_
                                  (lambda (_%$%hd5639456770%_
                                           _%$%body5640056773%_)
                                    (if (gx#stx-pair? _%$%hd5639456770%_)
                                        (let ((_%$%e5639756775%_
                                               (gx#syntax-e
                                                _%$%hd5639456770%_)))
                                          (let ((_%$%lp-tl5639956782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5639756775%_)))
                                                (_%$%lp-hd5639856779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5639756775%_))))
                                            (_%$%loop5639656766%_
                                             _%$%lp-tl5639956782%_
                                             (cons _%$%lp-hd5639856779%_
                                                   _%$%body5640056773%_))))
                                        (let ((_%$%body5640156785%_
                                               (reverse _%$%body5640056773%_)))
                                          (let ((_%$%g5637556788%_
                                                 _%$%body5640156785%_)
                                                (_%$%g5637656790%_
                                                 _%$%hd5639156754%_)
                                                (_%$%g5637756791%_
                                                 _%$%hd5638556734%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5637756791%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5637656790%_)))
                                                (_%__kont9648496485%_
                                                 _%$%g5637556788%_
                                                 _%$%g5637656790%_
                                                 _%$%g5637756791%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))))))))
                          (_%$%loop5639656766%_ _%$%target5639356760%_ '()))))
                     (_%__match9658096581%_
                      (lambda (_%$%e5635156830%_
                               _%$%hd5635256834%_
                               _%$%tl5635356837%_
                               _%$%e5635456840%_
                               _%$%hd5635556844%_
                               _%$%tl5635656847%_
                               _%$%e5635756850%_
                               _%$%hd5635856854%_
                               _%$%tl5635956857%_
                               _%$%e5636056860%_
                               _%$%hd5636156864%_
                               _%$%tl5636256867%_
                               _%$%e5636356870%_
                               _%$%hd5636456874%_
                               _%$%tl5636556877%_
                               _%__splice9648296483%_
                               _%$%target5636656880%_
                               _%$%tl5636856883%_)
                        (letrec ((_%$%loop5636956886%_
                                  (lambda (_%$%hd5636756890%_
                                           _%$%body5637356893%_)
                                    (if (gx#stx-pair? _%$%hd5636756890%_)
                                        (let ((_%$%e5637056895%_
                                               (gx#syntax-e
                                                _%$%hd5636756890%_)))
                                          (let ((_%$%lp-tl5637256902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5637056895%_)))
                                                (_%$%lp-hd5637156899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5637056895%_))))
                                            (_%$%loop5636956886%_
                                             _%$%lp-tl5637256902%_
                                             (cons _%$%lp-hd5637156899%_
                                                   _%$%body5637356893%_))))
                                        (let ((_%$%body5637456905%_
                                               (reverse _%$%body5637356893%_)))
                                          (let ((_%$%g5634856908%_
                                                 _%$%body5637456905%_)
                                                (_%$%g5634956910%_
                                                 _%$%hd5636456874%_)
                                                (_%$%g5635056911%_
                                                 _%$%hd5635856854%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5635056911%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5634956910%_)))
                                                (_%__kont9648096481%_
                                                 _%$%g5634856908%_
                                                 _%$%g5634956910%_
                                                 _%$%g5635056911%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))))))))
                          (_%$%loop5636956886%_ _%$%target5636656880%_ '()))))
                     (_%__match9656096561%_
                      (lambda (_%$%e5635156830%_
                               _%$%hd5635256834%_
                               _%$%tl5635356837%_
                               _%$%e5635456840%_
                               _%$%hd5635556844%_
                               _%$%tl5635656847%_
                               _%$%e5635756850%_
                               _%$%hd5635856854%_
                               _%$%tl5635956857%_
                               _%$%e5636056860%_
                               _%$%hd5636156864%_
                               _%$%tl5636256867%_)
                        (if (gx#identifier? _%$%hd5636156864%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g102437_|
                                 _%$%hd5636156864%_)
                                (if (gx#stx-pair? _%$%tl5636256867%_)
                                    (let ((_%$%e5636356870%_
                                           (gx#syntax-e _%$%tl5636256867%_)))
                                      (let ((_%$%tl5636556877%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5636356870%_)))
                                            (_%$%hd5636456874%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5636356870%_))))
                                        (if (gx#stx-null? _%$%tl5636556877%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5635656847%_)
                                                (let ((_%__splice9648296483%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5635656847%_
                                                        '0)))
                                                  (let ((_%$%tl5636856883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9648296483%_
                                                            '1)))
                                                        (_%$%target5636656880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9648296483%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5636856883%_)
                                                        (_%__match9658096581%_
                                                         _%$%e5635156830%_
                                                         _%$%hd5635256834%_
                                                         _%$%tl5635356837%_
                                                         _%$%e5635456840%_
                                                         _%$%hd5635556844%_
                                                         _%$%tl5635656847%_
                                                         _%$%e5635756850%_
                                                         _%$%hd5635856854%_
                                                         _%$%tl5635956857%_
                                                         _%$%e5636056860%_
                                                         _%$%hd5636156864%_
                                                         _%$%tl5636256867%_
                                                         _%$%e5636356870%_
                                                         _%$%hd5636456874%_
                                                         _%$%tl5636556877%_
                                                         _%__splice9648296483%_
                                                         _%$%target5636656880%_
                                                         _%$%tl5636856883%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5631856461%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5631856461%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5631856461%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g102438_|
                                     _%$%hd5636156864%_)
                                    (if (gx#stx-pair? _%$%tl5636256867%_)
                                        (let ((_%$%e5639056750%_
                                               (gx#syntax-e
                                                _%$%tl5636256867%_)))
                                          (let ((_%$%tl5639256757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5639056750%_)))
                                                (_%$%hd5639156754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5639056750%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5639256757%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5635656847%_)
                                                    (let ((_%__splice9648696487%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5635656847%_
                                                            '0)))
                                                      (let ((_%$%tl5639556763%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9648696487%_ '1)))
                    (_%$%target5639356760%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9648696487%_ '0))))
                (if (gx#stx-null? _%$%tl5639556763%_)
                    (_%__match9662496625%_
                     _%$%e5635156830%_
                     _%$%hd5635256834%_
                     _%$%tl5635356837%_
                     _%$%e5635456840%_
                     _%$%hd5635556844%_
                     _%$%tl5635656847%_
                     _%$%e5635756850%_
                     _%$%hd5635856854%_
                     _%$%tl5635956857%_
                     _%$%e5636056860%_
                     _%$%hd5636156864%_
                     _%$%tl5636256867%_
                     _%$%e5639056750%_
                     _%$%hd5639156754%_
                     _%$%tl5639256757%_
                     _%__splice9648696487%_
                     _%$%target5639356760%_
                     _%$%tl5639556763%_)
                    (let () (declare (not safe)) (_%$%g5631856461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5631856461%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5631856461%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g102439_|
                                         _%$%hd5636156864%_)
                                        (if (gx#stx-pair? _%$%tl5636256867%_)
                                            (let ((_%$%e5641756630%_
                                                   (gx#syntax-e
                                                    _%$%tl5636256867%_)))
                                              (let ((_%$%tl5641956637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5641756630%_)))
                                                    (_%$%hd5641856634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5641756630%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5641956637%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5635656847%_)
                                                        (let ((_%__splice9649096491%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5635656847%_
                                                                '0)))
                                                          (let ((_%$%tl5642256643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9649096491%_ '1)))
                        (_%$%target5642056640%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9649096491%_ '0))))
                    (if (gx#stx-null? _%$%tl5642256643%_)
                        (_%__match9666896669%_
                         _%$%e5635156830%_
                         _%$%hd5635256834%_
                         _%$%tl5635356837%_
                         _%$%e5635456840%_
                         _%$%hd5635556844%_
                         _%$%tl5635656847%_
                         _%$%e5635756850%_
                         _%$%hd5635856854%_
                         _%$%tl5635956857%_
                         _%$%e5636056860%_
                         _%$%hd5636156864%_
                         _%$%tl5636256867%_
                         _%$%e5641756630%_
                         _%$%hd5641856634%_
                         _%$%tl5641956637%_
                         _%__splice9649096491%_
                         _%$%target5642056640%_
                         _%$%tl5642256643%_)
                        (let () (declare (not safe)) (_%$%g5631856461%_)))))
                (let () (declare (not safe)) (_%$%g5631856461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5631856461%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5631856461%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g102440_|
                                             _%$%hd5636156864%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5636256867%_)
                                                (let ((_%$%e5644456508%_
                                                       (gx#syntax-e
                                                        _%$%tl5636256867%_)))
                                                  (let ((_%$%tl5644656515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5644456508%_)))
                                                        (_%$%hd5644556512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5644456508%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5644656515%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5635656847%_)
                                                            (let ((_%__splice9649496495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5635656847%_
                            '0)))
                      (let ((_%$%tl5644956521%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9649496495%_ '1)))
                            (_%$%target5644756518%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9649496495%_ '0))))
                        (if (gx#stx-null? _%$%tl5644956521%_)
                            (_%__match9671296713%_
                             _%$%e5635156830%_
                             _%$%hd5635256834%_
                             _%$%tl5635356837%_
                             _%$%e5635456840%_
                             _%$%hd5635556844%_
                             _%$%tl5635656847%_
                             _%$%e5635756850%_
                             _%$%hd5635856854%_
                             _%$%tl5635956857%_
                             _%$%e5636056860%_
                             _%$%hd5636156864%_
                             _%$%tl5636256867%_
                             _%$%e5644456508%_
                             _%$%hd5644556512%_
                             _%$%tl5644656515%_
                             _%__splice9649496495%_
                             _%$%target5644756518%_
                             _%$%tl5644956521%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5631856461%_)))))
                    (let () (declare (not safe)) (_%$%g5631856461%_)))
                (let () (declare (not safe)) (_%$%g5631856461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5631856461%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5631856461%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5631856461%_)))))
                     (_%__match9653696537%_
                      (lambda (_%$%e5632456950%_
                               _%$%hd5632556954%_
                               _%$%tl5632656957%_
                               _%$%e5632756960%_
                               _%$%hd5632856964%_
                               _%$%tl5632956967%_
                               _%$%e5633056970%_
                               _%$%hd5633156974%_
                               _%$%tl5633256977%_
                               _%$%e5633356980%_
                               _%$%hd5633456984%_
                               _%$%tl5633556987%_
                               _%$%e5633656990%_
                               _%$%hd5633756994%_
                               _%$%tl5633856997%_
                               _%__splice9647896479%_
                               _%$%target5633957000%_
                               _%$%tl5634157003%_)
                        (letrec ((_%$%loop5634257006%_
                                  (lambda (_%$%hd5634057010%_
                                           _%$%body5634657013%_)
                                    (if (gx#stx-pair? _%$%hd5634057010%_)
                                        (let ((_%$%e5634357015%_
                                               (gx#syntax-e
                                                _%$%hd5634057010%_)))
                                          (let ((_%$%lp-tl5634557022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5634357015%_)))
                                                (_%$%lp-hd5634457019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5634357015%_))))
                                            (_%$%loop5634257006%_
                                             _%$%lp-tl5634557022%_
                                             (cons _%$%lp-hd5634457019%_
                                                   _%$%body5634657013%_))))
                                        (let ((_%$%body5634757025%_
                                               (reverse _%$%body5634657013%_)))
                                          (let ((_%$%g5632057028%_
                                                 _%$%body5634757025%_)
                                                (_%$%g5632157030%_
                                                 _%$%hd5633756994%_)
                                                (_%$%g5632257031%_
                                                 _%$%hd5633456984%_)
                                                (_%$%g5632357032%_
                                                 _%$%hd5633156974%_))
                                            (if (let ((__tmp102441
                                                       (gx#syntax-local-value
                                                        _%$%g5632157030%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp102441))
                                                (_%__kont9647696477%_
                                                 _%$%g5632057028%_
                                                 _%$%g5632157030%_
                                                 _%$%g5632257031%_
                                                 _%$%g5632357032%_)
                                                (_%__match9656096561%_
                                                 _%$%e5632456950%_
                                                 _%$%hd5632556954%_
                                                 _%$%tl5632656957%_
                                                 _%$%e5632756960%_
                                                 _%$%hd5632856964%_
                                                 _%$%tl5632956967%_
                                                 _%$%e5633056970%_
                                                 _%$%hd5633156974%_
                                                 _%$%tl5633256977%_
                                                 _%$%e5633356980%_
                                                 _%$%hd5633456984%_
                                                 _%$%tl5633556987%_))))))))
                          (_%$%loop5634257006%_ _%$%target5633957000%_ '())))))
                (if (gx#stx-pair? _%__stx9647396474%_)
                    (let ((_%$%e5632456950%_
                           (gx#syntax-e _%__stx9647396474%_)))
                      (let ((_%$%tl5632656957%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5632456950%_)))
                            (_%$%hd5632556954%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5632456950%_))))
                        (if (gx#stx-pair? _%$%tl5632656957%_)
                            (let ((_%$%e5632756960%_
                                   (gx#syntax-e _%$%tl5632656957%_)))
                              (let ((_%$%tl5632956967%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5632756960%_)))
                                    (_%$%hd5632856964%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5632756960%_))))
                                (if (gx#stx-pair? _%$%hd5632856964%_)
                                    (let ((_%$%e5633056970%_
                                           (gx#syntax-e _%$%hd5632856964%_)))
                                      (let ((_%$%tl5633256977%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5633056970%_)))
                                            (_%$%hd5633156974%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5633056970%_))))
                                        (if (gx#stx-pair? _%$%tl5633256977%_)
                                            (let ((_%$%e5633356980%_
                                                   (gx#syntax-e
                                                    _%$%tl5633256977%_)))
                                              (let ((_%$%tl5633556987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5633356980%_)))
                                                    (_%$%hd5633456984%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5633356980%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5633556987%_)
                                                    (let ((_%$%e5633656990%_
                                                           (gx#syntax-e
                                                            _%$%tl5633556987%_)))
                                                      (let ((_%$%tl5633856997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5633656990%_)))
                    (_%$%hd5633756994%_
                     (let () (declare (not safe)) (##car _%$%e5633656990%_))))
                (if (gx#stx-null? _%$%tl5633856997%_)
                    (if (gx#stx-pair/null? _%$%tl5632956967%_)
                        (let ((_%__splice9647896479%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5632956967%_
                                '0)))
                          (let ((_%$%tl5634157003%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9647896479%_ '1)))
                                (_%$%target5633957000%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9647896479%_ '0))))
                            (if (gx#stx-null? _%$%tl5634157003%_)
                                (_%__match9653696537%_
                                 _%$%e5632456950%_
                                 _%$%hd5632556954%_
                                 _%$%tl5632656957%_
                                 _%$%e5632756960%_
                                 _%$%hd5632856964%_
                                 _%$%tl5632956967%_
                                 _%$%e5633056970%_
                                 _%$%hd5633156974%_
                                 _%$%tl5633256977%_
                                 _%$%e5633356980%_
                                 _%$%hd5633456984%_
                                 _%$%tl5633556987%_
                                 _%$%e5633656990%_
                                 _%$%hd5633756994%_
                                 _%$%tl5633856997%_
                                 _%__splice9647896479%_
                                 _%$%target5633957000%_
                                 _%$%tl5634157003%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5631856461%_)))))
                        (let () (declare (not safe)) (_%$%g5631856461%_)))
                    (let () (declare (not safe)) (_%$%g5631856461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5631856461%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5631856461%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5631856461%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5631856461%_)))))
                    (let () (declare (not safe)) (_%$%g5631856461%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx57520%_)
        (let* ((_%__stx9671596716%_ _%stx57520%_)
               (_%$%g5752557585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9671596716%_))))
          (let ((_%__kont9671896719%_
                 (lambda (_%$%g5752758141%_ _%$%g5752858143%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g5752858143%_ '()))
                               (foldr (lambda (_%$%g5815958162%_
                                               _%$%g5816058165%_)
                                        (cons _%$%g5815958162%_
                                              _%$%g5816058165%_))
                                      '()
                                      _%$%g5752758141%_)))))
                (_%__kont9672296723%_
                 (lambda (_%$%g5754457729%_ _%$%g5754557731%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g5754557731%_)
                       (let* ((_%$%g5775157758%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx57520%_
                                _%$%g5754557731%_))
                              (_%$%E5775357764%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g5775157758%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K5775458062%_
                               (lambda (_%parts57768%_ _%var57770%_)
                                 (let ((_%$e57772%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var57770%_))))
                                   (if _%$e57772%_
                                       (let _%loop57779%_ ((_%parts57782%_
                                                            _%parts57768%_)
                                                           (_%type57784%_
                                                            (##direct-structure-ref
                                                             _%$e57772%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object57785%_
                                                            _%var57770%_)
                                                           (_%checked-method?57786%_
                                                            (##direct-structure-ref
                                                             _%$e57772%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?57787%_
                                                            '#f))
                                         (let* ((_%$%parts5778857796%_
                                                 _%parts57782%_)
                                                (_%$%else5779057857%_
                                                 (lambda ()
                                                   (let* ((_%$%g5780857816%_
                                                           (lambda (_%$%g5780957812%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g5780957812%_)))
                                                          (_%$%g5780757853%_
                                                           (lambda (_%$%g5780957820%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g5780957820%_
                                 (foldr (lambda (_%$%g5784457847%_
                                                 _%$%g5784557850%_)
                                          (cons _%$%g5784457847%_
                                                _%$%g5784557850%_))
                                        '()
                                        _%$%g5754457729%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g5780757853%_
                                                      _%object57785%_))))
                                                (_%$%K5779258036%_
                                                 (lambda (_%rest57861%_
                                                          _%part57863%_)
                                                   (if (and (not _%nil-check?57787%_)
                                                            (let ((__tmp102442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part57863%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp102442)))
               (let ((_%str57867%_ (symbol->string _%part57863%_)))
                 (_%loop57779%_
                  (cons (let ((__tmp102443
                               (substring
                                _%str57867%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str57867%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp102443))
                        _%rest57861%_)
                  _%type57784%_
                  _%object57785%_
                  _%checked-method?57786%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type57784%_))
                   (let* ((_%$%g5787257887%_
                           (lambda (_%$%g5787357883%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5787357883%_)))
                          (_%$%g5787157956%_
                           (lambda (_%$%g5787357891%_)
                             (if (gx#stx-pair? _%$%g5787357891%_)
                                 (let ((_%$%e5787657894%_
                                        (gx#syntax-e _%$%g5787357891%_)))
                                   (let ((_%$%hd5787757898%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5787657894%_)))
                                         (_%$%tl5787857901%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5787657894%_))))
                                     (if (gx#stx-pair? _%$%tl5787857901%_)
                                         (let ((_%$%e5787957904%_
                                                (gx#syntax-e
                                                 _%$%tl5787857901%_)))
                                           (let ((_%$%hd5788057908%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5787957904%_)))
                                                 (_%$%tl5788157911%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5787957904%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5788157911%_)
                                                 (if (null? _%rest57861%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd5788057908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd5787757898%_ '()))
                         (foldr (lambda (_%$%g5793557938%_ _%$%g5793657941%_)
                                  (cons _%$%g5793557938%_ _%$%g5793657941%_))
                                '()
                                _%$%g5754457729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e57944%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type57784%_
                                                             _%part57863%_)))
                                                       (if _%$e57944%_
                                                           (let ((_%slot-type57951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx57520%_
                             _%$e57944%_))))
                     (_%loop57779%_
                      _%rest57861%_
                      _%slot-type57951%_
                      (cons _%$%hd5788057908%_ (cons _%$%hd5787757898%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type57784%_
                       _%part57863%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference value; unknown type for slot"
                    _%stx57520%_
                    _%$%g5754557731%_
                    _%part57863%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5787257887%_
                                                  _%$%g5787357891%_))))
                                         (_%$%g5787257887%_
                                          _%$%g5787357891%_))))
                                 (_%$%g5787257887%_ _%$%g5787357891%_)))))
                     (_%$%g5787157956%_
                      (list (if _%nil-check?57787%_
                                (cons 'check-nil! (cons _%object57785%_ '()))
                                _%object57785%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx57520%_
                             _%type57784%_
                             _%part57863%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type57784%_))
                       (if (null? _%rest57861%_)
                           (let* ((_%$%g5796257977%_
                                   (lambda (_%$%g5796357973%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g5796357973%_)))
                                  (_%$%g5796158030%_
                                   (lambda (_%$%g5796357981%_)
                                     (if (gx#stx-pair? _%$%g5796357981%_)
                                         (let ((_%$%e5796657984%_
                                                (gx#syntax-e
                                                 _%$%g5796357981%_)))
                                           (let ((_%$%hd5796757988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5796657984%_)))
                                                 (_%$%tl5796857991%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5796657984%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl5796857991%_)
                                                 (let ((_%$%e5796957994%_
                                                        (gx#syntax-e
                                                         _%$%tl5796857991%_)))
                                                   (let ((_%$%hd5797057998%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5796957994%_)))
                                                         (_%$%tl5797158001%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5796957994%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5797158001%_)
                                                         (cons _%$%hd5797057998%_
                                                               (cons _%$%hd5796757988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g5802158024%_
                                             _%$%g5802258027%_)
                                      (cons _%$%g5802158024%_
                                            _%$%g5802258027%_))
                                    '()
                                    _%$%g5754457729%_)))
                 (_%$%g5796257977%_ _%$%g5796357981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5796257977%_
                                                  _%$%g5796357981%_))))
                                         (_%$%g5796257977%_
                                          _%$%g5796357981%_)))))
                             (_%$%g5796158030%_
                              (list (if _%nil-check?57787%_
                                        (cons 'check-nil!
                                              (cons _%object57785%_ '()))
                                        _%object57785%_)
                                    (gx#stx-identifier
                                     _%$%g5754557731%_
                                     (if _%checked-method?57786%_ '"" '"&")
                                     (let ((__obj102234 _%type57784%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj102234
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj102234
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj102234
                                            'name)))
                                     '"-"
                                     _%part57863%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx57520%_
                            _%$%g5754557731%_
                            _%part57863%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx57520%_
                        _%type57784%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts5778857796%_)
                                               (let ((_%$%hd5779358040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts5778857796%_)))
                                                     (_%$%tl5779458043%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts5778857796%_))))
                                                 (let* ((_%part58046%_
                                                         _%$%hd5779358040%_)
                                                        (_%rest58049%_
                                                         _%$%tl5779458043%_))
                                                   (_%$%K5779258036%_
                                                    _%rest58049%_
                                                    _%part58046%_)))
                                               (_%$%else5779057857%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g5754557731%_
                                                   (foldr (lambda (_%$%g5805358056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g5805458059%_)
                    (cons _%$%g5805358056%_ _%$%g5805458059%_))
                  '()
                  _%$%g5754457729%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g5775157758%_)
                             (let ((_%$%hd5775558066%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g5775157758%_)))
                                   (_%$%tl5775658069%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g5775157758%_))))
                               (let* ((_%var58072%_ _%$%hd5775558066%_)
                                      (_%parts58075%_ _%$%tl5775658069%_))
                                 (_%$%K5775458062%_
                                  _%parts58075%_
                                  _%var58072%_)))
                             (_%$%E5775357764%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g5754557731%_
                                   (foldr (lambda (_%$%g5807758080%_
                                                   _%$%g5807858083%_)
                                            (cons _%$%g5807758080%_
                                                  _%$%g5807858083%_))
                                          '()
                                          _%$%g5754457729%_))))))
                (_%__kont9672696727%_
                 (lambda (_%$%g5756757630%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g5764557648%_ _%$%g5764657651%_)
                                  (cons _%$%g5764557648%_ _%$%g5764657651%_))
                                '()
                                _%$%g5756757630%_)))))
            (let* ((_%__match9680296803%_
                    (lambda (_%$%e5756857592%_
                             _%$%hd5756957596%_
                             _%$%tl5757057599%_
                             _%__splice9672896729%_
                             _%$%target5757157602%_
                             _%$%tl5757357605%_)
                      (letrec ((_%$%loop5757457608%_
                                (lambda (_%$%hd5757257612%_
                                         _%$%arg5757857615%_)
                                  (if (gx#stx-pair? _%$%hd5757257612%_)
                                      (let ((_%$%e5757557617%_
                                             (gx#syntax-e _%$%hd5757257612%_)))
                                        (let ((_%$%lp-tl5757757624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5757557617%_)))
                                              (_%$%lp-hd5757657621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5757557617%_))))
                                          (_%$%loop5757457608%_
                                           _%$%lp-tl5757757624%_
                                           (cons _%$%lp-hd5757657621%_
                                                 _%$%arg5757857615%_))))
                                      (let ((_%$%arg5757957627%_
                                             (reverse _%$%arg5757857615%_)))
                                        (_%__kont9672696727%_
                                         _%$%arg5757957627%_))))))
                        (_%$%loop5757457608%_ _%$%target5757157602%_ '()))))
                   (_%__match9678896789%_
                    (lambda (_%$%e5754657661%_
                             _%$%hd5754757665%_
                             _%$%tl5754857668%_
                             _%$%e5754957671%_
                             _%$%hd5755057675%_
                             _%$%tl5755157678%_
                             _%$%e5755257681%_
                             _%$%hd5755357685%_
                             _%$%tl5755457688%_
                             _%$%e5755557691%_
                             _%$%hd5755657695%_
                             _%$%tl5755757698%_
                             _%__splice9672496725%_
                             _%$%target5755857701%_
                             _%$%tl5756057704%_)
                      (letrec ((_%$%loop5756157707%_
                                (lambda (_%$%hd5755957711%_
                                         _%$%rand5756557714%_)
                                  (if (gx#stx-pair? _%$%hd5755957711%_)
                                      (let ((_%$%e5756257716%_
                                             (gx#syntax-e _%$%hd5755957711%_)))
                                        (let ((_%$%lp-tl5756457723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5756257716%_)))
                                              (_%$%lp-hd5756357720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5756257716%_))))
                                          (_%$%loop5756157707%_
                                           _%$%lp-tl5756457723%_
                                           (cons _%$%lp-hd5756357720%_
                                                 _%$%rand5756557714%_))))
                                      (let ((_%$%rand5756657726%_
                                             (reverse _%$%rand5756557714%_)))
                                        (_%__kont9672296723%_
                                         _%$%rand5756657726%_
                                         _%$%hd5755657695%_))))))
                        (_%$%loop5756157707%_ _%$%target5755857701%_ '()))))
                   (_%__match9676296763%_
                    (lambda (_%$%e5754657661%_
                             _%$%hd5754757665%_
                             _%$%tl5754857668%_
                             _%$%e5754957671%_
                             _%$%hd5755057675%_
                             _%$%tl5755157678%_)
                      (if (gx#stx-pair? _%$%hd5755057675%_)
                          (let ((_%$%e5755257681%_
                                 (gx#syntax-e _%$%hd5755057675%_)))
                            (let ((_%$%tl5755457688%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5755257681%_)))
                                  (_%$%hd5755357685%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5755257681%_))))
                              (if (gx#identifier? _%$%hd5755357685%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g102444_|
                                       _%$%hd5755357685%_)
                                      (if (gx#stx-pair? _%$%tl5755457688%_)
                                          (let ((_%$%e5755557691%_
                                                 (gx#syntax-e
                                                  _%$%tl5755457688%_)))
                                            (let ((_%$%tl5755757698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5755557691%_)))
                                                  (_%$%hd5755657695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5755557691%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5755757698%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5755157678%_)
                                                      (let ((_%__splice9672496725%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5755157678%_
                                                              '0)))
                                                        (let ((_%$%tl5756057704%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9672496725%_ '1)))
                      (_%$%target5755857701%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9672496725%_ '0))))
                  (if (gx#stx-null? _%$%tl5756057704%_)
                      (_%__match9678896789%_
                       _%$%e5754657661%_
                       _%$%hd5754757665%_
                       _%$%tl5754857668%_
                       _%$%e5754957671%_
                       _%$%hd5755057675%_
                       _%$%tl5755157678%_
                       _%$%e5755257681%_
                       _%$%hd5755357685%_
                       _%$%tl5755457688%_
                       _%$%e5755557691%_
                       _%$%hd5755657695%_
                       _%$%tl5755757698%_
                       _%__splice9672496725%_
                       _%$%target5755857701%_
                       _%$%tl5756057704%_)
                      (if (gx#stx-pair/null? _%$%tl5754857668%_)
                          (let ((_%__splice9672896729%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5754857668%_
                                  '0)))
                            (let ((_%$%tl5757357605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9672896729%_ '1)))
                                  (_%$%target5757157602%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9672896729%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5757357605%_)
                                  (_%__match9680296803%_
                                   _%$%e5754657661%_
                                   _%$%hd5754757665%_
                                   _%$%tl5754857668%_
                                   _%__splice9672896729%_
                                   _%$%target5757157602%_
                                   _%$%tl5757357605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5752557585%_)))))
                          (let () (declare (not safe)) (_%$%g5752557585%_))))))
              (if (gx#stx-pair/null? _%$%tl5754857668%_)
                  (let ((_%__splice9672896729%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5754857668%_
                          '0)))
                    (let ((_%$%tl5757357605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '1)))
                          (_%$%target5757157602%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '0))))
                      (if (gx#stx-null? _%$%tl5757357605%_)
                          (_%__match9680296803%_
                           _%$%e5754657661%_
                           _%$%hd5754757665%_
                           _%$%tl5754857668%_
                           _%__splice9672896729%_
                           _%$%target5757157602%_
                           _%$%tl5757357605%_)
                          (let () (declare (not safe)) (_%$%g5752557585%_)))))
                  (let () (declare (not safe)) (_%$%g5752557585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5754857668%_)
                                                      (let ((_%__splice9672896729%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5754857668%_
                                                              '0)))
                                                        (let ((_%$%tl5757357605%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9672896729%_ '1)))
                      (_%$%target5757157602%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9672896729%_ '0))))
                  (if (gx#stx-null? _%$%tl5757357605%_)
                      (_%__match9680296803%_
                       _%$%e5754657661%_
                       _%$%hd5754757665%_
                       _%$%tl5754857668%_
                       _%__splice9672896729%_
                       _%$%target5757157602%_
                       _%$%tl5757357605%_)
                      (let () (declare (not safe)) (_%$%g5752557585%_)))))
              (let () (declare (not safe)) (_%$%g5752557585%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5754857668%_)
                                              (let ((_%__splice9672896729%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5754857668%_
                                                      '0)))
                                                (let ((_%$%tl5757357605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9672896729%_
                                                          '1)))
                                                      (_%$%target5757157602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9672896729%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5757357605%_)
                                                      (_%__match9680296803%_
                                                       _%$%e5754657661%_
                                                       _%$%hd5754757665%_
                                                       _%$%tl5754857668%_
                                                       _%__splice9672896729%_
                                                       _%$%target5757157602%_
                                                       _%$%tl5757357605%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5752557585%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5752557585%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5754857668%_)
                                          (let ((_%__splice9672896729%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5754857668%_
                                                  '0)))
                                            (let ((_%$%tl5757357605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9672896729%_
                                                      '1)))
                                                  (_%$%target5757157602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9672896729%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5757357605%_)
                                                  (_%__match9680296803%_
                                                   _%$%e5754657661%_
                                                   _%$%hd5754757665%_
                                                   _%$%tl5754857668%_
                                                   _%__splice9672896729%_
                                                   _%$%target5757157602%_
                                                   _%$%tl5757357605%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752557585%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5752557585%_))))
                                  (if (gx#stx-pair/null? _%$%tl5754857668%_)
                                      (let ((_%__splice9672896729%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5754857668%_
                                              '0)))
                                        (let ((_%$%tl5757357605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9672896729%_
                                                  '1)))
                                              (_%$%target5757157602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9672896729%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5757357605%_)
                                              (_%__match9680296803%_
                                               _%$%e5754657661%_
                                               _%$%hd5754757665%_
                                               _%$%tl5754857668%_
                                               _%__splice9672896729%_
                                               _%$%target5757157602%_
                                               _%$%tl5757357605%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5752557585%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752557585%_))))))
                          (if (gx#stx-pair/null? _%$%tl5754857668%_)
                              (let ((_%__splice9672896729%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5754857668%_
                                      '0)))
                                (let ((_%$%tl5757357605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '1)))
                                      (_%$%target5757157602%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757357605%_)
                                      (_%__match9680296803%_
                                       _%$%e5754657661%_
                                       _%$%hd5754757665%_
                                       _%$%tl5754857668%_
                                       _%__splice9672896729%_
                                       _%$%target5757157602%_
                                       _%$%tl5757357605%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752557585%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752557585%_))))))
                   (_%__match9675096751%_
                    (lambda (_%$%e5752958093%_
                             _%$%hd5753058097%_
                             _%$%tl5753158100%_
                             _%$%e5753258103%_
                             _%$%hd5753358107%_
                             _%$%tl5753458110%_
                             _%__splice9672096721%_
                             _%$%target5753558113%_
                             _%$%tl5753758116%_)
                      (letrec ((_%$%loop5753858119%_
                                (lambda (_%$%hd5753658123%_
                                         _%$%rand5754258126%_)
                                  (if (gx#stx-pair? _%$%hd5753658123%_)
                                      (let ((_%$%e5753958128%_
                                             (gx#syntax-e _%$%hd5753658123%_)))
                                        (let ((_%$%lp-tl5754158135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5753958128%_)))
                                              (_%$%lp-hd5754058132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5753958128%_))))
                                          (_%$%loop5753858119%_
                                           _%$%lp-tl5754158135%_
                                           (cons _%$%lp-hd5754058132%_
                                                 _%$%rand5754258126%_))))
                                      (let ((_%$%rand5754358138%_
                                             (reverse _%$%rand5754258126%_)))
                                        (let ((_%$%g5752758141%_
                                               _%$%rand5754358138%_)
                                              (_%$%g5752858143%_
                                               _%$%hd5753358107%_))
                                          (if (gx#identifier?
                                               _%$%g5752858143%_)
                                              (_%__kont9671896719%_
                                               _%$%g5752758141%_
                                               _%$%g5752858143%_)
                                              (_%__match9676296763%_
                                               _%$%e5752958093%_
                                               _%$%hd5753058097%_
                                               _%$%tl5753158100%_
                                               _%$%e5753258103%_
                                               _%$%hd5753358107%_
                                               _%$%tl5753458110%_))))))))
                        (_%$%loop5753858119%_ _%$%target5753558113%_ '())))))
              (if (gx#stx-pair? _%__stx9671596716%_)
                  (let ((_%$%e5752958093%_ (gx#syntax-e _%__stx9671596716%_)))
                    (let ((_%$%tl5753158100%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5752958093%_)))
                          (_%$%hd5753058097%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5752958093%_))))
                      (if (gx#stx-pair? _%$%tl5753158100%_)
                          (let ((_%$%e5753258103%_
                                 (gx#syntax-e _%$%tl5753158100%_)))
                            (let ((_%$%tl5753458110%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5753258103%_)))
                                  (_%$%hd5753358107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5753258103%_))))
                              (if (gx#stx-pair/null? _%$%tl5753458110%_)
                                  (let ((_%__splice9672096721%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5753458110%_
                                          '0)))
                                    (let ((_%$%tl5753758116%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9672096721%_
                                              '1)))
                                          (_%$%target5753558113%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9672096721%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5753758116%_)
                                          (_%__match9675096751%_
                                           _%$%e5752958093%_
                                           _%$%hd5753058097%_
                                           _%$%tl5753158100%_
                                           _%$%e5753258103%_
                                           _%$%hd5753358107%_
                                           _%$%tl5753458110%_
                                           _%__splice9672096721%_
                                           _%$%target5753558113%_
                                           _%$%tl5753758116%_)
                                          (if (gx#stx-pair? _%$%hd5753358107%_)
                                              (let ((_%$%e5755257681%_
                                                     (gx#syntax-e
                                                      _%$%hd5753358107%_)))
                                                (let ((_%$%tl5755457688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5755257681%_)))
                                                      (_%$%hd5755357685%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5755257681%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5755357685%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g102444_|
                                                           _%$%hd5755357685%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5755457688%_)
                                                              (let ((_%$%e5755557691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5755457688%_)))
                        (let ((_%$%tl5755757698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5755557691%_)))
                              (_%$%hd5755657695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5755557691%_))))
                          (if (gx#stx-pair/null? _%$%tl5753158100%_)
                              (let ((_%__splice9672896729%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5753158100%_
                                      '0)))
                                (let ((_%$%tl5757357605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '1)))
                                      (_%$%target5757157602%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757357605%_)
                                      (_%__match9680296803%_
                                       _%$%e5752958093%_
                                       _%$%hd5753058097%_
                                       _%$%tl5753158100%_
                                       _%__splice9672896729%_
                                       _%$%target5757157602%_
                                       _%$%tl5757357605%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752557585%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752557585%_)))))
                      (if (gx#stx-pair/null? _%$%tl5753158100%_)
                          (let ((_%__splice9672896729%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5753158100%_
                                  '0)))
                            (let ((_%$%tl5757357605%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9672896729%_ '1)))
                                  (_%$%target5757157602%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9672896729%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5757357605%_)
                                  (_%__match9680296803%_
                                   _%$%e5752958093%_
                                   _%$%hd5753058097%_
                                   _%$%tl5753158100%_
                                   _%__splice9672896729%_
                                   _%$%target5757157602%_
                                   _%$%tl5757357605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5752557585%_)))))
                          (let () (declare (not safe)) (_%$%g5752557585%_))))
                  (if (gx#stx-pair/null? _%$%tl5753158100%_)
                      (let ((_%__splice9672896729%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5753158100%_
                              '0)))
                        (let ((_%$%tl5757357605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9672896729%_ '1)))
                              (_%$%target5757157602%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9672896729%_ '0))))
                          (if (gx#stx-null? _%$%tl5757357605%_)
                              (_%__match9680296803%_
                               _%$%e5752958093%_
                               _%$%hd5753058097%_
                               _%$%tl5753158100%_
                               _%__splice9672896729%_
                               _%$%target5757157602%_
                               _%$%tl5757357605%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5752557585%_)))))
                      (let () (declare (not safe)) (_%$%g5752557585%_))))
              (if (gx#stx-pair/null? _%$%tl5753158100%_)
                  (let ((_%__splice9672896729%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5753158100%_
                          '0)))
                    (let ((_%$%tl5757357605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '1)))
                          (_%$%target5757157602%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '0))))
                      (if (gx#stx-null? _%$%tl5757357605%_)
                          (_%__match9680296803%_
                           _%$%e5752958093%_
                           _%$%hd5753058097%_
                           _%$%tl5753158100%_
                           _%__splice9672896729%_
                           _%$%target5757157602%_
                           _%$%tl5757357605%_)
                          (let () (declare (not safe)) (_%$%g5752557585%_)))))
                  (let () (declare (not safe)) (_%$%g5752557585%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5753158100%_)
                                                  (let ((_%__splice9672896729%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5753158100%_
                                                          '0)))
                                                    (let ((_%$%tl5757357605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9672896729%_
                                                              '1)))
                                                          (_%$%target5757157602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9672896729%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5757357605%_)
                                                          (_%__match9680296803%_
                                                           _%$%e5752958093%_
                                                           _%$%hd5753058097%_
                                                           _%$%tl5753158100%_
                                                           _%__splice9672896729%_
                                                           _%$%target5757157602%_
                                                           _%$%tl5757357605%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5752557585%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752557585%_)))))))
                                  (if (gx#stx-pair? _%$%hd5753358107%_)
                                      (let ((_%$%e5755257681%_
                                             (gx#syntax-e _%$%hd5753358107%_)))
                                        (let ((_%$%tl5755457688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5755257681%_)))
                                              (_%$%hd5755357685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5755257681%_))))
                                          (if (gx#identifier?
                                               _%$%hd5755357685%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g102444_|
                                                   _%$%hd5755357685%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5755457688%_)
                                                      (let ((_%$%e5755557691%_
                                                             (gx#syntax-e
                                                              _%$%tl5755457688%_)))
                                                        (let ((_%$%tl5755757698%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5755557691%_)))
                      (_%$%hd5755657695%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5755557691%_))))
                  (if (gx#stx-pair/null? _%$%tl5753158100%_)
                      (let ((_%__splice9672896729%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5753158100%_
                              '0)))
                        (let ((_%$%tl5757357605%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9672896729%_ '1)))
                              (_%$%target5757157602%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9672896729%_ '0))))
                          (if (gx#stx-null? _%$%tl5757357605%_)
                              (_%__match9680296803%_
                               _%$%e5752958093%_
                               _%$%hd5753058097%_
                               _%$%tl5753158100%_
                               _%__splice9672896729%_
                               _%$%target5757157602%_
                               _%$%tl5757357605%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5752557585%_)))))
                      (let () (declare (not safe)) (_%$%g5752557585%_)))))
              (if (gx#stx-pair/null? _%$%tl5753158100%_)
                  (let ((_%__splice9672896729%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5753158100%_
                          '0)))
                    (let ((_%$%tl5757357605%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '1)))
                          (_%$%target5757157602%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9672896729%_ '0))))
                      (if (gx#stx-null? _%$%tl5757357605%_)
                          (_%__match9680296803%_
                           _%$%e5752958093%_
                           _%$%hd5753058097%_
                           _%$%tl5753158100%_
                           _%__splice9672896729%_
                           _%$%target5757157602%_
                           _%$%tl5757357605%_)
                          (let () (declare (not safe)) (_%$%g5752557585%_)))))
                  (let () (declare (not safe)) (_%$%g5752557585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5753158100%_)
                                                      (let ((_%__splice9672896729%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5753158100%_
                                                              '0)))
                                                        (let ((_%$%tl5757357605%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9672896729%_ '1)))
                      (_%$%target5757157602%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9672896729%_ '0))))
                  (if (gx#stx-null? _%$%tl5757357605%_)
                      (_%__match9680296803%_
                       _%$%e5752958093%_
                       _%$%hd5753058097%_
                       _%$%tl5753158100%_
                       _%__splice9672896729%_
                       _%$%target5757157602%_
                       _%$%tl5757357605%_)
                      (let () (declare (not safe)) (_%$%g5752557585%_)))))
              (let () (declare (not safe)) (_%$%g5752557585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5753158100%_)
                                                  (let ((_%__splice9672896729%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5753158100%_
                                                          '0)))
                                                    (let ((_%$%tl5757357605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9672896729%_
                                                              '1)))
                                                          (_%$%target5757157602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9672896729%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5757357605%_)
                                                          (_%__match9680296803%_
                                                           _%$%e5752958093%_
                                                           _%$%hd5753058097%_
                                                           _%$%tl5753158100%_
                                                           _%__splice9672896729%_
                                                           _%$%target5757157602%_
                                                           _%$%tl5757357605%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5752557585%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752557585%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5753158100%_)
                                          (let ((_%__splice9672896729%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5753158100%_
                                                  '0)))
                                            (let ((_%$%tl5757357605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9672896729%_
                                                      '1)))
                                                  (_%$%target5757157602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9672896729%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5757357605%_)
                                                  (_%__match9680296803%_
                                                   _%$%e5752958093%_
                                                   _%$%hd5753058097%_
                                                   _%$%tl5753158100%_
                                                   _%__splice9672896729%_
                                                   _%$%target5757157602%_
                                                   _%$%tl5757357605%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5752557585%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5752557585%_)))))))
                          (if (gx#stx-pair/null? _%$%tl5753158100%_)
                              (let ((_%__splice9672896729%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5753158100%_
                                      '0)))
                                (let ((_%$%tl5757357605%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '1)))
                                      (_%$%target5757157602%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9672896729%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5757357605%_)
                                      (_%__match9680296803%_
                                       _%$%e5752958093%_
                                       _%$%hd5753058097%_
                                       _%$%tl5753158100%_
                                       _%__splice9672896729%_
                                       _%$%target5757157602%_
                                       _%$%tl5757357605%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5752557585%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5752557585%_))))))
                  (let () (declare (not safe)) (_%$%g5752557585%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx58175%_)
        (let* ((_%__stx9680596806%_ _%stx58175%_)
               (_%$%g5817958200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9680596806%_))))
          (let ((_%__kont9680896809%_
                 (lambda (_%$%g5818158268%_)
                   (let* ((_%$%g5828058287%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58175%_
                            _%$%g5818158268%_))
                          (_%$%E5828258293%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5828058287%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5828358509%_
                           (lambda (_%parts58297%_ _%var58299%_)
                             (let ((_%$e58301%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58299%_))))
                               (if _%$e58301%_
                                   (let _%loop58308%_ ((_%parts58311%_
                                                        _%parts58297%_)
                                                       (_%type58313%_
                                                        (##direct-structure-ref
                                                         _%$e58301%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58314%_
                                                        _%var58299%_)
                                                       (_%nil-check?58315%_
                                                        '#f))
                                     (let* ((_%$%parts5831658324%_
                                             _%parts58311%_)
                                            (_%$%else5831858336%_
                                             (lambda () _%object58314%_))
                                            (_%$%K5832058491%_
                                             (lambda (_%rest58340%_
                                                      _%part58342%_)
                                               (if (and (not _%nil-check?58315%_)
                                                        (let ((__tmp102445
                                                               (symbol->string
                                                                _%part58342%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102445)))
                                                   (let ((_%str58346%_
                                                          (symbol->string
                                                           _%part58342%_)))
                                                     (_%loop58308%_
                                                      (cons (let ((__tmp102446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58346%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58346%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102446))
                    _%rest58340%_)
              _%type58313%_
              _%object58314%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58313%_))
                                                       (let* ((_%$%g5835158366%_
                                                               (lambda (_%$%g5835258362%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5835258362%_)))
                      (_%$%g5835058483%_
                       (lambda (_%$%g5835258370%_)
                         (if (gx#stx-pair? _%$%g5835258370%_)
                             (let ((_%$%e5835558373%_
                                    (gx#syntax-e _%$%g5835258370%_)))
                               (let ((_%$%hd5835658377%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5835558373%_)))
                                     (_%$%tl5835758380%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5835558373%_))))
                                 (if (gx#stx-pair? _%$%tl5835758380%_)
                                     (let ((_%$%e5835858383%_
                                            (gx#syntax-e _%$%tl5835758380%_)))
                                       (let ((_%$%hd5835958387%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5835858383%_)))
                                             (_%$%tl5836058390%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5835858383%_))))
                                         (if (gx#stx-null? _%$%tl5836058390%_)
                                             (if (null? _%rest58340%_)
                                                 (let ((_%$e58425%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58313%_
                                                         _%part58342%_)))
                                                   (if _%$e58425%_
                                                       (let* ((_%$%g5843258440%_
                                                               (lambda (_%$%g5843358436%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g5843358436%_)))
                      (_%$%g5843158463%_
                       (lambda (_%$%g5843358444%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g5843358444%_ '()))
                                     (cons (cons _%$%hd5835958387%_
                                                 (cons _%$%hd5835658377%_ '()))
                                           '()))))))
                 (_%$%g5843158463%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx58175%_
                     _%$e58425%_))))
               (if _%nil-check?58315%_
                   (cons _%$%hd5835958387%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd5835658377%_ '()))
                               '()))
                   (cons _%$%hd5835958387%_ (cons _%$%hd5835658377%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e58471%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type58313%_
                                                         _%part58342%_)))
                                                   (if _%$e58471%_
                                                       (let ((_%type58478%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx58175%_
                         _%$e58471%_))))
                 (if _%nil-check?58315%_
                     (_%loop58308%_
                      _%rest58340%_
                      _%type58478%_
                      (cons _%$%hd5835958387%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd5835658377%_ '()))
                                  '()))
                      '#f)
                     (_%loop58308%_
                      _%rest58340%_
                      _%type58478%_
                      (cons _%$%hd5835958387%_ (cons _%$%hd5835658377%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx58175%_
                _%$%g5818158268%_
                _%part58342%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g5835158366%_
                                              _%$%g5835258370%_))))
                                     (_%$%g5835158366%_ _%$%g5835258370%_))))
                             (_%$%g5835158366%_ _%$%g5835258370%_)))))
                 (_%$%g5835058483%_
                  (list (if _%nil-check?58315%_
                            (cons 'check-nil! (cons _%object58314%_ '()))
                            _%object58314%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx58175%_
                         _%type58313%_
                         _%part58342%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58313%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots"
                    _%stx58175%_
                    _%$%g5818158268%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58175%_
                    _%type58313%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5831658324%_)
                                           (let ((_%$%hd5832158495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5831658324%_)))
                                                 (_%$%tl5832258498%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5831658324%_))))
                                             (let* ((_%part58501%_
                                                     _%$%hd5832158495%_)
                                                    (_%rest58504%_
                                                     _%$%tl5832258498%_))
                                               (_%$%K5832058491%_
                                                _%rest58504%_
                                                _%part58501%_)))
                                           (_%$%else5831858336%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g5818158268%_ '())))))))
                     (if (pair? _%$%g5828058287%_)
                         (let ((_%$%hd5828458513%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5828058287%_)))
                               (_%$%tl5828558516%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5828058287%_))))
                           (let* ((_%var58519%_ _%$%hd5828458513%_)
                                  (_%parts58522%_ _%$%tl5828558516%_))
                             (_%$%K5828358509%_ _%parts58522%_ _%var58519%_)))
                         (_%$%E5828258293%_)))))
                (_%__kont9681096811%_
                 (lambda (_%$%g5818858227%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g5818858227%_ '())))))
            (let ((_%__match9682696827%_
                   (lambda (_%$%e5818258248%_
                            _%$%hd5818358252%_
                            _%$%tl5818458255%_
                            _%$%e5818558258%_
                            _%$%hd5818658262%_
                            _%$%tl5818758265%_)
                     (let ((_%$%g5818158268%_ _%$%hd5818658262%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5818158268%_)
                           (_%__kont9680896809%_ _%$%g5818158268%_)
                           (_%__kont9681096811%_ _%$%hd5818658262%_))))))
              (if (gx#stx-pair? _%__stx9680596806%_)
                  (let ((_%$%e5818258248%_ (gx#syntax-e _%__stx9680596806%_)))
                    (let ((_%$%tl5818458255%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5818258248%_)))
                          (_%$%hd5818358252%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5818258248%_))))
                      (if (gx#stx-pair? _%$%tl5818458255%_)
                          (let ((_%$%e5818558258%_
                                 (gx#syntax-e _%$%tl5818458255%_)))
                            (let ((_%$%tl5818758265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5818558258%_)))
                                  (_%$%hd5818658262%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5818558258%_))))
                              (if (gx#stx-null? _%$%tl5818758265%_)
                                  (_%__match9682696827%_
                                   _%$%e5818258248%_
                                   _%$%hd5818358252%_
                                   _%$%tl5818458255%_
                                   _%$%e5818558258%_
                                   _%$%hd5818658262%_
                                   _%$%tl5818758265%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5817958200%_)))))
                          (let () (declare (not safe)) (_%$%g5817958200%_)))))
                  (let () (declare (not safe)) (_%$%g5817958200%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx58529%_)
        (let* ((_%__stx9684396844%_ _%stx58529%_)
               (_%$%g5853358562%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9684396844%_))))
          (let ((_%__kont9684696847%_
                 (lambda (_%$%g5853558654%_ _%$%g5853658656%_)
                   (let* ((_%$%g5867058677%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx58529%_
                            _%$%g5853658656%_))
                          (_%$%E5867258683%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g5867058677%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K5867358913%_
                           (lambda (_%parts58687%_ _%var58689%_)
                             (let ((_%$e58691%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var58689%_))))
                               (if _%$e58691%_
                                   (let _%loop58698%_ ((_%parts58701%_
                                                        _%parts58687%_)
                                                       (_%type58703%_
                                                        (##direct-structure-ref
                                                         _%$e58691%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object58704%_
                                                        _%var58689%_)
                                                       (_%checked-mutator?58705%_
                                                        (##direct-structure-ref
                                                         _%$e58691%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?58706%_
                                                        '#f))
                                     (let* ((_%$%parts5870758714%_
                                             _%parts58701%_)
                                            (_%$%E5870958720%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts5870758714%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K5871058895%_
                                             (lambda (_%rest58724%_
                                                      _%part58726%_)
                                               (if (and (not _%nil-check?58706%_)
                                                        (let ((__tmp102447
                                                               (symbol->string
                                                                _%part58726%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp102447)))
                                                   (let ((_%str58730%_
                                                          (symbol->string
                                                           _%part58726%_)))
                                                     (_%loop58698%_
                                                      (cons (let ((__tmp102448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str58730%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str58730%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp102448))
                    _%rest58724%_)
              _%type58703%_
              _%object58704%_
              _%checked-mutator?58705%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type58703%_))
                                                       (if (null? _%rest58724%_)
                                                           (let* ((_%$%g5873758752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g5873858748%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g5873858748%_)))
                          (_%$%g5873658809%_
                           (lambda (_%$%g5873858756%_)
                             (if (gx#stx-pair? _%$%g5873858756%_)
                                 (let ((_%$%e5874158759%_
                                        (gx#syntax-e _%$%g5873858756%_)))
                                   (let ((_%$%hd5874258763%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e5874158759%_)))
                                         (_%$%tl5874358766%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e5874158759%_))))
                                     (if (gx#stx-pair? _%$%tl5874358766%_)
                                         (let ((_%$%e5874458769%_
                                                (gx#syntax-e
                                                 _%$%tl5874358766%_)))
                                           (let ((_%$%hd5874558773%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e5874458769%_)))
                                                 (_%$%tl5874658776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e5874458769%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl5874658776%_)
                                                 (if _%nil-check?58706%_
                                                     (cons _%$%hd5874558773%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd5874258763%_ '()))
                         (cons _%$%g5853558654%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd5874558773%_
                                                           (cons _%$%hd5874258763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g5853558654%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g5873758752%_
                                                  _%$%g5873858756%_))))
                                         (_%$%g5873758752%_
                                          _%$%g5873858756%_))))
                                 (_%$%g5873758752%_ _%$%g5873858756%_)))))
                     (_%$%g5873658809%_
                      (list _%object58704%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx58529%_
                             _%type58703%_
                             _%part58726%_
                             (if _%checked-mutator?58705%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type58703%_
                                  _%part58726%_)
                                 '#f)))))
                   (let ((_%$e58813%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type58703%_
                           _%part58726%_)))
                     (if _%$e58813%_
                         (let* ((_%next-type58820%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx58529%_
                                    _%$e58813%_)))
                                (_%$%g5882358838%_
                                 (lambda (_%$%g5882458834%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5882458834%_)))
                                (_%$%g5882258885%_
                                 (lambda (_%$%g5882458842%_)
                                   (if (gx#stx-pair? _%$%g5882458842%_)
                                       (let ((_%$%e5882758845%_
                                              (gx#syntax-e _%$%g5882458842%_)))
                                         (let ((_%$%hd5882858849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5882758845%_)))
                                               (_%$%tl5882958852%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5882758845%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5882958852%_)
                                               (let ((_%$%e5883058855%_
                                                      (gx#syntax-e
                                                       _%$%tl5882958852%_)))
                                                 (let ((_%$%hd5883158859%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5883058855%_)))
                                                       (_%$%tl5883258862%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5883058855%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5883258862%_)
                                                       (_%loop58698%_
                                                        _%rest58724%_
                                                        _%next-type58820%_
                                                        (cons _%$%hd5883158859%_
                                                              (cons _%$%hd5882858849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type58703%_
                 _%part58726%_)
                '#f)
               (_%$%g5882358838%_ _%$%g5882458842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5882358838%_
                                                _%$%g5882458842%_))))
                                       (_%$%g5882358838%_
                                        _%$%g5882458842%_)))))
                           (_%$%g5882258885%_
                            (list (if _%nil-check?58706%_
                                      (cons 'check-nil!
                                            (cons _%object58704%_ '()))
                                      _%object58704%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx58529%_
                                   _%type58703%_
                                   _%part58726%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted setter; unknown type for slot"
                          _%stx58529%_
                          _%$%g5853658656%_
                          _%part58726%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type58703%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted setter; interface has no slots"
                    _%stx58529%_
                    _%$%g5853658656%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx58529%_
                    _%type58703%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts5870758714%_)
                                           (let ((_%$%hd5871158899%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts5870758714%_)))
                                                 (_%$%tl5871258902%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts5870758714%_))))
                                             (let* ((_%part58905%_
                                                     _%$%hd5871158899%_)
                                                    (_%rest58908%_
                                                     _%$%tl5871258902%_))
                                               (_%$%K5871058895%_
                                                _%rest58908%_
                                                _%part58905%_)))
                                           (_%$%E5870958720%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx58529%_)))))))
                     (if (pair? _%$%g5867058677%_)
                         (let ((_%$%hd5867458917%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g5867058677%_)))
                               (_%$%tl5867558920%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g5867058677%_))))
                           (let* ((_%var58923%_ _%$%hd5867458917%_)
                                  (_%parts58926%_ _%$%tl5867558920%_))
                             (_%$%K5867358913%_ _%parts58926%_ _%var58923%_)))
                         (_%$%E5867258683%_)))))
                (_%__kont9684896849%_
                 (lambda (_%$%g5854658599%_ _%$%g5854758601%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx58529%_)))))
            (let ((_%__match9687096871%_
                   (lambda (_%$%e5853758624%_
                            _%$%hd5853858628%_
                            _%$%tl5853958631%_
                            _%$%e5854058634%_
                            _%$%hd5854158638%_
                            _%$%tl5854258641%_
                            _%$%e5854358644%_
                            _%$%hd5854458648%_
                            _%$%tl5854558651%_)
                     (let ((_%$%g5853558654%_ _%$%hd5854458648%_)
                           (_%$%g5853658656%_ _%$%hd5854158638%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g5853658656%_)
                           (_%__kont9684696847%_
                            _%$%g5853558654%_
                            _%$%g5853658656%_)
                           (_%__kont9684896849%_
                            _%$%hd5854458648%_
                            _%$%hd5854158638%_))))))
              (if (gx#stx-pair? _%__stx9684396844%_)
                  (let ((_%$%e5853758624%_ (gx#syntax-e _%__stx9684396844%_)))
                    (let ((_%$%tl5853958631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5853758624%_)))
                          (_%$%hd5853858628%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5853758624%_))))
                      (if (gx#stx-pair? _%$%tl5853958631%_)
                          (let ((_%$%e5854058634%_
                                 (gx#syntax-e _%$%tl5853958631%_)))
                            (let ((_%$%tl5854258641%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5854058634%_)))
                                  (_%$%hd5854158638%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5854058634%_))))
                              (if (gx#stx-pair? _%$%tl5854258641%_)
                                  (let ((_%$%e5854358644%_
                                         (gx#syntax-e _%$%tl5854258641%_)))
                                    (let ((_%$%tl5854558651%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5854358644%_)))
                                          (_%$%hd5854458648%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5854358644%_))))
                                      (if (gx#stx-null? _%$%tl5854558651%_)
                                          (_%__match9687096871%_
                                           _%$%e5853758624%_
                                           _%$%hd5853858628%_
                                           _%$%tl5853958631%_
                                           _%$%e5854058634%_
                                           _%$%hd5854158638%_
                                           _%$%tl5854258641%_
                                           _%$%e5854358644%_
                                           _%$%hd5854458648%_
                                           _%$%tl5854558651%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5853358562%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5853358562%_)))))
                          (let () (declare (not safe)) (_%$%g5853358562%_)))))
                  (let () (declare (not safe)) (_%$%g5853358562%_))))))))))
