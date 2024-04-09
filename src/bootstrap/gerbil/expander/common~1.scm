(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113701_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113703_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113705_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113707_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113708_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113710_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113711_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113713_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113714_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113716_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113717_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113720_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113697
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
          (##unchecked-structure-set! __obj113697 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '#f '11 '#f '#f))
        (let ((__tmp113700 |gx[1]#_g113701_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113700 '12 '#f '#f))
        (let ((__tmp113702 |gx[1]#_g113703_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113702 '13 '#f '#f))
        (let ((__tmp113704 |gx[1]#_g113705_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113704 '14 '#f '#f))
        (let ((__tmp113706
               (cons (cons 'e |gx[1]#_g113707_|)
                     (cons (cons 'source |gx[1]#_g113708_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113706 '15 '#f '#f))
        (let ((__tmp113709
               (cons (cons 'e |gx[1]#_g113710_|)
                     (cons (cons 'source |gx[1]#_g113711_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113709 '16 '#f '#f))
        (let ((__tmp113712
               (cons (cons 'e |gx[1]#_g113713_|)
                     (cons (cons 'source |gx[1]#_g113714_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113712 '17 '#f '#f))
        (let ((__tmp113715
               (cons (cons 'e |gx[1]#_g113716_|)
                     (cons (cons 'source |gx[1]#_g113717_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 __tmp113715 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113697 '() '20 '#f '#f))
        __obj113697))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112292%_)
        (let* ((_%g112296112310%_
                (lambda (_%g112297112306%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112297112306%_)))
               (_%g112295112352%_
                (lambda (_%g112297112314%_)
                  (if (gx#stx-pair? _%g112297112314%_)
                      (let ((_%e112301112317%_
                             (gx#syntax-e _%g112297112314%_)))
                        (let ((_%hd112300112321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112301112317%_)))
                              (_%tl112299112324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112301112317%_))))
                          (if (gx#stx-pair? _%tl112299112324%_)
                              (let ((_%e112304112327%_
                                     (gx#syntax-e _%tl112299112324%_)))
                                (let ((_%hd112303112331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112304112327%_)))
                                      (_%tl112302112334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112304112327%_))))
                                  (if (gx#stx-null? _%tl112302112334%_)
                                      ((lambda (_%L112337%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112337%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112303112331%_)
                                      (_%g112296112310%_ _%g112297112314%_))))
                              (_%g112296112310%_ _%g112297112314%_))))
                      (_%g112296112310%_ _%g112297112314%_)))))
          (_%g112295112352%_ _%$stx112292%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112356%_)
        (letrec ((_%generate112359%_
                  (lambda (_%tgt112508%_ _%kws112510%_ _%clauses112511%_)
                    (letrec ((_%generate-clause112513%_
                              (lambda (_%hd113448%_ _%E113450%_)
                                (let* ((_%__stx113600113601%_ _%hd113448%_)
                                       (_%g113454113481%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113600113601%_))))
                                  (let ((_%__kont113603113604%_
                                         (lambda (_%L113577%_ _%L113579%_)
                                           (_%generate1112515%_
                                            _%hd113448%_
                                            _%L113579%_
                                            '#t
                                            _%L113577%_
                                            _%E113450%_)))
                                        (_%__kont113605113606%_
                                         (lambda (_%L113529%_
                                                  _%L113531%_
                                                  _%L113532%_)
                                           (_%generate1112515%_
                                            _%hd113448%_
                                            _%L113532%_
                                            _%L113531%_
                                            _%L113529%_
                                            _%E113450%_)))
                                        (_%__kont113607113608%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112356%_
                                            _%hd113448%_))))
                                    (if (gx#stx-pair? _%__stx113600113601%_)
                                        (let ((_%e113460113557%_
                                               (gx#syntax-e
                                                _%__stx113600113601%_)))
                                          (let ((_%tl113458113564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113460113557%_)))
                                                (_%hd113459113561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113460113557%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113458113564%_)
                                                (let ((_%e113463113567%_
                                                       (gx#syntax-e
                                                        _%tl113458113564%_)))
                                                  (let ((_%tl113461113574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113463113567%_)))
                                                        (_%hd113462113571%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113463113567%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113461113574%_)
                                                        (_%__kont113603113604%_
                                                         _%hd113462113571%_
                                                         _%hd113459113561%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113461113574%_)
                                                            (let ((_%e113475113519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113461113574%_)))
                      (let ((_%tl113473113526%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113475113519%_)))
                            (_%hd113474113523%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113475113519%_))))
                        (if (gx#stx-null? _%tl113473113526%_)
                            (_%__kont113605113606%_
                             _%hd113474113523%_
                             _%hd113462113571%_
                             _%hd113459113561%_)
                            (_%__kont113607113608%_))))
                    (_%__kont113607113608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113607113608%_))))
                                        (_%__kont113607113608%_))))))
                             (_%generate1112515%_
                              (lambda (_%where112901%_
                                       _%hd112903%_
                                       _%fender112904%_
                                       _%body112905%_
                                       _%E112906%_)
                                (letrec ((_%recur112908%_
                                          (lambda (_%hd112911%_
                                                   _%tgt112913%_
                                                   _%K112914%_)
                                            (let* ((_%__stx113646113647%_
                                                    _%hd112911%_)
                                                   (_%g112917112929%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113646113647%_))))
                                              (let ((_%__kont113649113650%_
                                                     (lambda (_%L113238%_
                                                              _%L113240%_)
                                                       (let* ((_%g113251113259%_
                                                               (lambda (_%g113252113255%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113252113255%_)))
                      (_%g113250113440%_
                       (lambda (_%g113252113263%_)
                         ((lambda (_%L113266%_)
                            (let ()
                              (let* ((_%g113278113286%_
                                      (lambda (_%g113279113282%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113279113282%_)))
                                     (_%g113277113436%_
                                      (lambda (_%g113279113290%_)
                                        ((lambda (_%L113293%_)
                                           (let ()
                                             (let* ((_%g113306113314%_
                                                     (lambda (_%g113307113310%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113307113310%_)))
                                                    (_%g113305113432%_
                                                     (lambda (_%g113307113318%_)
                                                       ((lambda (_%L113321%_)
                                                          (let ()
                                                            (let* ((_%g113334113342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113335113338%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113335113338%_)))
                           (_%g113333113428%_
                            (lambda (_%g113335113346%_)
                              ((lambda (_%L113349%_)
                                 (let ()
                                   (let* ((_%g113362113370%_
                                           (lambda (_%g113363113366%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113363113366%_)))
                                          (_%g113361113424%_
                                           (lambda (_%g113363113374%_)
                                             ((lambda (_%L113377%_)
                                                (let ()
                                                  (let* ((_%g113390113398%_
                                                          (lambda (_%g113391113394%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113391113394%_)))
                                                         (_%g113389113420%_
                                                          (lambda (_%g113391113402%_)
                                                            ((lambda (_%L113405%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113266%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113266%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113321%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113293%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113349%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113377%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113405%_ '()))))))
                     _%g113391113402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113389113420%_
                                                     _%E112906%_))))
                                              _%g113363113374%_))))
                                     (_%g113361113424%_
                                      (_%recur112908%_
                                       _%L113240%_
                                       _%L113321%_
                                       (_%recur112908%_
                                        _%L113238%_
                                        _%L113349%_
                                        _%K112914%_))))))
                               _%g113335113346%_))))
                      (_%g113333113428%_ (gx#genident 'tl)))))
                _%g113307113318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113305113432%_
                                                (gx#genident 'hd)))))
                                         _%g113279113290%_))))
                                (_%g113277113436%_ (gx#genident 'e)))))
                          _%g113252113263%_))))
                 (_%g113250113440%_ _%tgt112913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113651113652%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112911%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112911%_)
                         (let () _%K112914%_)
                         (if (let ((__tmp113718
                                    (lambda (_%g112943112945%_)
                                      (gx#bound-identifier=?
                                       _%g112943112945%_
                                       _%hd112911%_))))
                               (declare (not safe))
                               (__find __tmp113718 _%kws112510%_))
                             (let ()
                               (let* ((_%g112951112966%_
                                       (lambda (_%g112952112962%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112952112962%_)))
                                      (_%g112950113019%_
                                       (lambda (_%g112952112970%_)
                                         (if (gx#stx-pair? _%g112952112970%_)
                                             (let ((_%e112957112973%_
                                                    (gx#syntax-e
                                                     _%g112952112970%_)))
                                               (let ((_%hd112956112977%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112957112973%_)))
                                                     (_%tl112955112980%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112957112973%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112955112980%_)
                                                     (let ((_%e112960112983%_
                                                            (gx#syntax-e
                                                             _%tl112955112980%_)))
                                                       (let ((_%hd112959112987%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112960112983%_)))
                     (_%tl112958112990%_
                      (let () (declare (not safe)) (##cdr _%e112960112983%_))))
                 (if (gx#stx-null? _%tl112958112990%_)
                     ((lambda (_%L112993%_ _%L112995%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112995%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112993%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112914%_
                                            (cons _%E112906%_ '()))))))
                      _%hd112959112987%_
                      _%hd112956112977%_)
                     (_%g112951112966%_ _%g112952112970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112951112966%_
                                                      _%g112952112970%_))))
                                             (_%g112951112966%_
                                              _%g112952112970%_)))))
                                 (_%g112950113019%_
                                  (list _%tgt112913%_ _%hd112911%_))))
                             (let ()
                               (let* ((_%g113025113040%_
                                       (lambda (_%g113026113036%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113026113036%_)))
                                      (_%g113024113085%_
                                       (lambda (_%g113026113044%_)
                                         (if (gx#stx-pair? _%g113026113044%_)
                                             (let ((_%e113031113047%_
                                                    (gx#syntax-e
                                                     _%g113026113044%_)))
                                               (let ((_%hd113030113051%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113031113047%_)))
                                                     (_%tl113029113054%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113031113047%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113029113054%_)
                                                     (let ((_%e113034113057%_
                                                            (gx#syntax-e
                                                             _%tl113029113054%_)))
                                                       (let ((_%hd113033113061%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113034113057%_)))
                     (_%tl113032113064%_
                      (let () (declare (not safe)) (##cdr _%e113034113057%_))))
                 (if (gx#stx-null? _%tl113032113064%_)
                     ((lambda (_%L113067%_ _%L113069%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113067%_
                                                  (cons _%L113069%_ '()))
                                            '())
                                      (cons _%K112914%_ '())))))
                      _%hd113033113061%_
                      _%hd113030113051%_)
                     (_%g113025113040%_ _%g113026113044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113025113040%_
                                                      _%g113026113044%_))))
                                             (_%g113025113040%_
                                              _%g113026113044%_)))))
                                 (_%g113024113085%_
                                  (list _%tgt112913%_ _%hd112911%_)))))))
                   (if (gx#stx-null? _%hd112911%_)
                       (let ()
                         (let* ((_%g113091113099%_
                                 (lambda (_%g113092113095%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113092113095%_)))
                                (_%g113090113118%_
                                 (lambda (_%g113092113103%_)
                                   ((lambda (_%L113106%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113106%_
                                                                '()))
                                                    (cons _%K112914%_
                                                          (cons _%E112906%_
                                                                '()))))))
                                    _%g113092113103%_))))
                           (_%g113090113118%_ _%tgt112913%_)))
                       (if (gx#stx-datum? _%hd112911%_)
                           (let ()
                             (let* ((_%g113124113143%_
                                     (lambda (_%g113125113139%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113125113139%_)))
                                    (_%g113123113202%_
                                     (lambda (_%g113125113147%_)
                                       (if (gx#stx-pair? _%g113125113147%_)
                                           (let ((_%e113131113150%_
                                                  (gx#syntax-e
                                                   _%g113125113147%_)))
                                             (let ((_%hd113130113154%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113131113150%_)))
                                                   (_%tl113129113157%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113131113150%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113129113157%_)
                                                   (let ((_%e113134113160%_
                                                          (gx#syntax-e
                                                           _%tl113129113157%_)))
                                                     (let ((_%hd113133113164%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113134113160%_)))
                                                           (_%tl113132113167%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113134113160%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113132113167%_)
                                                           (let ((_%e113137113170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113132113167%_)))
                     (let ((_%hd113136113174%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113137113170%_)))
                           (_%tl113135113177%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113137113170%_))))
                       (if (gx#stx-null? _%tl113135113177%_)
                           ((lambda (_%L113180%_ _%L113182%_ _%L113183%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113180%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113182%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112914%_
                                                  (cons _%E112906%_ '()))))))
                            _%hd113136113174%_
                            _%hd113133113164%_
                            _%hd113130113154%_)
                           (_%g113124113143%_ _%g113125113147%_))))
                   (_%g113124113143%_ _%g113125113147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113124113143%_
                                                    _%g113125113147%_))))
                                           (_%g113124113143%_
                                            _%g113125113147%_)))))
                               (_%g113123113202%_
                                (list _%tgt112913%_
                                      _%hd112911%_
                                      (let ((_%e113206%_
                                             (gx#stx-e _%hd112911%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113206%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113206%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113206%_))
                                                (let ()
                                                  (gx#datum->syntax '#f 'eqv?))
                                                (let ()
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?)))))))))
                           (let ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid syntax-case head"
                              _%stx112356%_
                              _%where112901%_
                              _%hd112911%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113646113647%_)
                                                    (let ((_%e112923113228%_
                                                           (gx#syntax-e
                                                            _%__stx113646113647%_)))
                                                      (let ((_%tl112921113235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112923113228%_)))
                    (_%hd112922113232%_
                     (let () (declare (not safe)) (##car _%e112923113228%_))))
                (_%__kont113649113650%_
                 _%tl112921113235%_
                 _%hd112922113232%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113651113652%_)))))))
                                  (_%recur112908%_
                                   _%hd112903%_
                                   _%tgt112508%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112904%_
                                               (cons _%body112905%_
                                                     (cons _%E112906%_
                                                           '()))))))))
                             (_%generate-clauses112516%_
                              (lambda (_%clauses112639%_)
                                (let _%lp112642%_ ((_%rest112645%_
                                                    _%clauses112639%_)
                                                   (_%E112647%_
                                                    (gx#genident 'E))
                                                   (_%r112648%_ '()))
                                  (let* ((_%__stx113682113683%_ _%rest112645%_)
                                         (_%g112651112663%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113682113683%_))))
                                    (let ((_%__kont113685113686%_
                                           (lambda (_%L112728%_ _%L112730%_)
                                             (let* ((_%__stx113662113663%_
                                                     _%L112730%_)
                                                    (_%g112742112753%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113662113663%_))))
                                               (let ((_%__kont113665113666%_
                                                      (lambda (_%L112882%_)
                                                        (if (gx#stx-null?
                                                             _%L112728%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112882%_)
                             (let ((__tmp113719 (gx#stx-null? _%L112882%_)))
                               (declare (not safe))
                               (not __tmp113719)))
                        (cons (cons _%E112647%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112882%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112730%_))
                                          '()))
                              _%r112648%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112356%_
                         _%L112730%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112356%_
                     _%L112730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113667113668%_
                                                      (lambda ()
                                                        (let* ((_%g112764112772%_
                                                                (lambda (_%g112765112768%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112765112768%_)))
                       (_%g112763112861%_
                        (lambda (_%g112765112776%_)
                          ((lambda (_%L112779%_)
                             (let ()
                               (let* ((_%g112795112803%_
                                       (lambda (_%g112796112799%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112796112799%_)))
                                      (_%g112794112857%_
                                       (lambda (_%g112796112807%_)
                                         ((lambda (_%L112810%_)
                                            (let ()
                                              (let* ((_%g112823112831%_
                                                      (lambda (_%g112824112827%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112824112827%_)))
                                                     (_%g112822112853%_
                                                      (lambda (_%g112824112835%_)
                                                        ((lambda (_%L112838%_)
                                                           (let ()
                                                             (_%lp112642%_
                                                              _%L112728%_
                                                              _%L112779%_
                                                              (cons (cons _%E112647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112838%_ '()))
                            _%r112648%_))))
                 _%g112824112835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112822112853%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112730%_))))))
                                          _%g112796112807%_))))
                                 (_%g112794112857%_
                                  (_%generate-clause112513%_
                                   _%L112730%_
                                   (cons _%L112779%_ '()))))))
                           _%g112765112776%_))))
                  (_%g112763112861%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113662113663%_)
                                                     (let ((_%e112747112872%_
                                                            (gx#syntax-e
                                                             _%__stx113662113663%_)))
                                                       (let ((_%tl112745112879%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112747112872%_)))
                     (_%hd112746112876%_
                      (let () (declare (not safe)) (##car _%e112747112872%_))))
                 (if (gx#identifier? _%hd112746112876%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113720_|
                          _%hd112746112876%_)
                         (_%__kont113665113666%_ _%tl112745112879%_)
                         (_%__kont113667113668%_))
                     (_%__kont113667113668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113667113668%_))))))
                                          (_%__kont113687113688%_
                                           (lambda ()
                                             (let* ((_%g112674112682%_
                                                     (lambda (_%g112675112678%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112675112678%_)))
                                                    (_%g112673112707%_
                                                     (lambda (_%g112675112686%_)
                                                       ((lambda (_%L112689%_)
                                                          (let ()
                                                            (cons (cons _%E112647%_
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
                                   (cons _%L112689%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112356%_))
                                      '()))
                          _%r112648%_)))
                _%g112675112686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112673112707%_
                                                _%tgt112508%_)))))
                                      (if (gx#stx-pair? _%__stx113682113683%_)
                                          (let ((_%e112657112718%_
                                                 (gx#syntax-e
                                                  _%__stx113682113683%_)))
                                            (let ((_%tl112655112725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112657112718%_)))
                                                  (_%hd112656112722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112657112718%_))))
                                              (_%__kont113685113686%_
                                               _%tl112655112725%_
                                               _%hd112656112722%_)))
                                          (_%__kont113687113688%_))))))))
                      (let* ((_%bind112518%_
                              (_%generate-clauses112516%_ _%clauses112511%_))
                             (_%g112521112538%_
                              (lambda (_%g112522112534%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112522112534%_)))
                             (_%g112520112635%_
                              (lambda (_%g112522112542%_)
                                (if (gx#stx-pair/null? _%g112522112542%_)
                                    (let ((_g113721_
                                           (gx#syntax-split-splice
                                            _%g112522112542%_
                                            '0)))
                                      (begin
                                        (let ((_g113722_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113721_)
                                                     (##vector-length
                                                      _g113721_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113722_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113722_)))
                                        (let ((_%target112524112545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113721_ 0)))
                                              (_%tl112526112548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113721_ 1))))
                                          (if (gx#stx-null? _%tl112526112548%_)
                                              (letrec ((_%loop112527112551%_
                                                        (lambda (_%hd112525112555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112531112558%_)
                  (if (gx#stx-pair? _%hd112525112555%_)
                      (let ((_%e112528112561%_
                             (gx#syntax-e _%hd112525112555%_)))
                        (let ((_%lp-hd112529112565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112528112561%_)))
                              (_%lp-tl112530112568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112528112561%_))))
                          (_%loop112527112551%_
                           _%lp-tl112530112568%_
                           (cons _%lp-hd112529112565%_
                                 _%bind-try112531112558%_))))
                      (let ((_%bind-try112532112571%_
                             (reverse _%bind-try112531112558%_)))
                        ((lambda (_%L112575%_)
                           (let ()
                             (let* ((_%g112593112601%_
                                     (lambda (_%g112594112597%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112594112597%_)))
                                    (_%g112592112631%_
                                     (lambda (_%g112594112605%_)
                                       ((lambda (_%L112608%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113723
                                                               (lambda (_%g112622112625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112623112628%_)
                         (cons _%g112622112625%_ _%g112623112628%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113723 '() _%L112575%_))
                (cons (cons _%L112608%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112594112605%_))))
                               (_%g112592112631%_
                                (car (last _%bind112518%_))))))
                         _%bind-try112532112571%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112527112551%_
                                                 _%target112524112545%_
                                                 '()))
                                              (_%g112521112538%_
                                               _%g112522112542%_)))))
                                    (_%g112521112538%_ _%g112522112542%_)))))
                        (_%g112520112635%_ _%bind112518%_))))))
          (let* ((_%g112362112381%_
                  (lambda (_%g112363112377%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112363112377%_)))
                 (_%g112361112504%_
                  (lambda (_%g112363112385%_)
                    (if (gx#stx-pair? _%g112363112385%_)
                        (let ((_%e112369112388%_
                               (gx#syntax-e _%g112363112385%_)))
                          (let ((_%hd112368112392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112369112388%_)))
                                (_%tl112367112395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112369112388%_))))
                            (if (gx#stx-pair? _%tl112367112395%_)
                                (let ((_%e112372112398%_
                                       (gx#syntax-e _%tl112367112395%_)))
                                  (let ((_%hd112371112402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112372112398%_)))
                                        (_%tl112370112405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112372112398%_))))
                                    (if (gx#stx-pair? _%tl112370112405%_)
                                        (let ((_%e112375112408%_
                                               (gx#syntax-e
                                                _%tl112370112405%_)))
                                          (let ((_%hd112374112412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112375112408%_)))
                                                (_%tl112373112415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112375112408%_))))
                                            ((lambda (_%L112418%_
                                                      _%L112420%_
                                                      _%L112421%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112420%_)
                                                        (gx#stx-list?
                                                         _%L112418%_))
                                                   (let* ((_%g112439112447%_
                                                           (lambda (_%g112440112443%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112440112443%_)))
                                                          (_%g112438112500%_
                                                           (lambda (_%g112440112451%_)
                                                             ((lambda (_%L112454%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112466112474%_
                                  (lambda (_%g112467112470%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112467112470%_)))
                                 (_%g112465112496%_
                                  (lambda (_%g112467112478%_)
                                    ((lambda (_%L112481%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112421%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112481%_ '())))))
                                     _%g112467112478%_))))
                            (_%g112465112496%_
                             (_%generate112359%_
                              _%L112454%_
                              (gx#syntax->list _%L112420%_)
                              _%L112418%_)))))
                      _%g112440112451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112438112500%_
                                                      (gx#genident 'e)))
                                                   (_%g112362112381%_
                                                    _%g112363112385%_)))
                                             _%tl112373112415%_
                                             _%hd112374112412%_
                                             _%hd112371112402%_)))
                                        (_%g112362112381%_
                                         _%g112363112385%_))))
                                (_%g112362112381%_ _%g112363112385%_))))
                        (_%g112362112381%_ _%g112363112385%_)))))
            (_%g112361112504%_ _%stx112356%_)))))))
