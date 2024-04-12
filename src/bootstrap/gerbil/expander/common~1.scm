(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g114946_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114948_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114950_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114952_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114953_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114955_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114956_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114958_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114959_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114961_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114962_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g114964_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj114942
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
          (##unchecked-structure-set! __obj114942 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '#f '11 '#f '#f))
        (let ((__tmp114945 |gx[1]#_g114946_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114945 '12 '#f '#f))
        (let ((__tmp114947 |gx[1]#_g114948_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114947 '13 '#f '#f))
        (let ((__tmp114949 |gx[1]#_g114950_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114949 '14 '#f '#f))
        (let ((__tmp114951
               (cons (cons 'e |gx[1]#_g114952_|)
                     (cons (cons 'source |gx[1]#_g114953_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114951 '15 '#f '#f))
        (let ((__tmp114954
               (cons (cons 'e |gx[1]#_g114955_|)
                     (cons (cons 'source |gx[1]#_g114956_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114954 '16 '#f '#f))
        (let ((__tmp114957
               (cons (cons 'e |gx[1]#_g114958_|)
                     (cons (cons 'source |gx[1]#_g114959_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114957 '17 '#f '#f))
        (let ((__tmp114960
               (cons (cons 'e |gx[1]#_g114961_|)
                     (cons (cons 'source |gx[1]#_g114962_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 __tmp114960 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj114942 '() '20 '#f '#f))
        __obj114942))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx113537%_)
        (let* ((_%g113541113555%_
                (lambda (_%g113542113551%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g113542113551%_)))
               (_%g113540113597%_
                (lambda (_%g113542113559%_)
                  (if (gx#stx-pair? _%g113542113559%_)
                      (let ((_%e113544113562%_
                             (gx#syntax-e _%g113542113559%_)))
                        (let ((_%hd113545113566%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113544113562%_)))
                              (_%tl113546113569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113544113562%_))))
                          (if (gx#stx-pair? _%tl113546113569%_)
                              (let ((_%e113547113572%_
                                     (gx#syntax-e _%tl113546113569%_)))
                                (let ((_%hd113548113576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e113547113572%_)))
                                      (_%tl113549113579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e113547113572%_))))
                                  (if (gx#stx-null? _%tl113549113579%_)
                                      ((lambda (_%L113582%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L113582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L113582%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd113548113576%_)
                                      (_%g113541113555%_ _%g113542113559%_))))
                              (_%g113541113555%_ _%g113542113559%_))))
                      (_%g113541113555%_ _%g113542113559%_)))))
          (_%g113540113597%_ _%$stx113537%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx113601%_)
        (letrec ((_%generate113604%_
                  (lambda (_%tgt113753%_ _%kws113755%_ _%clauses113756%_)
                    (letrec ((_%generate-clause113758%_
                              (lambda (_%hd114693%_ _%E114695%_)
                                (let* ((_%__stx114845114846%_ _%hd114693%_)
                                       (_%g114699114726%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx114845114846%_))))
                                  (let ((_%__kont114848114849%_
                                         (lambda (_%L114822%_ _%L114824%_)
                                           (_%generate1113760%_
                                            _%hd114693%_
                                            _%L114824%_
                                            '#t
                                            _%L114822%_
                                            _%E114695%_)))
                                        (_%__kont114850114851%_
                                         (lambda (_%L114774%_
                                                  _%L114776%_
                                                  _%L114777%_)
                                           (_%generate1113760%_
                                            _%hd114693%_
                                            _%L114777%_
                                            _%L114776%_
                                            _%L114774%_
                                            _%E114695%_)))
                                        (_%__kont114852114853%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx113601%_
                                            _%hd114693%_))))
                                    (if (gx#stx-pair? _%__stx114845114846%_)
                                        (let ((_%e114703114802%_
                                               (gx#syntax-e
                                                _%__stx114845114846%_)))
                                          (let ((_%tl114705114809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e114703114802%_)))
                                                (_%hd114704114806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e114703114802%_))))
                                            (if (gx#stx-pair?
                                                 _%tl114705114809%_)
                                                (let ((_%e114706114812%_
                                                       (gx#syntax-e
                                                        _%tl114705114809%_)))
                                                  (let ((_%tl114708114819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e114706114812%_)))
                                                        (_%hd114707114816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e114706114812%_))))
                                                    (if (gx#stx-null?
                                                         _%tl114708114819%_)
                                                        (_%__kont114848114849%_
                                                         _%hd114707114816%_
                                                         _%hd114704114806%_)
                                                        (if (gx#stx-pair?
                                                             _%tl114708114819%_)
                                                            (let ((_%e114718114764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl114708114819%_)))
                      (let ((_%tl114720114771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e114718114764%_)))
                            (_%hd114719114768%_
                             (let ()
                               (declare (not safe))
                               (##car _%e114718114764%_))))
                        (if (gx#stx-null? _%tl114720114771%_)
                            (_%__kont114850114851%_
                             _%hd114719114768%_
                             _%hd114707114816%_
                             _%hd114704114806%_)
                            (_%__kont114852114853%_))))
                    (_%__kont114852114853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont114852114853%_))))
                                        (_%__kont114852114853%_))))))
                             (_%generate1113760%_
                              (lambda (_%where114146%_
                                       _%hd114148%_
                                       _%fender114149%_
                                       _%body114150%_
                                       _%E114151%_)
                                (letrec ((_%recur114153%_
                                          (lambda (_%hd114156%_
                                                   _%tgt114158%_
                                                   _%K114159%_)
                                            (let* ((_%__stx114891114892%_
                                                    _%hd114156%_)
                                                   (_%g114162114174%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx114891114892%_))))
                                              (let ((_%__kont114894114895%_
                                                     (lambda (_%L114483%_
                                                              _%L114485%_)
                                                       (let* ((_%g114496114504%_
                                                               (lambda (_%g114497114500%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g114497114500%_)))
                      (_%g114495114685%_
                       (lambda (_%g114497114508%_)
                         ((lambda (_%L114511%_)
                            (let* ((_%g114523114531%_
                                    (lambda (_%g114524114527%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g114524114527%_)))
                                   (_%g114522114681%_
                                    (lambda (_%g114524114535%_)
                                      ((lambda (_%L114538%_)
                                         (let* ((_%g114551114559%_
                                                 (lambda (_%g114552114555%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g114552114555%_)))
                                                (_%g114550114677%_
                                                 (lambda (_%g114552114563%_)
                                                   ((lambda (_%L114566%_)
                                                      (let* ((_%g114579114587%_
                                                              (lambda (_%g114580114583%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g114580114583%_)))
                     (_%g114578114673%_
                      (lambda (_%g114580114591%_)
                        ((lambda (_%L114594%_)
                           (let* ((_%g114607114615%_
                                   (lambda (_%g114608114611%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114608114611%_)))
                                  (_%g114606114669%_
                                   (lambda (_%g114608114619%_)
                                     ((lambda (_%L114622%_)
                                        (let* ((_%g114635114643%_
                                                (lambda (_%g114636114639%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g114636114639%_)))
                                               (_%g114634114665%_
                                                (lambda (_%g114636114647%_)
                                                  ((lambda (_%L114650%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L114511%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L114538%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L114511%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L114566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L114538%_ '()))
                                       '()))
                           (cons (cons _%L114594%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L114538%_ '()))
                                             '()))
                                 '()))
                     (cons _%L114622%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L114650%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g114636114647%_))))
                                          (_%g114634114665%_ _%E114151%_)))
                                      _%g114608114619%_))))
                             (_%g114606114669%_
                              (_%recur114153%_
                               _%L114485%_
                               _%L114566%_
                               (_%recur114153%_
                                _%L114483%_
                                _%L114594%_
                                _%K114159%_)))))
                         _%g114580114591%_))))
                (_%g114578114673%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g114552114563%_))))
                                           (_%g114550114677%_
                                            (gx#genident 'hd))))
                                       _%g114524114535%_))))
                              (_%g114522114681%_ (gx#genident 'e))))
                          _%g114497114508%_))))
                 (_%g114495114685%_ _%tgt114158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114896114897%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd114156%_)
                                                           (if (gx#underscore?
                                                                _%hd114156%_)
                                                               _%K114159%_
                                                               (if (let ((__tmp114963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g114188114190%_)
                                    (gx#bound-identifier=?
                                     _%g114188114190%_
                                     _%hd114156%_))))
                             (declare (not safe))
                             (__find __tmp114963 _%kws113755%_))
                           (let* ((_%g114196114211%_
                                   (lambda (_%g114197114207%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114197114207%_)))
                                  (_%g114195114264%_
                                   (lambda (_%g114197114215%_)
                                     (if (gx#stx-pair? _%g114197114215%_)
                                         (let ((_%e114200114218%_
                                                (gx#syntax-e
                                                 _%g114197114215%_)))
                                           (let ((_%hd114201114222%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114200114218%_)))
                                                 (_%tl114202114225%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114200114218%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114202114225%_)
                                                 (let ((_%e114203114228%_
                                                        (gx#syntax-e
                                                         _%tl114202114225%_)))
                                                   (let ((_%hd114204114232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114203114228%_)))
                                                         (_%tl114205114235%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114203114228%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114205114235%_)
                                                         ((lambda (_%L114238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114240%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L114240%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L114240%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L114238%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K114159%_ (cons _%E114151%_ '())))))
                  _%hd114204114232%_
                  _%hd114201114222%_)
                 (_%g114196114211%_ _%g114197114215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114196114211%_
                                                  _%g114197114215%_))))
                                         (_%g114196114211%_
                                          _%g114197114215%_)))))
                             (_%g114195114264%_
                              (list _%tgt114158%_ _%hd114156%_)))
                           (let* ((_%g114270114285%_
                                   (lambda (_%g114271114281%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114271114281%_)))
                                  (_%g114269114330%_
                                   (lambda (_%g114271114289%_)
                                     (if (gx#stx-pair? _%g114271114289%_)
                                         (let ((_%e114274114292%_
                                                (gx#syntax-e
                                                 _%g114271114289%_)))
                                           (let ((_%hd114275114296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114274114292%_)))
                                                 (_%tl114276114299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114274114292%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114276114299%_)
                                                 (let ((_%e114277114302%_
                                                        (gx#syntax-e
                                                         _%tl114276114299%_)))
                                                   (let ((_%hd114278114306%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114277114302%_)))
                                                         (_%tl114279114309%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114277114302%_))))
                                                     (if (gx#stx-null?
                                                          _%tl114279114309%_)
                                                         ((lambda (_%L114312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L114314%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L114312%_ (cons _%L114314%_ '()))
                                      '())
                                (cons _%K114159%_ '()))))
                  _%hd114278114306%_
                  _%hd114275114296%_)
                 (_%g114270114285%_ _%g114271114289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114270114285%_
                                                  _%g114271114289%_))))
                                         (_%g114270114285%_
                                          _%g114271114289%_)))))
                             (_%g114269114330%_
                              (list _%tgt114158%_ _%hd114156%_)))))
                   (if (gx#stx-null? _%hd114156%_)
                       (let* ((_%g114336114344%_
                               (lambda (_%g114337114340%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g114337114340%_)))
                              (_%g114335114363%_
                               (lambda (_%g114337114348%_)
                                 ((lambda (_%L114351%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L114351%_ '()))
                                                (cons _%K114159%_
                                                      (cons _%E114151%_
                                                            '())))))
                                  _%g114337114348%_))))
                         (_%g114335114363%_ _%tgt114158%_))
                       (if (gx#stx-datum? _%hd114156%_)
                           (let* ((_%g114369114388%_
                                   (lambda (_%g114370114384%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g114370114384%_)))
                                  (_%g114368114447%_
                                   (lambda (_%g114370114392%_)
                                     (if (gx#stx-pair? _%g114370114392%_)
                                         (let ((_%e114374114395%_
                                                (gx#syntax-e
                                                 _%g114370114392%_)))
                                           (let ((_%hd114375114399%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e114374114395%_)))
                                                 (_%tl114376114402%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e114374114395%_))))
                                             (if (gx#stx-pair?
                                                  _%tl114376114402%_)
                                                 (let ((_%e114377114405%_
                                                        (gx#syntax-e
                                                         _%tl114376114402%_)))
                                                   (let ((_%hd114378114409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e114377114405%_)))
                                                         (_%tl114379114412%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e114377114405%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl114379114412%_)
                                                         (let ((_%e114380114415%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl114379114412%_)))
                   (let ((_%hd114381114419%_
                          (let ()
                            (declare (not safe))
                            (##car _%e114380114415%_)))
                         (_%tl114382114422%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e114380114415%_))))
                     (if (gx#stx-null? _%tl114382114422%_)
                         ((lambda (_%L114425%_ _%L114427%_ _%L114428%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L114425%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L114428%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L114427%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K114159%_
                                              (cons _%E114151%_ '())))))
                          _%hd114381114419%_
                          _%hd114378114409%_
                          _%hd114375114399%_)
                         (_%g114369114388%_ _%g114370114392%_))))
                 (_%g114369114388%_ _%g114370114392%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g114369114388%_
                                                  _%g114370114392%_))))
                                         (_%g114369114388%_
                                          _%g114370114392%_)))))
                             (_%g114368114447%_
                              (list _%tgt114158%_
                                    _%hd114156%_
                                    (let ((_%e114451%_
                                           (gx#stx-e _%hd114156%_)))
                                      (if (or (keyword? _%e114451%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e114451%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e114451%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx113601%_
                            _%where114146%_
                            _%hd114156%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx114891114892%_)
                                                    (let ((_%e114166114473%_
                                                           (gx#syntax-e
                                                            _%__stx114891114892%_)))
                                                      (let ((_%tl114168114480%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e114166114473%_)))
                    (_%hd114167114477%_
                     (let () (declare (not safe)) (##car _%e114166114473%_))))
                (_%__kont114894114895%_
                 _%tl114168114480%_
                 _%hd114167114477%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont114896114897%_)))))))
                                  (_%recur114153%_
                                   _%hd114148%_
                                   _%tgt113753%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender114149%_
                                               (cons _%body114150%_
                                                     (cons _%E114151%_
                                                           '()))))))))
                             (_%generate-clauses113761%_
                              (lambda (_%clauses113884%_)
                                (let _%lp113887%_ ((_%rest113890%_
                                                    _%clauses113884%_)
                                                   (_%E113892%_
                                                    (gx#genident 'E))
                                                   (_%r113893%_ '()))
                                  (let* ((_%__stx114927114928%_ _%rest113890%_)
                                         (_%g113896113908%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx114927114928%_))))
                                    (let ((_%__kont114930114931%_
                                           (lambda (_%L113973%_ _%L113975%_)
                                             (let* ((_%__stx114907114908%_
                                                     _%L113975%_)
                                                    (_%g113987113998%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx114907114908%_))))
                                               (let ((_%__kont114910114911%_
                                                      (lambda (_%L114127%_)
                                                        (if (gx#stx-null?
                                                             _%L113973%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L114127%_)
                             (not (gx#stx-null? _%L114127%_)))
                        (cons (cons _%E113892%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L114127%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L113975%_))
                                          '()))
                              _%r113893%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx113601%_
                         _%L113975%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx113601%_
                     _%L113975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114912114913%_
                                                      (lambda ()
                                                        (let* ((_%g114009114017%_
                                                                (lambda (_%g114010114013%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g114010114013%_)))
                       (_%g114008114106%_
                        (lambda (_%g114010114021%_)
                          ((lambda (_%L114024%_)
                             (let* ((_%g114040114048%_
                                     (lambda (_%g114041114044%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g114041114044%_)))
                                    (_%g114039114102%_
                                     (lambda (_%g114041114052%_)
                                       ((lambda (_%L114055%_)
                                          (let* ((_%g114068114076%_
                                                  (lambda (_%g114069114072%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g114069114072%_)))
                                                 (_%g114067114098%_
                                                  (lambda (_%g114069114080%_)
                                                    ((lambda (_%L114083%_)
                                                       (_%lp113887%_
                                                        _%L113973%_
                                                        _%L114024%_
                                                        (cons (cons _%E113892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L114083%_ '()))
                      _%r113893%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g114069114080%_))))
                                            (_%g114067114098%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L114055%_
                                                                '())))
                                              (gx#stx-source _%L113975%_)))))
                                        _%g114041114052%_))))
                               (_%g114039114102%_
                                (_%generate-clause113758%_
                                 _%L113975%_
                                 (cons _%L114024%_ '())))))
                           _%g114010114021%_))))
                  (_%g114008114106%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx114907114908%_)
                                                     (let ((_%e113990114117%_
                                                            (gx#syntax-e
                                                             _%__stx114907114908%_)))
                                                       (let ((_%tl113992114124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e113990114117%_)))
                     (_%hd113991114121%_
                      (let () (declare (not safe)) (##car _%e113990114117%_))))
                 (if (gx#identifier? _%hd113991114121%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g114964_|
                          _%hd113991114121%_)
                         (_%__kont114910114911%_ _%tl113992114124%_)
                         (_%__kont114912114913%_))
                     (_%__kont114912114913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont114912114913%_))))))
                                          (_%__kont114932114933%_
                                           (lambda ()
                                             (let* ((_%g113919113927%_
                                                     (lambda (_%g113920113923%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113920113923%_)))
                                                    (_%g113918113952%_
                                                     (lambda (_%g113920113931%_)
                                                       ((lambda (_%L113934%_)
                                                          (cons (cons _%E113892%_
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
                                 (cons _%L113934%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx113601%_))
                                    '()))
                        _%r113893%_))
                _%g113920113931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113918113952%_
                                                _%tgt113753%_)))))
                                      (if (gx#stx-pair? _%__stx114927114928%_)
                                          (let ((_%e113900113963%_
                                                 (gx#syntax-e
                                                  _%__stx114927114928%_)))
                                            (let ((_%tl113902113970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e113900113963%_)))
                                                  (_%hd113901113967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e113900113963%_))))
                                              (_%__kont114930114931%_
                                               _%tl113902113970%_
                                               _%hd113901113967%_)))
                                          (_%__kont114932114933%_))))))))
                      (let* ((_%bind113763%_
                              (_%generate-clauses113761%_ _%clauses113756%_))
                             (_%g113766113783%_
                              (lambda (_%g113767113779%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g113767113779%_)))
                             (_%g113765113880%_
                              (lambda (_%g113767113787%_)
                                (if (gx#stx-pair/null? _%g113767113787%_)
                                    (let ((_g114965_
                                           (gx#syntax-split-splice
                                            _%g113767113787%_
                                            '0)))
                                      (begin
                                        (let ((_g114966_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g114965_)
                                                     (##vector-length
                                                      _g114965_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g114966_ 2)))
                                              (error "Context expects 2 values"
                                                     _g114966_)))
                                        (let ((_%target113769113790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114965_ 0)))
                                              (_%tl113771113793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g114965_ 1))))
                                          (if (gx#stx-null? _%tl113771113793%_)
                                              (letrec ((_%loop113772113796%_
                                                        (lambda (_%hd113770113800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try113776113803%_)
                  (if (gx#stx-pair? _%hd113770113800%_)
                      (let ((_%e113773113806%_
                             (gx#syntax-e _%hd113770113800%_)))
                        (let ((_%lp-hd113774113810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e113773113806%_)))
                              (_%lp-tl113775113813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e113773113806%_))))
                          (_%loop113772113796%_
                           _%lp-tl113775113813%_
                           (cons _%lp-hd113774113810%_
                                 _%bind-try113776113803%_))))
                      (let ((_%bind-try113777113816%_
                             (reverse _%bind-try113776113803%_)))
                        ((lambda (_%L113820%_)
                           (let* ((_%g113838113846%_
                                   (lambda (_%g113839113842%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g113839113842%_)))
                                  (_%g113837113876%_
                                   (lambda (_%g113839113850%_)
                                     ((lambda (_%L113853%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp114967
                                                           (lambda (_%g113867113870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g113868113873%_)
                     (cons _%g113867113870%_ _%g113868113873%_))))
              (declare (not safe))
              (__foldr1 __tmp114967 '() _%L113820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L113853%_
                                                                '())
                                                          '()))))
                                      _%g113839113850%_))))
                             (_%g113837113876%_ (car (last _%bind113763%_)))))
                         _%bind-try113777113816%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop113772113796%_
                                                 _%target113769113790%_
                                                 '()))
                                              (_%g113766113783%_
                                               _%g113767113787%_)))))
                                    (_%g113766113783%_ _%g113767113787%_)))))
                        (_%g113765113880%_ _%bind113763%_))))))
          (let* ((_%g113607113626%_
                  (lambda (_%g113608113622%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g113608113622%_)))
                 (_%g113606113749%_
                  (lambda (_%g113608113630%_)
                    (if (gx#stx-pair? _%g113608113630%_)
                        (let ((_%e113612113633%_
                               (gx#syntax-e _%g113608113630%_)))
                          (let ((_%hd113613113637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e113612113633%_)))
                                (_%tl113614113640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e113612113633%_))))
                            (if (gx#stx-pair? _%tl113614113640%_)
                                (let ((_%e113615113643%_
                                       (gx#syntax-e _%tl113614113640%_)))
                                  (let ((_%hd113616113647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e113615113643%_)))
                                        (_%tl113617113650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e113615113643%_))))
                                    (if (gx#stx-pair? _%tl113617113650%_)
                                        (let ((_%e113618113653%_
                                               (gx#syntax-e
                                                _%tl113617113650%_)))
                                          (let ((_%hd113619113657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113618113653%_)))
                                                (_%tl113620113660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113618113653%_))))
                                            ((lambda (_%L113663%_
                                                      _%L113665%_
                                                      _%L113666%_)
                                               (if (and (gx#identifier-list?
                                                         _%L113665%_)
                                                        (gx#stx-list?
                                                         _%L113663%_))
                                                   (let* ((_%g113684113692%_
                                                           (lambda (_%g113685113688%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g113685113688%_)))
                                                          (_%g113683113745%_
                                                           (lambda (_%g113685113696%_)
                                                             ((lambda (_%L113699%_)
                                                                (let* ((_%g113711113719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g113712113715%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g113712113715%_)))
                               (_%g113710113741%_
                                (lambda (_%g113712113723%_)
                                  ((lambda (_%L113726%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L113699%_
                                                             (cons _%L113666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L113726%_ '()))))
                                   _%g113712113723%_))))
                          (_%g113710113741%_
                           (_%generate113604%_
                            _%L113699%_
                            (gx#syntax->list _%L113665%_)
                            _%L113663%_))))
                      _%g113685113696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113683113745%_
                                                      (gx#genident 'e)))
                                                   (_%g113607113626%_
                                                    _%g113608113630%_)))
                                             _%tl113620113660%_
                                             _%hd113619113657%_
                                             _%hd113616113647%_)))
                                        (_%g113607113626%_
                                         _%g113608113630%_))))
                                (_%g113607113626%_ _%g113608113630%_))))
                        (_%g113607113626%_ _%g113608113630%_)))))
            (_%g113606113749%_ _%stx113601%_)))))))
