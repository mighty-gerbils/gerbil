(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g112913_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112915_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112917_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112919_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112920_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112922_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112923_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112925_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112926_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112928_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112929_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g112931_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj112909
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
          (##unchecked-structure-set! __obj112909 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '#f '11 '#f '#f))
        (let ((__tmp112912 |gx[1]#_g112913_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112912 '12 '#f '#f))
        (let ((__tmp112914 |gx[1]#_g112915_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112914 '13 '#f '#f))
        (let ((__tmp112916 |gx[1]#_g112917_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112916 '14 '#f '#f))
        (let ((__tmp112918
               (cons (cons 'e |gx[1]#_g112919_|)
                     (cons (cons 'source |gx[1]#_g112920_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112918 '15 '#f '#f))
        (let ((__tmp112921
               (cons (cons 'e |gx[1]#_g112922_|)
                     (cons (cons 'source |gx[1]#_g112923_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112921 '16 '#f '#f))
        (let ((__tmp112924
               (cons (cons 'e |gx[1]#_g112925_|)
                     (cons (cons 'source |gx[1]#_g112926_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112924 '17 '#f '#f))
        (let ((__tmp112927
               (cons (cons 'e |gx[1]#_g112928_|)
                     (cons (cons 'source |gx[1]#_g112929_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 __tmp112927 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj112909 '() '20 '#f '#f))
        __obj112909))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx111504%_)
        (let* ((_%g111508111522%_
                (lambda (_%g111509111518%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g111509111518%_)))
               (_%g111507111564%_
                (lambda (_%g111509111526%_)
                  (if (gx#stx-pair? _%g111509111526%_)
                      (let ((_%e111511111529%_
                             (gx#syntax-e _%g111509111526%_)))
                        (let ((_%hd111512111533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111511111529%_)))
                              (_%tl111513111536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111511111529%_))))
                          (if (gx#stx-pair? _%tl111513111536%_)
                              (let ((_%e111514111539%_
                                     (gx#syntax-e _%tl111513111536%_)))
                                (let ((_%hd111515111543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e111514111539%_)))
                                      (_%tl111516111546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e111514111539%_))))
                                  (if (gx#stx-null? _%tl111516111546%_)
                                      ((lambda (_%L111549%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L111549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L111549%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd111515111543%_)
                                      (_%g111508111522%_ _%g111509111526%_))))
                              (_%g111508111522%_ _%g111509111526%_))))
                      (_%g111508111522%_ _%g111509111526%_)))))
          (_%g111507111564%_ _%$stx111504%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx111568%_)
        (letrec ((_%generate111571%_
                  (lambda (_%tgt111720%_ _%kws111722%_ _%clauses111723%_)
                    (letrec ((_%generate-clause111725%_
                              (lambda (_%hd112660%_ _%E112662%_)
                                (let* ((_%__stx112812112813%_ _%hd112660%_)
                                       (_%g112666112693%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx112812112813%_))))
                                  (let ((_%__kont112815112816%_
                                         (lambda (_%L112789%_ _%L112791%_)
                                           (_%generate1111727%_
                                            _%hd112660%_
                                            _%L112791%_
                                            '#t
                                            _%L112789%_
                                            _%E112662%_)))
                                        (_%__kont112817112818%_
                                         (lambda (_%L112741%_
                                                  _%L112743%_
                                                  _%L112744%_)
                                           (_%generate1111727%_
                                            _%hd112660%_
                                            _%L112744%_
                                            _%L112743%_
                                            _%L112741%_
                                            _%E112662%_)))
                                        (_%__kont112819112820%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx111568%_
                                            _%hd112660%_))))
                                    (if (gx#stx-pair? _%__stx112812112813%_)
                                        (let ((_%e112670112769%_
                                               (gx#syntax-e
                                                _%__stx112812112813%_)))
                                          (let ((_%tl112672112776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112670112769%_)))
                                                (_%hd112671112773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112670112769%_))))
                                            (if (gx#stx-pair?
                                                 _%tl112672112776%_)
                                                (let ((_%e112673112779%_
                                                       (gx#syntax-e
                                                        _%tl112672112776%_)))
                                                  (let ((_%tl112675112786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e112673112779%_)))
                                                        (_%hd112674112783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e112673112779%_))))
                                                    (if (gx#stx-null?
                                                         _%tl112675112786%_)
                                                        (_%__kont112815112816%_
                                                         _%hd112674112783%_
                                                         _%hd112671112773%_)
                                                        (if (gx#stx-pair?
                                                             _%tl112675112786%_)
                                                            (let ((_%e112685112731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl112675112786%_)))
                      (let ((_%tl112687112738%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e112685112731%_)))
                            (_%hd112686112735%_
                             (let ()
                               (declare (not safe))
                               (##car _%e112685112731%_))))
                        (if (gx#stx-null? _%tl112687112738%_)
                            (_%__kont112817112818%_
                             _%hd112686112735%_
                             _%hd112674112783%_
                             _%hd112671112773%_)
                            (_%__kont112819112820%_))))
                    (_%__kont112819112820%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont112819112820%_))))
                                        (_%__kont112819112820%_))))))
                             (_%generate1111727%_
                              (lambda (_%where112113%_
                                       _%hd112115%_
                                       _%fender112116%_
                                       _%body112117%_
                                       _%E112118%_)
                                (letrec ((_%recur112120%_
                                          (lambda (_%hd112123%_
                                                   _%tgt112125%_
                                                   _%K112126%_)
                                            (let* ((_%__stx112858112859%_
                                                    _%hd112123%_)
                                                   (_%g112129112141%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx112858112859%_))))
                                              (let ((_%__kont112861112862%_
                                                     (lambda (_%L112450%_
                                                              _%L112452%_)
                                                       (let* ((_%g112463112471%_
                                                               (lambda (_%g112464112467%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g112464112467%_)))
                      (_%g112462112652%_
                       (lambda (_%g112464112475%_)
                         ((lambda (_%L112478%_)
                            (let* ((_%g112490112498%_
                                    (lambda (_%g112491112494%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g112491112494%_)))
                                   (_%g112489112648%_
                                    (lambda (_%g112491112502%_)
                                      ((lambda (_%L112505%_)
                                         (let* ((_%g112518112526%_
                                                 (lambda (_%g112519112522%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g112519112522%_)))
                                                (_%g112517112644%_
                                                 (lambda (_%g112519112530%_)
                                                   ((lambda (_%L112533%_)
                                                      (let* ((_%g112546112554%_
                                                              (lambda (_%g112547112550%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g112547112550%_)))
                     (_%g112545112640%_
                      (lambda (_%g112547112558%_)
                        ((lambda (_%L112561%_)
                           (let* ((_%g112574112582%_
                                   (lambda (_%g112575112578%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112575112578%_)))
                                  (_%g112573112636%_
                                   (lambda (_%g112575112586%_)
                                     ((lambda (_%L112589%_)
                                        (let* ((_%g112602112610%_
                                                (lambda (_%g112603112606%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g112603112606%_)))
                                               (_%g112601112632%_
                                                (lambda (_%g112603112614%_)
                                                  ((lambda (_%L112617%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L112478%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L112505%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L112478%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L112533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L112505%_ '()))
                                       '()))
                           (cons (cons _%L112561%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L112505%_ '()))
                                             '()))
                                 '()))
                     (cons _%L112589%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L112617%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g112603112614%_))))
                                          (_%g112601112632%_ _%E112118%_)))
                                      _%g112575112586%_))))
                             (_%g112573112636%_
                              (_%recur112120%_
                               _%L112452%_
                               _%L112533%_
                               (_%recur112120%_
                                _%L112450%_
                                _%L112561%_
                                _%K112126%_)))))
                         _%g112547112558%_))))
                (_%g112545112640%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g112519112530%_))))
                                           (_%g112517112644%_
                                            (gx#genident 'hd))))
                                       _%g112491112502%_))))
                              (_%g112489112648%_ (gx#genident 'e))))
                          _%g112464112475%_))))
                 (_%g112462112652%_ _%tgt112125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112863112864%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112123%_)
                                                           (if (gx#underscore?
                                                                _%hd112123%_)
                                                               _%K112126%_
                                                               (if (let ((__tmp112930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g112155112157%_)
                                    (gx#bound-identifier=?
                                     _%g112155112157%_
                                     _%hd112123%_))))
                             (declare (not safe))
                             (__find __tmp112930 _%kws111722%_))
                           (let* ((_%g112163112178%_
                                   (lambda (_%g112164112174%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112164112174%_)))
                                  (_%g112162112231%_
                                   (lambda (_%g112164112182%_)
                                     (if (gx#stx-pair? _%g112164112182%_)
                                         (let ((_%e112167112185%_
                                                (gx#syntax-e
                                                 _%g112164112182%_)))
                                           (let ((_%hd112168112189%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112167112185%_)))
                                                 (_%tl112169112192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112167112185%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112169112192%_)
                                                 (let ((_%e112170112195%_
                                                        (gx#syntax-e
                                                         _%tl112169112192%_)))
                                                   (let ((_%hd112171112199%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112170112195%_)))
                                                         (_%tl112172112202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112170112195%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112172112202%_)
                                                         ((lambda (_%L112205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112207%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L112207%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L112207%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L112205%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K112126%_ (cons _%E112118%_ '())))))
                  _%hd112171112199%_
                  _%hd112168112189%_)
                 (_%g112163112178%_ _%g112164112182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112163112178%_
                                                  _%g112164112182%_))))
                                         (_%g112163112178%_
                                          _%g112164112182%_)))))
                             (_%g112162112231%_
                              (list _%tgt112125%_ _%hd112123%_)))
                           (let* ((_%g112237112252%_
                                   (lambda (_%g112238112248%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112238112248%_)))
                                  (_%g112236112297%_
                                   (lambda (_%g112238112256%_)
                                     (if (gx#stx-pair? _%g112238112256%_)
                                         (let ((_%e112241112259%_
                                                (gx#syntax-e
                                                 _%g112238112256%_)))
                                           (let ((_%hd112242112263%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112241112259%_)))
                                                 (_%tl112243112266%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112241112259%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112243112266%_)
                                                 (let ((_%e112244112269%_
                                                        (gx#syntax-e
                                                         _%tl112243112266%_)))
                                                   (let ((_%hd112245112273%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112244112269%_)))
                                                         (_%tl112246112276%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112244112269%_))))
                                                     (if (gx#stx-null?
                                                          _%tl112246112276%_)
                                                         ((lambda (_%L112279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L112281%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L112279%_ (cons _%L112281%_ '()))
                                      '())
                                (cons _%K112126%_ '()))))
                  _%hd112245112273%_
                  _%hd112242112263%_)
                 (_%g112237112252%_ _%g112238112256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112237112252%_
                                                  _%g112238112256%_))))
                                         (_%g112237112252%_
                                          _%g112238112256%_)))))
                             (_%g112236112297%_
                              (list _%tgt112125%_ _%hd112123%_)))))
                   (if (gx#stx-null? _%hd112123%_)
                       (let* ((_%g112303112311%_
                               (lambda (_%g112304112307%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g112304112307%_)))
                              (_%g112302112330%_
                               (lambda (_%g112304112315%_)
                                 ((lambda (_%L112318%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L112318%_ '()))
                                                (cons _%K112126%_
                                                      (cons _%E112118%_
                                                            '())))))
                                  _%g112304112315%_))))
                         (_%g112302112330%_ _%tgt112125%_))
                       (if (gx#stx-datum? _%hd112123%_)
                           (let* ((_%g112336112355%_
                                   (lambda (_%g112337112351%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g112337112351%_)))
                                  (_%g112335112414%_
                                   (lambda (_%g112337112359%_)
                                     (if (gx#stx-pair? _%g112337112359%_)
                                         (let ((_%e112341112362%_
                                                (gx#syntax-e
                                                 _%g112337112359%_)))
                                           (let ((_%hd112342112366%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e112341112362%_)))
                                                 (_%tl112343112369%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e112341112362%_))))
                                             (if (gx#stx-pair?
                                                  _%tl112343112369%_)
                                                 (let ((_%e112344112372%_
                                                        (gx#syntax-e
                                                         _%tl112343112369%_)))
                                                   (let ((_%hd112345112376%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e112344112372%_)))
                                                         (_%tl112346112379%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e112344112372%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl112346112379%_)
                                                         (let ((_%e112347112382%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl112346112379%_)))
                   (let ((_%hd112348112386%_
                          (let ()
                            (declare (not safe))
                            (##car _%e112347112382%_)))
                         (_%tl112349112389%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e112347112382%_))))
                     (if (gx#stx-null? _%tl112349112389%_)
                         ((lambda (_%L112392%_ _%L112394%_ _%L112395%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L112392%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L112395%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L112394%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K112126%_
                                              (cons _%E112118%_ '())))))
                          _%hd112348112386%_
                          _%hd112345112376%_
                          _%hd112342112366%_)
                         (_%g112336112355%_ _%g112337112359%_))))
                 (_%g112336112355%_ _%g112337112359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g112336112355%_
                                                  _%g112337112359%_))))
                                         (_%g112336112355%_
                                          _%g112337112359%_)))))
                             (_%g112335112414%_
                              (list _%tgt112125%_
                                    _%hd112123%_
                                    (let ((_%e112418%_
                                           (gx#stx-e _%hd112123%_)))
                                      (if (or (keyword? _%e112418%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e112418%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e112418%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx111568%_
                            _%where112113%_
                            _%hd112123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx112858112859%_)
                                                    (let ((_%e112133112440%_
                                                           (gx#syntax-e
                                                            _%__stx112858112859%_)))
                                                      (let ((_%tl112135112447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112133112440%_)))
                    (_%hd112134112444%_
                     (let () (declare (not safe)) (##car _%e112133112440%_))))
                (_%__kont112861112862%_
                 _%tl112135112447%_
                 _%hd112134112444%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont112863112864%_)))))))
                                  (_%recur112120%_
                                   _%hd112115%_
                                   _%tgt111720%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112116%_
                                               (cons _%body112117%_
                                                     (cons _%E112118%_
                                                           '()))))))))
                             (_%generate-clauses111728%_
                              (lambda (_%clauses111851%_)
                                (let _%lp111854%_ ((_%rest111857%_
                                                    _%clauses111851%_)
                                                   (_%E111859%_
                                                    (gx#genident 'E))
                                                   (_%r111860%_ '()))
                                  (let* ((_%__stx112894112895%_ _%rest111857%_)
                                         (_%g111863111875%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx112894112895%_))))
                                    (let ((_%__kont112897112898%_
                                           (lambda (_%L111940%_ _%L111942%_)
                                             (let* ((_%__stx112874112875%_
                                                     _%L111942%_)
                                                    (_%g111954111965%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx112874112875%_))))
                                               (let ((_%__kont112877112878%_
                                                      (lambda (_%L112094%_)
                                                        (if (gx#stx-null?
                                                             _%L111940%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112094%_)
                             (not (gx#stx-null? _%L112094%_)))
                        (cons (cons _%E111859%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112094%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L111942%_))
                                          '()))
                              _%r111860%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx111568%_
                         _%L111942%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx111568%_
                     _%L111942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112879112880%_
                                                      (lambda ()
                                                        (let* ((_%g111976111984%_
                                                                (lambda (_%g111977111980%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g111977111980%_)))
                       (_%g111975112073%_
                        (lambda (_%g111977111988%_)
                          ((lambda (_%L111991%_)
                             (let* ((_%g112007112015%_
                                     (lambda (_%g112008112011%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112008112011%_)))
                                    (_%g112006112069%_
                                     (lambda (_%g112008112019%_)
                                       ((lambda (_%L112022%_)
                                          (let* ((_%g112035112043%_
                                                  (lambda (_%g112036112039%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g112036112039%_)))
                                                 (_%g112034112065%_
                                                  (lambda (_%g112036112047%_)
                                                    ((lambda (_%L112050%_)
                                                       (_%lp111854%_
                                                        _%L111940%_
                                                        _%L111991%_
                                                        (cons (cons _%E111859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L112050%_ '()))
                      _%r111860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g112036112047%_))))
                                            (_%g112034112065%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L112022%_
                                                                '())))
                                              (gx#stx-source _%L111942%_)))))
                                        _%g112008112019%_))))
                               (_%g112006112069%_
                                (_%generate-clause111725%_
                                 _%L111942%_
                                 (cons _%L111991%_ '())))))
                           _%g111977111988%_))))
                  (_%g111975112073%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx112874112875%_)
                                                     (let ((_%e111957112084%_
                                                            (gx#syntax-e
                                                             _%__stx112874112875%_)))
                                                       (let ((_%tl111959112091%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e111957112084%_)))
                     (_%hd111958112088%_
                      (let () (declare (not safe)) (##car _%e111957112084%_))))
                 (if (gx#identifier? _%hd111958112088%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g112931_|
                          _%hd111958112088%_)
                         (_%__kont112877112878%_ _%tl111959112091%_)
                         (_%__kont112879112880%_))
                     (_%__kont112879112880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont112879112880%_))))))
                                          (_%__kont112899112900%_
                                           (lambda ()
                                             (let* ((_%g111886111894%_
                                                     (lambda (_%g111887111890%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g111887111890%_)))
                                                    (_%g111885111919%_
                                                     (lambda (_%g111887111898%_)
                                                       ((lambda (_%L111901%_)
                                                          (cons (cons _%E111859%_
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
                                 (cons _%L111901%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx111568%_))
                                    '()))
                        _%r111860%_))
                _%g111887111898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g111885111919%_
                                                _%tgt111720%_)))))
                                      (if (gx#stx-pair? _%__stx112894112895%_)
                                          (let ((_%e111867111930%_
                                                 (gx#syntax-e
                                                  _%__stx112894112895%_)))
                                            (let ((_%tl111869111937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e111867111930%_)))
                                                  (_%hd111868111934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e111867111930%_))))
                                              (_%__kont112897112898%_
                                               _%tl111869111937%_
                                               _%hd111868111934%_)))
                                          (_%__kont112899112900%_))))))))
                      (let* ((_%bind111730%_
                              (_%generate-clauses111728%_ _%clauses111723%_))
                             (_%g111733111750%_
                              (lambda (_%g111734111746%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g111734111746%_)))
                             (_%g111732111847%_
                              (lambda (_%g111734111754%_)
                                (if (gx#stx-pair/null? _%g111734111754%_)
                                    (let ((_g112932_
                                           (gx#syntax-split-splice
                                            _%g111734111754%_
                                            '0)))
                                      (begin
                                        (let ((_g112933_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g112932_)
                                                     (##vector-length
                                                      _g112932_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g112933_ 2)))
                                              (error "Context expects 2 values"
                                                     _g112933_)))
                                        (let ((_%target111736111757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112932_ 0)))
                                              (_%tl111738111760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g112932_ 1))))
                                          (if (gx#stx-null? _%tl111738111760%_)
                                              (letrec ((_%loop111739111763%_
                                                        (lambda (_%hd111737111767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try111743111770%_)
                  (if (gx#stx-pair? _%hd111737111767%_)
                      (let ((_%e111740111773%_
                             (gx#syntax-e _%hd111737111767%_)))
                        (let ((_%lp-hd111741111777%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e111740111773%_)))
                              (_%lp-tl111742111780%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e111740111773%_))))
                          (_%loop111739111763%_
                           _%lp-tl111742111780%_
                           (cons _%lp-hd111741111777%_
                                 _%bind-try111743111770%_))))
                      (let ((_%bind-try111744111783%_
                             (reverse _%bind-try111743111770%_)))
                        ((lambda (_%L111787%_)
                           (let* ((_%g111805111813%_
                                   (lambda (_%g111806111809%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g111806111809%_)))
                                  (_%g111804111843%_
                                   (lambda (_%g111806111817%_)
                                     ((lambda (_%L111820%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp112934
                                                           (lambda (_%g111834111837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g111835111840%_)
                     (cons _%g111834111837%_ _%g111835111840%_))))
              (declare (not safe))
              (__foldr1 __tmp112934 '() _%L111787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L111820%_
                                                                '())
                                                          '()))))
                                      _%g111806111817%_))))
                             (_%g111804111843%_ (car (last _%bind111730%_)))))
                         _%bind-try111744111783%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop111739111763%_
                                                 _%target111736111757%_
                                                 '()))
                                              (_%g111733111750%_
                                               _%g111734111754%_)))))
                                    (_%g111733111750%_ _%g111734111754%_)))))
                        (_%g111732111847%_ _%bind111730%_))))))
          (let* ((_%g111574111593%_
                  (lambda (_%g111575111589%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g111575111589%_)))
                 (_%g111573111716%_
                  (lambda (_%g111575111597%_)
                    (if (gx#stx-pair? _%g111575111597%_)
                        (let ((_%e111579111600%_
                               (gx#syntax-e _%g111575111597%_)))
                          (let ((_%hd111580111604%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e111579111600%_)))
                                (_%tl111581111607%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e111579111600%_))))
                            (if (gx#stx-pair? _%tl111581111607%_)
                                (let ((_%e111582111610%_
                                       (gx#syntax-e _%tl111581111607%_)))
                                  (let ((_%hd111583111614%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e111582111610%_)))
                                        (_%tl111584111617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e111582111610%_))))
                                    (if (gx#stx-pair? _%tl111584111617%_)
                                        (let ((_%e111585111620%_
                                               (gx#syntax-e
                                                _%tl111584111617%_)))
                                          (let ((_%hd111586111624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e111585111620%_)))
                                                (_%tl111587111627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e111585111620%_))))
                                            ((lambda (_%L111630%_
                                                      _%L111632%_
                                                      _%L111633%_)
                                               (if (and (gx#identifier-list?
                                                         _%L111632%_)
                                                        (gx#stx-list?
                                                         _%L111630%_))
                                                   (let* ((_%g111651111659%_
                                                           (lambda (_%g111652111655%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g111652111655%_)))
                                                          (_%g111650111712%_
                                                           (lambda (_%g111652111663%_)
                                                             ((lambda (_%L111666%_)
                                                                (let* ((_%g111678111686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g111679111682%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g111679111682%_)))
                               (_%g111677111708%_
                                (lambda (_%g111679111690%_)
                                  ((lambda (_%L111693%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L111666%_
                                                             (cons _%L111633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L111693%_ '()))))
                                   _%g111679111690%_))))
                          (_%g111677111708%_
                           (_%generate111571%_
                            _%L111666%_
                            (gx#syntax->list _%L111632%_)
                            _%L111630%_))))
                      _%g111652111663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g111650111712%_
                                                      (gx#genident 'e)))
                                                   (_%g111574111593%_
                                                    _%g111575111597%_)))
                                             _%tl111587111627%_
                                             _%hd111586111624%_
                                             _%hd111583111614%_)))
                                        (_%g111574111593%_
                                         _%g111575111597%_))))
                                (_%g111574111593%_ _%g111575111597%_))))
                        (_%g111574111593%_ _%g111575111597%_)))))
            (_%g111573111716%_ _%stx111568%_)))))))
