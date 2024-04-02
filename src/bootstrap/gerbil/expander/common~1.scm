(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113027_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113029_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113031_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113033_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113034_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113036_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113037_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113039_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113040_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113042_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113043_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113046_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113023
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
          (##unchecked-structure-set! __obj113023 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '#f '11 '#f '#f))
        (let ((__tmp113026 |gx[1]#_g113027_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113026 '12 '#f '#f))
        (let ((__tmp113028 |gx[1]#_g113029_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113028 '13 '#f '#f))
        (let ((__tmp113030 |gx[1]#_g113031_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113030 '14 '#f '#f))
        (let ((__tmp113032
               (cons (cons 'e |gx[1]#_g113033_|)
                     (cons (cons 'source |gx[1]#_g113034_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113032 '15 '#f '#f))
        (let ((__tmp113035
               (cons (cons 'e |gx[1]#_g113036_|)
                     (cons (cons 'source |gx[1]#_g113037_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113035 '16 '#f '#f))
        (let ((__tmp113038
               (cons (cons 'e |gx[1]#_g113039_|)
                     (cons (cons 'source |gx[1]#_g113040_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113038 '17 '#f '#f))
        (let ((__tmp113041
               (cons (cons 'e |gx[1]#_g113042_|)
                     (cons (cons 'source |gx[1]#_g113043_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 __tmp113041 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113023 '() '20 '#f '#f))
        __obj113023))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111618%_)
        (let* ((_%g111622111636%_
                (lambda (_%g111623111632%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111623111632%_)))
               (_%g111621111678%_
                (lambda (_%g111623111640%_)
                  (if (gx#stx-pair? _%g111623111640%_)
                      (let ((_%e111627111643%_
                             (gx#syntax-e _%g111623111640%_)))
                        (let ((_%hd111626111647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111627111643%_)))
                              (_%tl111625111650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111627111643%_))))
                          (if (gx#stx-pair? _%tl111625111650%_)
                              (let ((_%e111630111653%_
                                     (gx#syntax-e _%tl111625111650%_)))
                                (let ((_%hd111629111657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111630111653%_)))
                                      (_%tl111628111660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111630111653%_))))
                                  (if (gx#stx-null? _%tl111628111660%_)
                                      ((lambda (_%L111663%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111663%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111629111657%_)
                                      (_%g111622111636%_ _%g111623111640%_))))
                              (_%g111622111636%_ _%g111623111640%_))))
                      (_%g111622111636%_ _%g111623111640%_)))))
          (_%g111621111678%_ _%$stx111618%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111682%_)
        (letrec ((_%generate111685%_
                  (lambda (_%tgt111834%_ _%kws111836%_ _%clauses111837%_)
                    (letrec ((_%generate-clause111839%_
                              (lambda (_%hd112774%_ _%E112776%_)
                                (let* ((_%__stx112926112927%_ _%hd112774%_)
                                       (_%g112780112807%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx112926112927%_))))
                                  (let ((_%__kont112929112930%_
                                         (lambda (_%L112903%_ _%L112905%_)
                                           (_%generate1111841%_
                                            _%hd112774%_
                                            _%L112905%_
                                            '#t
                                            _%L112903%_
                                            _%E112776%_)))
                                        (_%__kont112931112932%_
                                         (lambda (_%L112855%_
                                                  _%L112857%_
                                                  _%L112858%_)
                                           (_%generate1111841%_
                                            _%hd112774%_
                                            _%L112858%_
                                            _%L112857%_
                                            _%L112855%_
                                            _%E112776%_)))
                                        (_%__kont112933112934%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111682%_
                                            _%hd112774%_))))
                                    (if (gx#stx-pair? _%__stx112926112927%_)
                                        (let ((_%e112786112883%_
                                               (gx#syntax-e
                                                _%__stx112926112927%_)))
                                          (let ((_%tl112784112890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112786112883%_)))
                                                (_%hd112785112887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112786112883%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112784112890%_)
                                                (let ((_%e112789112893%_
                                                       (gx#syntax-e
                                                        _%tl112784112890%_)))
                                                  (let ((_%tl112787112900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112789112893%_)))
                                                        (_%hd112788112897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112789112893%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112787112900%_)
                                                        (_%__kont112929112930%_
                                                         _%hd112788112897%_
                                                         _%hd112785112887%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112787112900%_)
                                                            (let ((_%e112801112845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112787112900%_)))
                      (let ((_%tl112799112852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112801112845%_)))
                            (_%hd112800112849%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112801112845%_))))
                        (if (gx#stx-null? _%tl112799112852%_)
                            (_%__kont112931112932%_
                             _%hd112800112849%_
                             _%hd112788112897%_
                             _%hd112785112887%_)
                            (_%__kont112933112934%_))))
                    (_%__kont112933112934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont112933112934%_))))
                                        (_%__kont112933112934%_))))))
                             (_%generate1111841%_
                              (lambda (_%where112227%_
                                       _%hd112229%_
                                       _%fender112230%_
                                       _%body112231%_
                                       _%E112232%_)
                                (letrec ((_%recur112234%_
                                          (lambda (_%hd112237%_
                                                   _%tgt112239%_
                                                   _%K112240%_)
                                            (let* ((_%__stx112972112973%_
                                                    _%hd112237%_)
                                                   (_%g112243112255%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx112972112973%_))))
                                              (let ((_%__kont112975112976%_
                                                     (lambda (_%L112564%_
                                                              _%L112566%_)
                                                       (let* ((_%g112577112585%_
                                                               (lambda (_%g112578112581%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112578112581%_)))
                      (_%g112576112766%_
                       (lambda (_%g112578112589%_)
                         ((lambda (_%L112592%_)
                            (let ()
                              (let* ((_%g112604112612%_
                                      (lambda (_%g112605112608%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g112605112608%_)))
                                     (_%g112603112762%_
                                      (lambda (_%g112605112616%_)
                                        ((lambda (_%L112619%_)
                                           (let ()
                                             (let* ((_%g112632112640%_
                                                     (lambda (_%g112633112636%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112633112636%_)))
                                                    (_%g112631112758%_
                                                     (lambda (_%g112633112644%_)
                                                       ((lambda (_%L112647%_)
                                                          (let ()
                                                            (let* ((_%g112660112668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g112661112664%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g112661112664%_)))
                           (_%g112659112754%_
                            (lambda (_%g112661112672%_)
                              ((lambda (_%L112675%_)
                                 (let ()
                                   (let* ((_%g112688112696%_
                                           (lambda (_%g112689112692%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g112689112692%_)))
                                          (_%g112687112750%_
                                           (lambda (_%g112689112700%_)
                                             ((lambda (_%L112703%_)
                                                (let ()
                                                  (let* ((_%g112716112724%_
                                                          (lambda (_%g112717112720%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g112717112720%_)))
                                                         (_%g112715112746%_
                                                          (lambda (_%g112717112728%_)
                                                            ((lambda (_%L112731%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _%L112592%_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L112619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _%L112592%_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _%L112647%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _%L112619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons _%L112675%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%L112619%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _%L112703%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _%L112731%_ '())))))))
                     _%g112717112728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g112715112746%_
                                                     _%E112232%_))))
                                              _%g112689112700%_))))
                                     (_%g112687112750%_
                                      (_%recur112234%_
                                       _%L112566%_
                                       _%L112647%_
                                       (_%recur112234%_
                                        _%L112564%_
                                        _%L112675%_
                                        _%K112240%_))))))
                               _%g112661112672%_))))
                      (_%g112659112754%_ (gx#genident 'tl)))))
                _%g112633112644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112631112758%_
                                                (gx#genident 'hd)))))
                                         _%g112605112616%_))))
                                (_%g112603112762%_ (gx#genident 'e)))))
                          _%g112578112589%_))))
                 (_%g112576112766%_ _%tgt112239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112977112978%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112237%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112237%_)
                         (let () _%K112240%_)
                         (if (let ((__tmp113044
                                    (lambda (_%g112269112271%_)
                                      (gx#bound-identifier=?
                                       _%g112269112271%_
                                       _%hd112237%_))))
                               (declare (not safe))
                               (__find __tmp113044 _%kws111836%_))
                             (let ()
                               (let* ((_%g112277112292%_
                                       (lambda (_%g112278112288%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112278112288%_)))
                                      (_%g112276112345%_
                                       (lambda (_%g112278112296%_)
                                         (if (gx#stx-pair? _%g112278112296%_)
                                             (let ((_%e112283112299%_
                                                    (gx#syntax-e
                                                     _%g112278112296%_)))
                                               (let ((_%hd112282112303%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112283112299%_)))
                                                     (_%tl112281112306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112283112299%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112281112306%_)
                                                     (let ((_%e112286112309%_
                                                            (gx#syntax-e
                                                             _%tl112281112306%_)))
                                                       (let ((_%hd112285112313%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112286112309%_)))
                     (_%tl112284112316%_
                      (let () (declare (not safe)) (##cdr _%e112286112309%_))))
                 (if (gx#stx-null? _%tl112284112316%_)
                     ((lambda (_%L112319%_ _%L112321%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L112321%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L112321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L112319%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112240%_
                                            (cons _%E112232%_ '()))))))
                      _%hd112285112313%_
                      _%hd112282112303%_)
                     (_%g112277112292%_ _%g112278112296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112277112292%_
                                                      _%g112278112296%_))))
                                             (_%g112277112292%_
                                              _%g112278112296%_)))))
                                 (_%g112276112345%_
                                  (list _%tgt112239%_ _%hd112237%_))))
                             (let ()
                               (let* ((_%g112351112366%_
                                       (lambda (_%g112352112362%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112352112362%_)))
                                      (_%g112350112411%_
                                       (lambda (_%g112352112370%_)
                                         (if (gx#stx-pair? _%g112352112370%_)
                                             (let ((_%e112357112373%_
                                                    (gx#syntax-e
                                                     _%g112352112370%_)))
                                               (let ((_%hd112356112377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112357112373%_)))
                                                     (_%tl112355112380%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112357112373%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112355112380%_)
                                                     (let ((_%e112360112383%_
                                                            (gx#syntax-e
                                                             _%tl112355112380%_)))
                                                       (let ((_%hd112359112387%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e112360112383%_)))
                     (_%tl112358112390%_
                      (let () (declare (not safe)) (##cdr _%e112360112383%_))))
                 (if (gx#stx-null? _%tl112358112390%_)
                     ((lambda (_%L112393%_ _%L112395%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L112393%_
                                                  (cons _%L112395%_ '()))
                                            '())
                                      (cons _%K112240%_ '())))))
                      _%hd112359112387%_
                      _%hd112356112377%_)
                     (_%g112351112366%_ _%g112352112370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112351112366%_
                                                      _%g112352112370%_))))
                                             (_%g112351112366%_
                                              _%g112352112370%_)))))
                                 (_%g112350112411%_
                                  (list _%tgt112239%_ _%hd112237%_)))))))
                   (if (gx#stx-null? _%hd112237%_)
                       (let ()
                         (let* ((_%g112417112425%_
                                 (lambda (_%g112418112421%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g112418112421%_)))
                                (_%g112416112444%_
                                 (lambda (_%g112418112429%_)
                                   ((lambda (_%L112432%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L112432%_
                                                                '()))
                                                    (cons _%K112240%_
                                                          (cons _%E112232%_
                                                                '()))))))
                                    _%g112418112429%_))))
                           (_%g112416112444%_ _%tgt112239%_)))
                       (if (gx#stx-datum? _%hd112237%_)
                           (let ()
                             (let* ((_%g112450112469%_
                                     (lambda (_%g112451112465%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112451112465%_)))
                                    (_%g112449112528%_
                                     (lambda (_%g112451112473%_)
                                       (if (gx#stx-pair? _%g112451112473%_)
                                           (let ((_%e112457112476%_
                                                  (gx#syntax-e
                                                   _%g112451112473%_)))
                                             (let ((_%hd112456112480%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e112457112476%_)))
                                                   (_%tl112455112483%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e112457112476%_))))
                                               (if (gx#stx-pair?
                                                    _%tl112455112483%_)
                                                   (let ((_%e112460112486%_
                                                          (gx#syntax-e
                                                           _%tl112455112483%_)))
                                                     (let ((_%hd112459112490%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e112460112486%_)))
                                                           (_%tl112458112493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e112460112486%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl112458112493%_)
                                                           (let ((_%e112463112496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl112458112493%_)))
                     (let ((_%hd112462112500%_
                            (let ()
                              (declare (not safe))
                              (##car _%e112463112496%_)))
                           (_%tl112461112503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e112463112496%_))))
                       (if (gx#stx-null? _%tl112461112503%_)
                           ((lambda (_%L112506%_ _%L112508%_ _%L112509%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L112506%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L112509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L112508%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112240%_
                                                  (cons _%E112232%_ '()))))))
                            _%hd112462112500%_
                            _%hd112459112490%_
                            _%hd112456112480%_)
                           (_%g112450112469%_ _%g112451112473%_))))
                   (_%g112450112469%_ _%g112451112473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g112450112469%_
                                                    _%g112451112473%_))))
                                           (_%g112450112469%_
                                            _%g112451112473%_)))))
                               (_%g112449112528%_
                                (list _%tgt112239%_
                                      _%hd112237%_
                                      (let ((_%e112532%_
                                             (gx#stx-e _%hd112237%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e112532%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e112532%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e112532%_))
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
                              _%stx111682%_
                              _%where112227%_
                              _%hd112237%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx112972112973%_)
                                                    (let ((_%e112249112554%_
                                                           (gx#syntax-e
                                                            _%__stx112972112973%_)))
                                                      (let ((_%tl112247112561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112249112554%_)))
                    (_%hd112248112558%_
                     (let () (declare (not safe)) (##car _%e112249112554%_))))
                (_%__kont112975112976%_
                 _%tl112247112561%_
                 _%hd112248112558%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112977112978%_)))))))
                                  (_%recur112234%_
                                   _%hd112229%_
                                   _%tgt111834%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112230%_
                                               (cons _%body112231%_
                                                     (cons _%E112232%_
                                                           '()))))))))
                             (_%generate-clauses111842%_
                              (lambda (_%clauses111965%_)
                                (let _%lp111968%_ ((_%rest111971%_
                                                    _%clauses111965%_)
                                                   (_%E111973%_
                                                    (gx#genident 'E))
                                                   (_%r111974%_ '()))
                                  (let* ((_%__stx113008113009%_ _%rest111971%_)
                                         (_%g111977111989%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113008113009%_))))
                                    (let ((_%__kont113011113012%_
                                           (lambda (_%L112054%_ _%L112056%_)
                                             (let* ((_%__stx112988112989%_
                                                     _%L112056%_)
                                                    (_%g112068112079%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx112988112989%_))))
                                               (let ((_%__kont112991112992%_
                                                      (lambda (_%L112208%_)
                                                        (if (gx#stx-null?
                                                             _%L112054%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112208%_)
                             (let ((__tmp113045 (gx#stx-null? _%L112208%_)))
                               (declare (not safe))
                               (not __tmp113045)))
                        (cons (cons _%E111973%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112208%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112056%_))
                                          '()))
                              _%r111974%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111682%_
                         _%L112056%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111682%_
                     _%L112056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112993112994%_
                                                      (lambda ()
                                                        (let* ((_%g112090112098%_
                                                                (lambda (_%g112091112094%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112091112094%_)))
                       (_%g112089112187%_
                        (lambda (_%g112091112102%_)
                          ((lambda (_%L112105%_)
                             (let ()
                               (let* ((_%g112121112129%_
                                       (lambda (_%g112122112125%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112122112125%_)))
                                      (_%g112120112183%_
                                       (lambda (_%g112122112133%_)
                                         ((lambda (_%L112136%_)
                                            (let ()
                                              (let* ((_%g112149112157%_
                                                      (lambda (_%g112150112153%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112150112153%_)))
                                                     (_%g112148112179%_
                                                      (lambda (_%g112150112161%_)
                                                        ((lambda (_%L112164%_)
                                                           (let ()
                                                             (let ()
                                                               (_%lp111968%_
                                                                _%L112054%_
                                                                _%L112105%_
                                                                (cons (cons _%E111973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%L112164%_ '()))
                              _%r111974%_)))))
                 _%g112150112161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112148112179%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112056%_))))))
                                          _%g112122112133%_))))
                                 (_%g112120112183%_
                                  (_%generate-clause111839%_
                                   _%L112056%_
                                   (cons _%L112105%_ '()))))))
                           _%g112091112102%_))))
                  (_%g112089112187%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx112988112989%_)
                                                     (let ((_%e112073112198%_
                                                            (gx#syntax-e
                                                             _%__stx112988112989%_)))
                                                       (let ((_%tl112071112205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112073112198%_)))
                     (_%hd112072112202%_
                      (let () (declare (not safe)) (##car _%e112073112198%_))))
                 (if (gx#identifier? _%hd112072112202%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113046_|
                          _%hd112072112202%_)
                         (_%__kont112991112992%_ _%tl112071112205%_)
                         (_%__kont112993112994%_))
                     (_%__kont112993112994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112993112994%_))))))
                                          (_%__kont113013113014%_
                                           (lambda ()
                                             (let* ((_%g112000112008%_
                                                     (lambda (_%g112001112004%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112001112004%_)))
                                                    (_%g111999112033%_
                                                     (lambda (_%g112001112012%_)
                                                       ((lambda (_%L112015%_)
                                                          (let ()
                                                            (cons (cons _%E111973%_
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
                                   (cons _%L112015%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx111682%_))
                                      '()))
                          _%r111974%_)))
                _%g112001112012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g111999112033%_
                                                _%tgt111834%_)))))
                                      (if (gx#stx-pair? _%__stx113008113009%_)
                                          (let ((_%e111983112044%_
                                                 (gx#syntax-e
                                                  _%__stx113008113009%_)))
                                            (let ((_%tl111981112051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111983112044%_)))
                                                  (_%hd111982112048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111983112044%_))))
                                              (_%__kont113011113012%_
                                               _%tl111981112051%_
                                               _%hd111982112048%_)))
                                          (_%__kont113013113014%_))))))))
                      (let* ((_%bind111844%_
                              (_%generate-clauses111842%_ _%clauses111837%_))
                             (_%g111847111864%_
                              (lambda (_%g111848111860%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111848111860%_)))
                             (_%g111846111961%_
                              (lambda (_%g111848111868%_)
                                (if (gx#stx-pair/null? _%g111848111868%_)
                                    (let ((_g113047_
                                           (gx#syntax-split-splice
                                            _%g111848111868%_
                                            '0)))
                                      (begin
                                        (let ((_g113048_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113047_)
                                                     (##vector-length
                                                      _g113047_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113048_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113048_)))
                                        (let ((_%target111850111871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113047_ 0)))
                                              (_%tl111852111874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113047_ 1))))
                                          (if (gx#stx-null? _%tl111852111874%_)
                                              (letrec ((_%loop111853111877%_
                                                        (lambda (_%hd111851111881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111857111884%_)
                  (if (gx#stx-pair? _%hd111851111881%_)
                      (let ((_%e111854111887%_
                             (gx#syntax-e _%hd111851111881%_)))
                        (let ((_%lp-hd111855111891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111854111887%_)))
                              (_%lp-tl111856111894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111854111887%_))))
                          (_%loop111853111877%_
                           _%lp-tl111856111894%_
                           (cons _%lp-hd111855111891%_
                                 _%bind-try111857111884%_))))
                      (let ((_%bind-try111858111897%_
                             (reverse _%bind-try111857111884%_)))
                        ((lambda (_%L111901%_)
                           (let ()
                             (let* ((_%g111919111927%_
                                     (lambda (_%g111920111923%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g111920111923%_)))
                                    (_%g111918111957%_
                                     (lambda (_%g111920111931%_)
                                       ((lambda (_%L111934%_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (let ((__tmp113049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g111948111951%_ _%g111949111954%_)
                           (cons _%g111948111951%_ _%g111949111954%_))))
                    (declare (not safe))
                    (__foldr1 __tmp113049 '() _%L111901%_))
                  (cons (cons _%L111934%_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g111920111931%_))))
                               (_%g111918111957%_
                                (car (last _%bind111844%_))))))
                         _%bind-try111858111897%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111853111877%_
                                                 _%target111850111871%_
                                                 '()))
                                              (_%g111847111864%_
                                               _%g111848111868%_)))))
                                    (_%g111847111864%_ _%g111848111868%_)))))
                        (_%g111846111961%_ _%bind111844%_))))))
          (let* ((_%g111688111707%_
                  (lambda (_%g111689111703%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111689111703%_)))
                 (_%g111687111830%_
                  (lambda (_%g111689111711%_)
                    (if (gx#stx-pair? _%g111689111711%_)
                        (let ((_%e111695111714%_
                               (gx#syntax-e _%g111689111711%_)))
                          (let ((_%hd111694111718%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111695111714%_)))
                                (_%tl111693111721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111695111714%_))))
                            (if (gx#stx-pair? _%tl111693111721%_)
                                (let ((_%e111698111724%_
                                       (gx#syntax-e _%tl111693111721%_)))
                                  (let ((_%hd111697111728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111698111724%_)))
                                        (_%tl111696111731%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111698111724%_))))
                                    (if (gx#stx-pair? _%tl111696111731%_)
                                        (let ((_%e111701111734%_
                                               (gx#syntax-e
                                                _%tl111696111731%_)))
                                          (let ((_%hd111700111738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111701111734%_)))
                                                (_%tl111699111741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111701111734%_))))
                                            ((lambda (_%L111744%_
                                                      _%L111746%_
                                                      _%L111747%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111746%_)
                                                        (gx#stx-list?
                                                         _%L111744%_))
                                                   (let* ((_%g111765111773%_
                                                           (lambda (_%g111766111769%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111766111769%_)))
                                                          (_%g111764111826%_
                                                           (lambda (_%g111766111777%_)
                                                             ((lambda (_%L111780%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g111792111800%_
                                  (lambda (_%g111793111796%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g111793111796%_)))
                                 (_%g111791111822%_
                                  (lambda (_%g111793111804%_)
                                    ((lambda (_%L111807%_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L111780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%L111747%_ '()))
                     '())
               (cons _%L111807%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g111793111804%_))))
                            (_%g111791111822%_
                             (_%generate111685%_
                              _%L111780%_
                              (gx#syntax->list _%L111746%_)
                              _%L111744%_)))))
                      _%g111766111777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111764111826%_
                                                      (gx#genident 'e)))
                                                   (_%g111688111707%_
                                                    _%g111689111711%_)))
                                             _%tl111699111741%_
                                             _%hd111700111738%_
                                             _%hd111697111728%_)))
                                        (_%g111688111707%_
                                         _%g111689111711%_))))
                                (_%g111688111707%_ _%g111689111711%_))))
                        (_%g111688111707%_ _%g111689111711%_)))))
            (_%g111687111830%_ _%stx111682%_)))))))
