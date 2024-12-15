(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117950_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117952_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117954_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117956_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117957_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117959_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117960_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117962_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117963_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117965_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117966_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117968_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117946
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
          (##unchecked-structure-set! __obj117946 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '#f '11 '#f '#f))
        (let ((__tmp117949 |gx[1]#_g117950_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117949 '12 '#f '#f))
        (let ((__tmp117951 |gx[1]#_g117952_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117951 '13 '#f '#f))
        (let ((__tmp117953 |gx[1]#_g117954_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117953 '14 '#f '#f))
        (let ((__tmp117955
               (cons (cons 'e |gx[1]#_g117956_|)
                     (cons (cons 'source |gx[1]#_g117957_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117955 '15 '#f '#f))
        (let ((__tmp117958
               (cons (cons 'e |gx[1]#_g117959_|)
                     (cons (cons 'source |gx[1]#_g117960_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117958 '16 '#f '#f))
        (let ((__tmp117961
               (cons (cons 'e |gx[1]#_g117962_|)
                     (cons (cons 'source |gx[1]#_g117963_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117961 '17 '#f '#f))
        (let ((__tmp117964
               (cons (cons 'e |gx[1]#_g117965_|)
                     (cons (cons 'source |gx[1]#_g117966_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 __tmp117964 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117946 '() '20 '#f '#f))
        __obj117946))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116541%_)
        (let* ((_%g116545116559%_
                (lambda (_%g116546116555%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116546116555%_)))
               (_%g116544116601%_
                (lambda (_%g116546116563%_)
                  (if (gx#stx-pair? _%g116546116563%_)
                      (let ((_%e116548116566%_
                             (gx#syntax-e _%g116546116563%_)))
                        (let ((_%hd116549116570%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116548116566%_)))
                              (_%tl116550116573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116548116566%_))))
                          (if (gx#stx-pair? _%tl116550116573%_)
                              (let ((_%e116551116576%_
                                     (gx#syntax-e _%tl116550116573%_)))
                                (let ((_%hd116552116580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116551116576%_)))
                                      (_%tl116553116583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116551116576%_))))
                                  (if (gx#stx-null? _%tl116553116583%_)
                                      ((lambda (_%L116586%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116586%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116552116580%_)
                                      (_%g116545116559%_ _%g116546116563%_))))
                              (_%g116545116559%_ _%g116546116563%_))))
                      (_%g116545116559%_ _%g116546116563%_)))))
          (_%g116544116601%_ _%$stx116541%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116605%_)
        (letrec ((_%generate116608%_
                  (lambda (_%tgt116757%_ _%kws116759%_ _%clauses116760%_)
                    (letrec ((_%generate-clause116762%_
                              (lambda (_%hd117697%_ _%E117699%_)
                                (let* ((_%__stx117849117850%_ _%hd117697%_)
                                       (_%g117703117730%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117849117850%_))))
                                  (let ((_%__kont117852117853%_
                                         (lambda (_%L117826%_ _%L117828%_)
                                           (_%generate1116764%_
                                            _%hd117697%_
                                            _%L117828%_
                                            '#t
                                            _%L117826%_
                                            _%E117699%_)))
                                        (_%__kont117854117855%_
                                         (lambda (_%L117778%_
                                                  _%L117780%_
                                                  _%L117781%_)
                                           (_%generate1116764%_
                                            _%hd117697%_
                                            _%L117781%_
                                            _%L117780%_
                                            _%L117778%_
                                            _%E117699%_)))
                                        (_%__kont117856117857%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116605%_
                                            _%hd117697%_))))
                                    (if (gx#stx-pair? _%__stx117849117850%_)
                                        (let ((_%e117707117806%_
                                               (gx#syntax-e
                                                _%__stx117849117850%_)))
                                          (let ((_%tl117709117813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117707117806%_)))
                                                (_%hd117708117810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117707117806%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117709117813%_)
                                                (let ((_%e117710117816%_
                                                       (gx#syntax-e
                                                        _%tl117709117813%_)))
                                                  (let ((_%tl117712117823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117710117816%_)))
                                                        (_%hd117711117820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117710117816%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117712117823%_)
                                                        (_%__kont117852117853%_
                                                         _%hd117711117820%_
                                                         _%hd117708117810%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117712117823%_)
                                                            (let ((_%e117722117768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117712117823%_)))
                      (let ((_%tl117724117775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117722117768%_)))
                            (_%hd117723117772%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117722117768%_))))
                        (if (gx#stx-null? _%tl117724117775%_)
                            (_%__kont117854117855%_
                             _%hd117723117772%_
                             _%hd117711117820%_
                             _%hd117708117810%_)
                            (_%__kont117856117857%_))))
                    (_%__kont117856117857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117856117857%_))))
                                        (_%__kont117856117857%_))))))
                             (_%generate1116764%_
                              (lambda (_%where117150%_
                                       _%hd117152%_
                                       _%fender117153%_
                                       _%body117154%_
                                       _%E117155%_)
                                (letrec ((_%recur117157%_
                                          (lambda (_%hd117160%_
                                                   _%tgt117162%_
                                                   _%K117163%_)
                                            (let* ((_%__stx117895117896%_
                                                    _%hd117160%_)
                                                   (_%g117166117178%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117895117896%_))))
                                              (let ((_%__kont117898117899%_
                                                     (lambda (_%L117487%_
                                                              _%L117489%_)
                                                       (let* ((_%g117500117508%_
                                                               (lambda (_%g117501117504%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117501117504%_)))
                      (_%g117499117689%_
                       (lambda (_%g117501117512%_)
                         ((lambda (_%L117515%_)
                            (let* ((_%g117527117535%_
                                    (lambda (_%g117528117531%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117528117531%_)))
                                   (_%g117526117685%_
                                    (lambda (_%g117528117539%_)
                                      ((lambda (_%L117542%_)
                                         (let* ((_%g117555117563%_
                                                 (lambda (_%g117556117559%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117556117559%_)))
                                                (_%g117554117681%_
                                                 (lambda (_%g117556117567%_)
                                                   ((lambda (_%L117570%_)
                                                      (let* ((_%g117583117591%_
                                                              (lambda (_%g117584117587%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117584117587%_)))
                     (_%g117582117677%_
                      (lambda (_%g117584117595%_)
                        ((lambda (_%L117598%_)
                           (let* ((_%g117611117619%_
                                   (lambda (_%g117612117615%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117612117615%_)))
                                  (_%g117610117673%_
                                   (lambda (_%g117612117623%_)
                                     ((lambda (_%L117626%_)
                                        (let* ((_%g117639117647%_
                                                (lambda (_%g117640117643%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117640117643%_)))
                                               (_%g117638117669%_
                                                (lambda (_%g117640117651%_)
                                                  ((lambda (_%L117654%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117515%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117542%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117515%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117542%_ '()))
                                       '()))
                           (cons (cons _%L117598%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117542%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117626%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117654%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117640117651%_))))
                                          (_%g117638117669%_ _%E117155%_)))
                                      _%g117612117623%_))))
                             (_%g117610117673%_
                              (_%recur117157%_
                               _%L117489%_
                               _%L117570%_
                               (_%recur117157%_
                                _%L117487%_
                                _%L117598%_
                                _%K117163%_)))))
                         _%g117584117595%_))))
                (_%g117582117677%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117556117567%_))))
                                           (_%g117554117681%_
                                            (gx#genident 'hd))))
                                       _%g117528117539%_))))
                              (_%g117526117685%_ (gx#genident 'e))))
                          _%g117501117512%_))))
                 (_%g117499117689%_ _%tgt117162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117900117901%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117160%_)
                                                           (if (gx#underscore?
                                                                _%hd117160%_)
                                                               _%K117163%_
                                                               (if (let ((__tmp117967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117192117194%_)
                                    (gx#bound-identifier=?
                                     _%g117192117194%_
                                     _%hd117160%_))))
                             (declare (not safe))
                             (__find __tmp117967 _%kws116759%_))
                           (let* ((_%g117200117215%_
                                   (lambda (_%g117201117211%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117201117211%_)))
                                  (_%g117199117268%_
                                   (lambda (_%g117201117219%_)
                                     (if (gx#stx-pair? _%g117201117219%_)
                                         (let ((_%e117204117222%_
                                                (gx#syntax-e
                                                 _%g117201117219%_)))
                                           (let ((_%hd117205117226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117204117222%_)))
                                                 (_%tl117206117229%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117204117222%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117206117229%_)
                                                 (let ((_%e117207117232%_
                                                        (gx#syntax-e
                                                         _%tl117206117229%_)))
                                                   (let ((_%hd117208117236%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117207117232%_)))
                                                         (_%tl117209117239%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117207117232%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117209117239%_)
                                                         ((lambda (_%L117242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117244%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117244%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117244%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117242%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117163%_ (cons _%E117155%_ '())))))
                  _%hd117208117236%_
                  _%hd117205117226%_)
                 (_%g117200117215%_ _%g117201117219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117200117215%_
                                                  _%g117201117219%_))))
                                         (_%g117200117215%_
                                          _%g117201117219%_)))))
                             (_%g117199117268%_
                              (list _%tgt117162%_ _%hd117160%_)))
                           (let* ((_%g117274117289%_
                                   (lambda (_%g117275117285%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117275117285%_)))
                                  (_%g117273117334%_
                                   (lambda (_%g117275117293%_)
                                     (if (gx#stx-pair? _%g117275117293%_)
                                         (let ((_%e117278117296%_
                                                (gx#syntax-e
                                                 _%g117275117293%_)))
                                           (let ((_%hd117279117300%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117278117296%_)))
                                                 (_%tl117280117303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117278117296%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117280117303%_)
                                                 (let ((_%e117281117306%_
                                                        (gx#syntax-e
                                                         _%tl117280117303%_)))
                                                   (let ((_%hd117282117310%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117281117306%_)))
                                                         (_%tl117283117313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117281117306%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117283117313%_)
                                                         ((lambda (_%L117316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117318%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117316%_ (cons _%L117318%_ '()))
                                      '())
                                (cons _%K117163%_ '()))))
                  _%hd117282117310%_
                  _%hd117279117300%_)
                 (_%g117274117289%_ _%g117275117293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117274117289%_
                                                  _%g117275117293%_))))
                                         (_%g117274117289%_
                                          _%g117275117293%_)))))
                             (_%g117273117334%_
                              (list _%tgt117162%_ _%hd117160%_)))))
                   (if (gx#stx-null? _%hd117160%_)
                       (let* ((_%g117340117348%_
                               (lambda (_%g117341117344%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117341117344%_)))
                              (_%g117339117367%_
                               (lambda (_%g117341117352%_)
                                 ((lambda (_%L117355%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117355%_ '()))
                                                (cons _%K117163%_
                                                      (cons _%E117155%_
                                                            '())))))
                                  _%g117341117352%_))))
                         (_%g117339117367%_ _%tgt117162%_))
                       (if (gx#stx-datum? _%hd117160%_)
                           (let* ((_%g117373117392%_
                                   (lambda (_%g117374117388%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117374117388%_)))
                                  (_%g117372117451%_
                                   (lambda (_%g117374117396%_)
                                     (if (gx#stx-pair? _%g117374117396%_)
                                         (let ((_%e117378117399%_
                                                (gx#syntax-e
                                                 _%g117374117396%_)))
                                           (let ((_%hd117379117403%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117378117399%_)))
                                                 (_%tl117380117406%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117378117399%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117380117406%_)
                                                 (let ((_%e117381117409%_
                                                        (gx#syntax-e
                                                         _%tl117380117406%_)))
                                                   (let ((_%hd117382117413%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117381117409%_)))
                                                         (_%tl117383117416%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117381117409%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117383117416%_)
                                                         (let ((_%e117384117419%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117383117416%_)))
                   (let ((_%hd117385117423%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117384117419%_)))
                         (_%tl117386117426%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117384117419%_))))
                     (if (gx#stx-null? _%tl117386117426%_)
                         ((lambda (_%L117429%_ _%L117431%_ _%L117432%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117429%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117432%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117431%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117163%_
                                              (cons _%E117155%_ '())))))
                          _%hd117385117423%_
                          _%hd117382117413%_
                          _%hd117379117403%_)
                         (_%g117373117392%_ _%g117374117396%_))))
                 (_%g117373117392%_ _%g117374117396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117373117392%_
                                                  _%g117374117396%_))))
                                         (_%g117373117392%_
                                          _%g117374117396%_)))))
                             (_%g117372117451%_
                              (list _%tgt117162%_
                                    _%hd117160%_
                                    (let ((_%e117455%_
                                           (gx#stx-e _%hd117160%_)))
                                      (if (or (keyword? _%e117455%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117455%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117455%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116605%_
                            _%where117150%_
                            _%hd117160%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117895117896%_)
                                                    (let ((_%e117170117477%_
                                                           (gx#syntax-e
                                                            _%__stx117895117896%_)))
                                                      (let ((_%tl117172117484%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117170117477%_)))
                    (_%hd117171117481%_
                     (let () (declare (not safe)) (##car _%e117170117477%_))))
                (_%__kont117898117899%_
                 _%tl117172117484%_
                 _%hd117171117481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117900117901%_)))))))
                                  (_%recur117157%_
                                   _%hd117152%_
                                   _%tgt116757%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117153%_
                                               (cons _%body117154%_
                                                     (cons _%E117155%_
                                                           '()))))))))
                             (_%generate-clauses116765%_
                              (lambda (_%clauses116888%_)
                                (let _%lp116891%_ ((_%rest116894%_
                                                    _%clauses116888%_)
                                                   (_%E116896%_
                                                    (gx#genident 'E))
                                                   (_%r116897%_ '()))
                                  (let* ((_%__stx117931117932%_ _%rest116894%_)
                                         (_%g116900116912%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117931117932%_))))
                                    (let ((_%__kont117934117935%_
                                           (lambda (_%L116977%_ _%L116979%_)
                                             (let* ((_%__stx117911117912%_
                                                     _%L116979%_)
                                                    (_%g116991117002%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117911117912%_))))
                                               (let ((_%__kont117914117915%_
                                                      (lambda (_%L117131%_)
                                                        (if (gx#stx-null?
                                                             _%L116977%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117131%_)
                             (not (gx#stx-null? _%L117131%_)))
                        (cons (cons _%E116896%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117131%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L116979%_))
                                          '()))
                              _%r116897%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116605%_
                         _%L116979%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116605%_
                     _%L116979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117916117917%_
                                                      (lambda ()
                                                        (let* ((_%g117013117021%_
                                                                (lambda (_%g117014117017%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117014117017%_)))
                       (_%g117012117110%_
                        (lambda (_%g117014117025%_)
                          ((lambda (_%L117028%_)
                             (let* ((_%g117044117052%_
                                     (lambda (_%g117045117048%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117045117048%_)))
                                    (_%g117043117106%_
                                     (lambda (_%g117045117056%_)
                                       ((lambda (_%L117059%_)
                                          (let* ((_%g117072117080%_
                                                  (lambda (_%g117073117076%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117073117076%_)))
                                                 (_%g117071117102%_
                                                  (lambda (_%g117073117084%_)
                                                    ((lambda (_%L117087%_)
                                                       (_%lp116891%_
                                                        _%L116977%_
                                                        _%L117028%_
                                                        (cons (cons _%E116896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117087%_ '()))
                      _%r116897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117073117084%_))))
                                            (_%g117071117102%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117059%_
                                                                '())))
                                              (gx#stx-source _%L116979%_)))))
                                        _%g117045117056%_))))
                               (_%g117043117106%_
                                (_%generate-clause116762%_
                                 _%L116979%_
                                 (cons _%L117028%_ '())))))
                           _%g117014117025%_))))
                  (_%g117012117110%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117911117912%_)
                                                     (let ((_%e116994117121%_
                                                            (gx#syntax-e
                                                             _%__stx117911117912%_)))
                                                       (let ((_%tl116996117128%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e116994117121%_)))
                     (_%hd116995117125%_
                      (let () (declare (not safe)) (##car _%e116994117121%_))))
                 (if (gx#identifier? _%hd116995117125%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117968_|
                          _%hd116995117125%_)
                         (_%__kont117914117915%_ _%tl116996117128%_)
                         (_%__kont117916117917%_))
                     (_%__kont117916117917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117916117917%_))))))
                                          (_%__kont117936117937%_
                                           (lambda ()
                                             (let* ((_%g116923116931%_
                                                     (lambda (_%g116924116927%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116924116927%_)))
                                                    (_%g116922116956%_
                                                     (lambda (_%g116924116935%_)
                                                       ((lambda (_%L116938%_)
                                                          (cons (cons _%E116896%_
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
                                 (cons _%L116938%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116605%_))
                                    '()))
                        _%r116897%_))
                _%g116924116935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116922116956%_
                                                _%tgt116757%_)))))
                                      (if (gx#stx-pair? _%__stx117931117932%_)
                                          (let ((_%e116904116967%_
                                                 (gx#syntax-e
                                                  _%__stx117931117932%_)))
                                            (let ((_%tl116906116974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116904116967%_)))
                                                  (_%hd116905116971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116904116967%_))))
                                              (_%__kont117934117935%_
                                               _%tl116906116974%_
                                               _%hd116905116971%_)))
                                          (_%__kont117936117937%_))))))))
                      (let* ((_%bind116767%_
                              (_%generate-clauses116765%_ _%clauses116760%_))
                             (_%g116770116787%_
                              (lambda (_%g116771116783%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116771116783%_)))
                             (_%g116769116884%_
                              (lambda (_%g116771116791%_)
                                (if (gx#stx-pair/null? _%g116771116791%_)
                                    (let ((_g117969_
                                           (gx#syntax-split-splice
                                            _%g116771116791%_
                                            '0)))
                                      (begin
                                        (let ((_g117970_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117969_)
                                                     (##values-length
                                                      _g117969_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117970_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117970_)))
                                        (let ((_%target116773116794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117969_ 0)))
                                              (_%tl116775116797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117969_ 1))))
                                          (if (gx#stx-null? _%tl116775116797%_)
                                              (letrec ((_%loop116776116800%_
                                                        (lambda (_%hd116774116804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116780116807%_)
                  (if (gx#stx-pair? _%hd116774116804%_)
                      (let ((_%e116777116810%_
                             (gx#syntax-e _%hd116774116804%_)))
                        (let ((_%lp-hd116778116814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116777116810%_)))
                              (_%lp-tl116779116817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116777116810%_))))
                          (_%loop116776116800%_
                           _%lp-tl116779116817%_
                           (cons _%lp-hd116778116814%_
                                 _%bind-try116780116807%_))))
                      (let ((_%bind-try116781116820%_
                             (reverse _%bind-try116780116807%_)))
                        ((lambda (_%L116824%_)
                           (let* ((_%g116842116850%_
                                   (lambda (_%g116843116846%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116843116846%_)))
                                  (_%g116841116880%_
                                   (lambda (_%g116843116854%_)
                                     ((lambda (_%L116857%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp117971
                                                           (lambda (_%g116871116874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116872116877%_)
                     (cons _%g116871116874%_ _%g116872116877%_))))
              (declare (not safe))
              (__foldr1 __tmp117971 '() _%L116824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116857%_
                                                                '())
                                                          '()))))
                                      _%g116843116854%_))))
                             (_%g116841116880%_ (car (last _%bind116767%_)))))
                         _%bind-try116781116820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116776116800%_
                                                 _%target116773116794%_
                                                 '()))
                                              (_%g116770116787%_
                                               _%g116771116791%_)))))
                                    (_%g116770116787%_ _%g116771116791%_)))))
                        (_%g116769116884%_ _%bind116767%_))))))
          (let* ((_%g116611116630%_
                  (lambda (_%g116612116626%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116612116626%_)))
                 (_%g116610116753%_
                  (lambda (_%g116612116634%_)
                    (if (gx#stx-pair? _%g116612116634%_)
                        (let ((_%e116616116637%_
                               (gx#syntax-e _%g116612116634%_)))
                          (let ((_%hd116617116641%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116616116637%_)))
                                (_%tl116618116644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116616116637%_))))
                            (if (gx#stx-pair? _%tl116618116644%_)
                                (let ((_%e116619116647%_
                                       (gx#syntax-e _%tl116618116644%_)))
                                  (let ((_%hd116620116651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116619116647%_)))
                                        (_%tl116621116654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116619116647%_))))
                                    (if (gx#stx-pair? _%tl116621116654%_)
                                        (let ((_%e116622116657%_
                                               (gx#syntax-e
                                                _%tl116621116654%_)))
                                          (let ((_%hd116623116661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116622116657%_)))
                                                (_%tl116624116664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116622116657%_))))
                                            ((lambda (_%L116667%_
                                                      _%L116669%_
                                                      _%L116670%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116669%_)
                                                        (gx#stx-list?
                                                         _%L116667%_))
                                                   (let* ((_%g116688116696%_
                                                           (lambda (_%g116689116692%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116689116692%_)))
                                                          (_%g116687116749%_
                                                           (lambda (_%g116689116700%_)
                                                             ((lambda (_%L116703%_)
                                                                (let* ((_%g116715116723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116716116719%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116716116719%_)))
                               (_%g116714116745%_
                                (lambda (_%g116716116727%_)
                                  ((lambda (_%L116730%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116703%_
                                                             (cons _%L116670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116730%_ '()))))
                                   _%g116716116727%_))))
                          (_%g116714116745%_
                           (_%generate116608%_
                            _%L116703%_
                            (gx#syntax->list _%L116669%_)
                            _%L116667%_))))
                      _%g116689116700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116687116749%_
                                                      (gx#genident 'e)))
                                                   (_%g116611116630%_
                                                    _%g116612116634%_)))
                                             _%tl116624116664%_
                                             _%hd116623116661%_
                                             _%hd116620116651%_)))
                                        (_%g116611116630%_
                                         _%g116612116634%_))))
                                (_%g116611116630%_ _%g116612116634%_))))
                        (_%g116611116630%_ _%g116612116634%_)))))
            (_%g116610116753%_ _%stx116605%_)))))))
