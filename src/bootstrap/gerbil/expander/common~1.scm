(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g116756_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116758_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116760_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116762_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116763_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116765_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116766_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116768_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116769_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116771_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116772_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g116774_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj116752
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '#f '11 '#f '#f))
        (let ((__tmp116755 |gx[1]#_g116756_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116755 '12 '#f '#f))
        (let ((__tmp116757 |gx[1]#_g116758_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116757 '13 '#f '#f))
        (let ((__tmp116759 |gx[1]#_g116760_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116759 '14 '#f '#f))
        (let ((__tmp116761
               (cons (cons 'e |gx[1]#_g116762_|)
                     (cons (cons 'source |gx[1]#_g116763_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116761 '15 '#f '#f))
        (let ((__tmp116764
               (cons (cons 'e |gx[1]#_g116765_|)
                     (cons (cons 'source |gx[1]#_g116766_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116764 '16 '#f '#f))
        (let ((__tmp116767
               (cons (cons 'e |gx[1]#_g116768_|)
                     (cons (cons 'source |gx[1]#_g116769_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116767 '17 '#f '#f))
        (let ((__tmp116770
               (cons (cons 'e |gx[1]#_g116771_|)
                     (cons (cons 'source |gx[1]#_g116772_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 __tmp116770 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj116752 '() '20 '#f '#f))
        __obj116752))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx115347%_)
        (let* ((_%g115351115365%_
                (lambda (_%g115352115361%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g115352115361%_)))
               (_%g115350115407%_
                (lambda (_%g115352115369%_)
                  (if (gx#stx-pair? _%g115352115369%_)
                      (let ((_%e115354115372%_
                             (gx#syntax-e _%g115352115369%_)))
                        (let ((_%hd115355115376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115354115372%_)))
                              (_%tl115356115379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115354115372%_))))
                          (if (gx#stx-pair? _%tl115356115379%_)
                              (let ((_%e115357115382%_
                                     (gx#syntax-e _%tl115356115379%_)))
                                (let ((_%hd115358115386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e115357115382%_)))
                                      (_%tl115359115389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e115357115382%_))))
                                  (if (gx#stx-null? _%tl115359115389%_)
                                      ((lambda (_%L115392%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L115392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L115392%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd115358115386%_)
                                      (_%g115351115365%_ _%g115352115369%_))))
                              (_%g115351115365%_ _%g115352115369%_))))
                      (_%g115351115365%_ _%g115352115369%_)))))
          (_%g115350115407%_ _%$stx115347%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx115411%_)
        (letrec ((_%generate115414%_
                  (lambda (_%tgt115563%_ _%kws115565%_ _%clauses115566%_)
                    (letrec ((_%generate-clause115568%_
                              (lambda (_%hd116503%_ _%E116505%_)
                                (let* ((_%__stx116655116656%_ _%hd116503%_)
                                       (_%g116509116536%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx116655116656%_))))
                                  (let ((_%__kont116658116659%_
                                         (lambda (_%L116632%_ _%L116634%_)
                                           (_%generate1115570%_
                                            _%hd116503%_
                                            _%L116634%_
                                            '#t
                                            _%L116632%_
                                            _%E116505%_)))
                                        (_%__kont116660116661%_
                                         (lambda (_%L116584%_
                                                  _%L116586%_
                                                  _%L116587%_)
                                           (_%generate1115570%_
                                            _%hd116503%_
                                            _%L116587%_
                                            _%L116586%_
                                            _%L116584%_
                                            _%E116505%_)))
                                        (_%__kont116662116663%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx115411%_
                                            _%hd116503%_))))
                                    (if (gx#stx-pair? _%__stx116655116656%_)
                                        (let ((_%e116513116612%_
                                               (gx#syntax-e
                                                _%__stx116655116656%_)))
                                          (let ((_%tl116515116619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116513116612%_)))
                                                (_%hd116514116616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116513116612%_))))
                                            (if (gx#stx-pair?
                                                 _%tl116515116619%_)
                                                (let ((_%e116516116622%_
                                                       (gx#syntax-e
                                                        _%tl116515116619%_)))
                                                  (let ((_%tl116518116629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e116516116622%_)))
                                                        (_%hd116517116626%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e116516116622%_))))
                                                    (if (gx#stx-null?
                                                         _%tl116518116629%_)
                                                        (_%__kont116658116659%_
                                                         _%hd116517116626%_
                                                         _%hd116514116616%_)
                                                        (if (gx#stx-pair?
                                                             _%tl116518116629%_)
                                                            (let ((_%e116528116574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl116518116629%_)))
                      (let ((_%tl116530116581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e116528116574%_)))
                            (_%hd116529116578%_
                             (let ()
                               (declare (not safe))
                               (##car _%e116528116574%_))))
                        (if (gx#stx-null? _%tl116530116581%_)
                            (_%__kont116660116661%_
                             _%hd116529116578%_
                             _%hd116517116626%_
                             _%hd116514116616%_)
                            (_%__kont116662116663%_))))
                    (_%__kont116662116663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont116662116663%_))))
                                        (_%__kont116662116663%_))))))
                             (_%generate1115570%_
                              (lambda (_%where115956%_
                                       _%hd115958%_
                                       _%fender115959%_
                                       _%body115960%_
                                       _%E115961%_)
                                (letrec ((_%recur115963%_
                                          (lambda (_%hd115966%_
                                                   _%tgt115968%_
                                                   _%K115969%_)
                                            (let* ((_%__stx116701116702%_
                                                    _%hd115966%_)
                                                   (_%g115972115984%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx116701116702%_))))
                                              (let ((_%__kont116704116705%_
                                                     (lambda (_%L116293%_
                                                              _%L116295%_)
                                                       (let* ((_%g116306116314%_
                                                               (lambda (_%g116307116310%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g116307116310%_)))
                      (_%g116305116495%_
                       (lambda (_%g116307116318%_)
                         ((lambda (_%L116321%_)
                            (let* ((_%g116333116341%_
                                    (lambda (_%g116334116337%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g116334116337%_)))
                                   (_%g116332116491%_
                                    (lambda (_%g116334116345%_)
                                      ((lambda (_%L116348%_)
                                         (let* ((_%g116361116369%_
                                                 (lambda (_%g116362116365%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g116362116365%_)))
                                                (_%g116360116487%_
                                                 (lambda (_%g116362116373%_)
                                                   ((lambda (_%L116376%_)
                                                      (let* ((_%g116389116397%_
                                                              (lambda (_%g116390116393%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g116390116393%_)))
                     (_%g116388116483%_
                      (lambda (_%g116390116401%_)
                        ((lambda (_%L116404%_)
                           (let* ((_%g116417116425%_
                                   (lambda (_%g116418116421%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116418116421%_)))
                                  (_%g116416116479%_
                                   (lambda (_%g116418116429%_)
                                     ((lambda (_%L116432%_)
                                        (let* ((_%g116445116453%_
                                                (lambda (_%g116446116449%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g116446116449%_)))
                                               (_%g116444116475%_
                                                (lambda (_%g116446116457%_)
                                                  ((lambda (_%L116460%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L116321%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L116348%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L116321%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L116376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L116348%_ '()))
                                       '()))
                           (cons (cons _%L116404%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L116348%_ '()))
                                             '()))
                                 '()))
                     (cons _%L116432%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L116460%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g116446116457%_))))
                                          (_%g116444116475%_ _%E115961%_)))
                                      _%g116418116429%_))))
                             (_%g116416116479%_
                              (_%recur115963%_
                               _%L116295%_
                               _%L116376%_
                               (_%recur115963%_
                                _%L116293%_
                                _%L116404%_
                                _%K115969%_)))))
                         _%g116390116401%_))))
                (_%g116388116483%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g116362116373%_))))
                                           (_%g116360116487%_
                                            (gx#genident 'hd))))
                                       _%g116334116345%_))))
                              (_%g116332116491%_ (gx#genident 'e))))
                          _%g116307116318%_))))
                 (_%g116305116495%_ _%tgt115968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116706116707%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd115966%_)
                                                           (if (gx#underscore?
                                                                _%hd115966%_)
                                                               _%K115969%_
                                                               (if (let ((__tmp116773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g115998116000%_)
                                    (gx#bound-identifier=?
                                     _%g115998116000%_
                                     _%hd115966%_))))
                             (declare (not safe))
                             (__find __tmp116773 _%kws115565%_))
                           (let* ((_%g116006116021%_
                                   (lambda (_%g116007116017%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116007116017%_)))
                                  (_%g116005116074%_
                                   (lambda (_%g116007116025%_)
                                     (if (gx#stx-pair? _%g116007116025%_)
                                         (let ((_%e116010116028%_
                                                (gx#syntax-e
                                                 _%g116007116025%_)))
                                           (let ((_%hd116011116032%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116010116028%_)))
                                                 (_%tl116012116035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116010116028%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116012116035%_)
                                                 (let ((_%e116013116038%_
                                                        (gx#syntax-e
                                                         _%tl116012116035%_)))
                                                   (let ((_%hd116014116042%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116013116038%_)))
                                                         (_%tl116015116045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116013116038%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116015116045%_)
                                                         ((lambda (_%L116048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116050%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L116050%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L116050%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L116048%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K115969%_ (cons _%E115961%_ '())))))
                  _%hd116014116042%_
                  _%hd116011116032%_)
                 (_%g116006116021%_ _%g116007116025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116006116021%_
                                                  _%g116007116025%_))))
                                         (_%g116006116021%_
                                          _%g116007116025%_)))))
                             (_%g116005116074%_
                              (list _%tgt115968%_ _%hd115966%_)))
                           (let* ((_%g116080116095%_
                                   (lambda (_%g116081116091%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116081116091%_)))
                                  (_%g116079116140%_
                                   (lambda (_%g116081116099%_)
                                     (if (gx#stx-pair? _%g116081116099%_)
                                         (let ((_%e116084116102%_
                                                (gx#syntax-e
                                                 _%g116081116099%_)))
                                           (let ((_%hd116085116106%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116084116102%_)))
                                                 (_%tl116086116109%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116084116102%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116086116109%_)
                                                 (let ((_%e116087116112%_
                                                        (gx#syntax-e
                                                         _%tl116086116109%_)))
                                                   (let ((_%hd116088116116%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116087116112%_)))
                                                         (_%tl116089116119%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116087116112%_))))
                                                     (if (gx#stx-null?
                                                          _%tl116089116119%_)
                                                         ((lambda (_%L116122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L116124%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L116122%_ (cons _%L116124%_ '()))
                                      '())
                                (cons _%K115969%_ '()))))
                  _%hd116088116116%_
                  _%hd116085116106%_)
                 (_%g116080116095%_ _%g116081116099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116080116095%_
                                                  _%g116081116099%_))))
                                         (_%g116080116095%_
                                          _%g116081116099%_)))))
                             (_%g116079116140%_
                              (list _%tgt115968%_ _%hd115966%_)))))
                   (if (gx#stx-null? _%hd115966%_)
                       (let* ((_%g116146116154%_
                               (lambda (_%g116147116150%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g116147116150%_)))
                              (_%g116145116173%_
                               (lambda (_%g116147116158%_)
                                 ((lambda (_%L116161%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L116161%_ '()))
                                                (cons _%K115969%_
                                                      (cons _%E115961%_
                                                            '())))))
                                  _%g116147116158%_))))
                         (_%g116145116173%_ _%tgt115968%_))
                       (if (gx#stx-datum? _%hd115966%_)
                           (let* ((_%g116179116198%_
                                   (lambda (_%g116180116194%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116180116194%_)))
                                  (_%g116178116257%_
                                   (lambda (_%g116180116202%_)
                                     (if (gx#stx-pair? _%g116180116202%_)
                                         (let ((_%e116184116205%_
                                                (gx#syntax-e
                                                 _%g116180116202%_)))
                                           (let ((_%hd116185116209%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e116184116205%_)))
                                                 (_%tl116186116212%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e116184116205%_))))
                                             (if (gx#stx-pair?
                                                  _%tl116186116212%_)
                                                 (let ((_%e116187116215%_
                                                        (gx#syntax-e
                                                         _%tl116186116212%_)))
                                                   (let ((_%hd116188116219%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e116187116215%_)))
                                                         (_%tl116189116222%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e116187116215%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl116189116222%_)
                                                         (let ((_%e116190116225%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl116189116222%_)))
                   (let ((_%hd116191116229%_
                          (let ()
                            (declare (not safe))
                            (##car _%e116190116225%_)))
                         (_%tl116192116232%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e116190116225%_))))
                     (if (gx#stx-null? _%tl116192116232%_)
                         ((lambda (_%L116235%_ _%L116237%_ _%L116238%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L116235%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L116238%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L116237%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K115969%_
                                              (cons _%E115961%_ '())))))
                          _%hd116191116229%_
                          _%hd116188116219%_
                          _%hd116185116209%_)
                         (_%g116179116198%_ _%g116180116202%_))))
                 (_%g116179116198%_ _%g116180116202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g116179116198%_
                                                  _%g116180116202%_))))
                                         (_%g116179116198%_
                                          _%g116180116202%_)))))
                             (_%g116178116257%_
                              (list _%tgt115968%_
                                    _%hd115966%_
                                    (let ((_%e116261%_
                                           (gx#stx-e _%hd115966%_)))
                                      (if (or (keyword? _%e116261%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e116261%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e116261%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx115411%_
                            _%where115956%_
                            _%hd115966%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx116701116702%_)
                                                    (let ((_%e115976116283%_
                                                           (gx#syntax-e
                                                            _%__stx116701116702%_)))
                                                      (let ((_%tl115978116290%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e115976116283%_)))
                    (_%hd115977116287%_
                     (let () (declare (not safe)) (##car _%e115976116283%_))))
                (_%__kont116704116705%_
                 _%tl115978116290%_
                 _%hd115977116287%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont116706116707%_)))))))
                                  (_%recur115963%_
                                   _%hd115958%_
                                   _%tgt115563%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender115959%_
                                               (cons _%body115960%_
                                                     (cons _%E115961%_
                                                           '()))))))))
                             (_%generate-clauses115571%_
                              (lambda (_%clauses115694%_)
                                (let _%lp115697%_ ((_%rest115700%_
                                                    _%clauses115694%_)
                                                   (_%E115702%_
                                                    (gx#genident 'E))
                                                   (_%r115703%_ '()))
                                  (let* ((_%__stx116737116738%_ _%rest115700%_)
                                         (_%g115706115718%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx116737116738%_))))
                                    (let ((_%__kont116740116741%_
                                           (lambda (_%L115783%_ _%L115785%_)
                                             (let* ((_%__stx116717116718%_
                                                     _%L115785%_)
                                                    (_%g115797115808%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx116717116718%_))))
                                               (let ((_%__kont116720116721%_
                                                      (lambda (_%L115937%_)
                                                        (if (gx#stx-null?
                                                             _%L115783%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L115937%_)
                             (not (gx#stx-null? _%L115937%_)))
                        (cons (cons _%E115702%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L115937%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L115785%_))
                                          '()))
                              _%r115703%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx115411%_
                         _%L115785%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx115411%_
                     _%L115785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116722116723%_
                                                      (lambda ()
                                                        (let* ((_%g115819115827%_
                                                                (lambda (_%g115820115823%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g115820115823%_)))
                       (_%g115818115916%_
                        (lambda (_%g115820115831%_)
                          ((lambda (_%L115834%_)
                             (let* ((_%g115850115858%_
                                     (lambda (_%g115851115854%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g115851115854%_)))
                                    (_%g115849115912%_
                                     (lambda (_%g115851115862%_)
                                       ((lambda (_%L115865%_)
                                          (let* ((_%g115878115886%_
                                                  (lambda (_%g115879115882%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g115879115882%_)))
                                                 (_%g115877115908%_
                                                  (lambda (_%g115879115890%_)
                                                    ((lambda (_%L115893%_)
                                                       (_%lp115697%_
                                                        _%L115783%_
                                                        _%L115834%_
                                                        (cons (cons _%E115702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L115893%_ '()))
                      _%r115703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g115879115890%_))))
                                            (_%g115877115908%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L115865%_
                                                                '())))
                                              (gx#stx-source _%L115785%_)))))
                                        _%g115851115862%_))))
                               (_%g115849115912%_
                                (_%generate-clause115568%_
                                 _%L115785%_
                                 (cons _%L115834%_ '())))))
                           _%g115820115831%_))))
                  (_%g115818115916%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx116717116718%_)
                                                     (let ((_%e115800115927%_
                                                            (gx#syntax-e
                                                             _%__stx116717116718%_)))
                                                       (let ((_%tl115802115934%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e115800115927%_)))
                     (_%hd115801115931%_
                      (let () (declare (not safe)) (##car _%e115800115927%_))))
                 (if (gx#identifier? _%hd115801115931%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g116774_|
                          _%hd115801115931%_)
                         (_%__kont116720116721%_ _%tl115802115934%_)
                         (_%__kont116722116723%_))
                     (_%__kont116722116723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont116722116723%_))))))
                                          (_%__kont116742116743%_
                                           (lambda ()
                                             (let* ((_%g115729115737%_
                                                     (lambda (_%g115730115733%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g115730115733%_)))
                                                    (_%g115728115762%_
                                                     (lambda (_%g115730115741%_)
                                                       ((lambda (_%L115744%_)
                                                          (cons (cons _%E115702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'raise-syntax-error)
                                                             (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '"Bad syntax; invalid syntax-case clause"
                                 (cons _%L115744%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx115411%_))
                                    '()))
                        _%r115703%_))
                _%g115730115741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g115728115762%_
                                                _%tgt115563%_)))))
                                      (if (gx#stx-pair? _%__stx116737116738%_)
                                          (let ((_%e115710115773%_
                                                 (gx#syntax-e
                                                  _%__stx116737116738%_)))
                                            (let ((_%tl115712115780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e115710115773%_)))
                                                  (_%hd115711115777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e115710115773%_))))
                                              (_%__kont116740116741%_
                                               _%tl115712115780%_
                                               _%hd115711115777%_)))
                                          (_%__kont116742116743%_))))))))
                      (let* ((_%bind115573%_
                              (_%generate-clauses115571%_ _%clauses115566%_))
                             (_%g115576115593%_
                              (lambda (_%g115577115589%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g115577115589%_)))
                             (_%g115575115690%_
                              (lambda (_%g115577115597%_)
                                (if (gx#stx-pair/null? _%g115577115597%_)
                                    (let ((_g116775_
                                           (gx#syntax-split-splice
                                            _%g115577115597%_
                                            '0)))
                                      (begin
                                        (let ((_g116776_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g116775_)
                                                     (##vector-length
                                                      _g116775_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g116776_ 2)))
                                              (error "Context expects 2 values"
                                                     _g116776_)))
                                        (let ((_%target115579115600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116775_ 0)))
                                              (_%tl115581115603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g116775_ 1))))
                                          (if (gx#stx-null? _%tl115581115603%_)
                                              (letrec ((_%loop115582115606%_
                                                        (lambda (_%hd115580115610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try115586115613%_)
                  (if (gx#stx-pair? _%hd115580115610%_)
                      (let ((_%e115583115616%_
                             (gx#syntax-e _%hd115580115610%_)))
                        (let ((_%lp-hd115584115620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e115583115616%_)))
                              (_%lp-tl115585115623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e115583115616%_))))
                          (_%loop115582115606%_
                           _%lp-tl115585115623%_
                           (cons _%lp-hd115584115620%_
                                 _%bind-try115586115613%_))))
                      (let ((_%bind-try115587115626%_
                             (reverse _%bind-try115586115613%_)))
                        ((lambda (_%L115630%_)
                           (let* ((_%g115648115656%_
                                   (lambda (_%g115649115652%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g115649115652%_)))
                                  (_%g115647115686%_
                                   (lambda (_%g115649115660%_)
                                     ((lambda (_%L115663%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp116777
                                                           (lambda (_%g115677115680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g115678115683%_)
                     (cons _%g115677115680%_ _%g115678115683%_))))
              (declare (not safe))
              (__foldr1 __tmp116777 '() _%L115630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L115663%_
                                                                '())
                                                          '()))))
                                      _%g115649115660%_))))
                             (_%g115647115686%_ (car (last _%bind115573%_)))))
                         _%bind-try115587115626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop115582115606%_
                                                 _%target115579115600%_
                                                 '()))
                                              (_%g115576115593%_
                                               _%g115577115597%_)))))
                                    (_%g115576115593%_ _%g115577115597%_)))))
                        (_%g115575115690%_ _%bind115573%_))))))
          (let* ((_%g115417115436%_
                  (lambda (_%g115418115432%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g115418115432%_)))
                 (_%g115416115559%_
                  (lambda (_%g115418115440%_)
                    (if (gx#stx-pair? _%g115418115440%_)
                        (let ((_%e115422115443%_
                               (gx#syntax-e _%g115418115440%_)))
                          (let ((_%hd115423115447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e115422115443%_)))
                                (_%tl115424115450%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e115422115443%_))))
                            (if (gx#stx-pair? _%tl115424115450%_)
                                (let ((_%e115425115453%_
                                       (gx#syntax-e _%tl115424115450%_)))
                                  (let ((_%hd115426115457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e115425115453%_)))
                                        (_%tl115427115460%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e115425115453%_))))
                                    (if (gx#stx-pair? _%tl115427115460%_)
                                        (let ((_%e115428115463%_
                                               (gx#syntax-e
                                                _%tl115427115460%_)))
                                          (let ((_%hd115429115467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e115428115463%_)))
                                                (_%tl115430115470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e115428115463%_))))
                                            ((lambda (_%L115473%_
                                                      _%L115475%_
                                                      _%L115476%_)
                                               (if (and (gx#identifier-list?
                                                         _%L115475%_)
                                                        (gx#stx-list?
                                                         _%L115473%_))
                                                   (let* ((_%g115494115502%_
                                                           (lambda (_%g115495115498%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g115495115498%_)))
                                                          (_%g115493115555%_
                                                           (lambda (_%g115495115506%_)
                                                             ((lambda (_%L115509%_)
                                                                (let* ((_%g115521115529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g115522115525%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g115522115525%_)))
                               (_%g115520115551%_
                                (lambda (_%g115522115533%_)
                                  ((lambda (_%L115536%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L115509%_
                                                             (cons _%L115476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L115536%_ '()))))
                                   _%g115522115533%_))))
                          (_%g115520115551%_
                           (_%generate115414%_
                            _%L115509%_
                            (gx#syntax->list _%L115475%_)
                            _%L115473%_))))
                      _%g115495115506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g115493115555%_
                                                      (gx#genident 'e)))
                                                   (_%g115417115436%_
                                                    _%g115418115440%_)))
                                             _%tl115430115470%_
                                             _%hd115429115467%_
                                             _%hd115426115457%_)))
                                        (_%g115417115436%_
                                         _%g115418115440%_))))
                                (_%g115417115436%_ _%g115418115440%_))))
                        (_%g115417115436%_ _%g115418115440%_)))))
            (_%g115416115559%_ _%stx115411%_)))))))
