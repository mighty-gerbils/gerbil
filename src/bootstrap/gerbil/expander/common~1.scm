(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117944_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117946_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117948_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117950_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117951_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117953_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117954_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117956_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117957_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117959_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117960_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g117962_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117940
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
          (##unchecked-structure-set! __obj117940 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '#f '11 '#f '#f))
        (let ((__tmp117943 |gx[1]#_g117944_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117943 '12 '#f '#f))
        (let ((__tmp117945 |gx[1]#_g117946_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117945 '13 '#f '#f))
        (let ((__tmp117947 |gx[1]#_g117948_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117947 '14 '#f '#f))
        (let ((__tmp117949
               (cons (cons 'e |gx[1]#_g117950_|)
                     (cons (cons 'source |gx[1]#_g117951_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117949 '15 '#f '#f))
        (let ((__tmp117952
               (cons (cons 'e |gx[1]#_g117953_|)
                     (cons (cons 'source |gx[1]#_g117954_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117952 '16 '#f '#f))
        (let ((__tmp117955
               (cons (cons 'e |gx[1]#_g117956_|)
                     (cons (cons 'source |gx[1]#_g117957_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117955 '17 '#f '#f))
        (let ((__tmp117958
               (cons (cons 'e |gx[1]#_g117959_|)
                     (cons (cons 'source |gx[1]#_g117960_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 __tmp117958 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117940 '() '20 '#f '#f))
        __obj117940))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116535%_)
        (let* ((_%g116539116553%_
                (lambda (_%g116540116549%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116540116549%_)))
               (_%g116538116595%_
                (lambda (_%g116540116557%_)
                  (if (gx#stx-pair? _%g116540116557%_)
                      (let ((_%e116542116560%_
                             (gx#syntax-e _%g116540116557%_)))
                        (let ((_%hd116543116564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116542116560%_)))
                              (_%tl116544116567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116542116560%_))))
                          (if (gx#stx-pair? _%tl116544116567%_)
                              (let ((_%e116545116570%_
                                     (gx#syntax-e _%tl116544116567%_)))
                                (let ((_%hd116546116574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116545116570%_)))
                                      (_%tl116547116577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116545116570%_))))
                                  (if (gx#stx-null? _%tl116547116577%_)
                                      ((lambda (_%L116580%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116580%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116546116574%_)
                                      (_%g116539116553%_ _%g116540116557%_))))
                              (_%g116539116553%_ _%g116540116557%_))))
                      (_%g116539116553%_ _%g116540116557%_)))))
          (_%g116538116595%_ _%$stx116535%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116599%_)
        (letrec ((_%generate116602%_
                  (lambda (_%tgt116751%_ _%kws116753%_ _%clauses116754%_)
                    (letrec ((_%generate-clause116756%_
                              (lambda (_%hd117691%_ _%E117693%_)
                                (let* ((_%__stx117843117844%_ _%hd117691%_)
                                       (_%g117697117724%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117843117844%_))))
                                  (let ((_%__kont117846117847%_
                                         (lambda (_%L117820%_ _%L117822%_)
                                           (_%generate1116758%_
                                            _%hd117691%_
                                            _%L117822%_
                                            '#t
                                            _%L117820%_
                                            _%E117693%_)))
                                        (_%__kont117848117849%_
                                         (lambda (_%L117772%_
                                                  _%L117774%_
                                                  _%L117775%_)
                                           (_%generate1116758%_
                                            _%hd117691%_
                                            _%L117775%_
                                            _%L117774%_
                                            _%L117772%_
                                            _%E117693%_)))
                                        (_%__kont117850117851%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116599%_
                                            _%hd117691%_))))
                                    (if (gx#stx-pair? _%__stx117843117844%_)
                                        (let ((_%e117701117800%_
                                               (gx#syntax-e
                                                _%__stx117843117844%_)))
                                          (let ((_%tl117703117807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117701117800%_)))
                                                (_%hd117702117804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117701117800%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117703117807%_)
                                                (let ((_%e117704117810%_
                                                       (gx#syntax-e
                                                        _%tl117703117807%_)))
                                                  (let ((_%tl117706117817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117704117810%_)))
                                                        (_%hd117705117814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117704117810%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117706117817%_)
                                                        (_%__kont117846117847%_
                                                         _%hd117705117814%_
                                                         _%hd117702117804%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117706117817%_)
                                                            (let ((_%e117716117762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117706117817%_)))
                      (let ((_%tl117718117769%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117716117762%_)))
                            (_%hd117717117766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117716117762%_))))
                        (if (gx#stx-null? _%tl117718117769%_)
                            (_%__kont117848117849%_
                             _%hd117717117766%_
                             _%hd117705117814%_
                             _%hd117702117804%_)
                            (_%__kont117850117851%_))))
                    (_%__kont117850117851%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117850117851%_))))
                                        (_%__kont117850117851%_))))))
                             (_%generate1116758%_
                              (lambda (_%where117144%_
                                       _%hd117146%_
                                       _%fender117147%_
                                       _%body117148%_
                                       _%E117149%_)
                                (letrec ((_%recur117151%_
                                          (lambda (_%hd117154%_
                                                   _%tgt117156%_
                                                   _%K117157%_)
                                            (let* ((_%__stx117889117890%_
                                                    _%hd117154%_)
                                                   (_%g117160117172%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117889117890%_))))
                                              (let ((_%__kont117892117893%_
                                                     (lambda (_%L117481%_
                                                              _%L117483%_)
                                                       (let* ((_%g117494117502%_
                                                               (lambda (_%g117495117498%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117495117498%_)))
                      (_%g117493117683%_
                       (lambda (_%g117495117506%_)
                         ((lambda (_%L117509%_)
                            (let* ((_%g117521117529%_
                                    (lambda (_%g117522117525%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117522117525%_)))
                                   (_%g117520117679%_
                                    (lambda (_%g117522117533%_)
                                      ((lambda (_%L117536%_)
                                         (let* ((_%g117549117557%_
                                                 (lambda (_%g117550117553%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117550117553%_)))
                                                (_%g117548117675%_
                                                 (lambda (_%g117550117561%_)
                                                   ((lambda (_%L117564%_)
                                                      (let* ((_%g117577117585%_
                                                              (lambda (_%g117578117581%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117578117581%_)))
                     (_%g117576117671%_
                      (lambda (_%g117578117589%_)
                        ((lambda (_%L117592%_)
                           (let* ((_%g117605117613%_
                                   (lambda (_%g117606117609%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117606117609%_)))
                                  (_%g117604117667%_
                                   (lambda (_%g117606117617%_)
                                     ((lambda (_%L117620%_)
                                        (let* ((_%g117633117641%_
                                                (lambda (_%g117634117637%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117634117637%_)))
                                               (_%g117632117663%_
                                                (lambda (_%g117634117645%_)
                                                  ((lambda (_%L117648%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117509%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117536%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117509%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117536%_ '()))
                                       '()))
                           (cons (cons _%L117592%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117536%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117620%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117648%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117634117645%_))))
                                          (_%g117632117663%_ _%E117149%_)))
                                      _%g117606117617%_))))
                             (_%g117604117667%_
                              (_%recur117151%_
                               _%L117483%_
                               _%L117564%_
                               (_%recur117151%_
                                _%L117481%_
                                _%L117592%_
                                _%K117157%_)))))
                         _%g117578117589%_))))
                (_%g117576117671%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117550117561%_))))
                                           (_%g117548117675%_
                                            (gx#genident 'hd))))
                                       _%g117522117533%_))))
                              (_%g117520117679%_ (gx#genident 'e))))
                          _%g117495117506%_))))
                 (_%g117493117683%_ _%tgt117156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117894117895%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117154%_)
                                                           (if (gx#underscore?
                                                                _%hd117154%_)
                                                               _%K117157%_
                                                               (if (let ((__tmp117961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117186117188%_)
                                    (gx#bound-identifier=?
                                     _%g117186117188%_
                                     _%hd117154%_))))
                             (declare (not safe))
                             (__find __tmp117961 _%kws116753%_))
                           (let* ((_%g117194117209%_
                                   (lambda (_%g117195117205%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117195117205%_)))
                                  (_%g117193117262%_
                                   (lambda (_%g117195117213%_)
                                     (if (gx#stx-pair? _%g117195117213%_)
                                         (let ((_%e117198117216%_
                                                (gx#syntax-e
                                                 _%g117195117213%_)))
                                           (let ((_%hd117199117220%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117198117216%_)))
                                                 (_%tl117200117223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117198117216%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117200117223%_)
                                                 (let ((_%e117201117226%_
                                                        (gx#syntax-e
                                                         _%tl117200117223%_)))
                                                   (let ((_%hd117202117230%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117201117226%_)))
                                                         (_%tl117203117233%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117201117226%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117203117233%_)
                                                         ((lambda (_%L117236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117238%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117238%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117238%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117236%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117157%_ (cons _%E117149%_ '())))))
                  _%hd117202117230%_
                  _%hd117199117220%_)
                 (_%g117194117209%_ _%g117195117213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117194117209%_
                                                  _%g117195117213%_))))
                                         (_%g117194117209%_
                                          _%g117195117213%_)))))
                             (_%g117193117262%_
                              (list _%tgt117156%_ _%hd117154%_)))
                           (let* ((_%g117268117283%_
                                   (lambda (_%g117269117279%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117269117279%_)))
                                  (_%g117267117328%_
                                   (lambda (_%g117269117287%_)
                                     (if (gx#stx-pair? _%g117269117287%_)
                                         (let ((_%e117272117290%_
                                                (gx#syntax-e
                                                 _%g117269117287%_)))
                                           (let ((_%hd117273117294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117272117290%_)))
                                                 (_%tl117274117297%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117272117290%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117274117297%_)
                                                 (let ((_%e117275117300%_
                                                        (gx#syntax-e
                                                         _%tl117274117297%_)))
                                                   (let ((_%hd117276117304%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117275117300%_)))
                                                         (_%tl117277117307%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117275117300%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117277117307%_)
                                                         ((lambda (_%L117310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117312%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117310%_ (cons _%L117312%_ '()))
                                      '())
                                (cons _%K117157%_ '()))))
                  _%hd117276117304%_
                  _%hd117273117294%_)
                 (_%g117268117283%_ _%g117269117287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117268117283%_
                                                  _%g117269117287%_))))
                                         (_%g117268117283%_
                                          _%g117269117287%_)))))
                             (_%g117267117328%_
                              (list _%tgt117156%_ _%hd117154%_)))))
                   (if (gx#stx-null? _%hd117154%_)
                       (let* ((_%g117334117342%_
                               (lambda (_%g117335117338%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117335117338%_)))
                              (_%g117333117361%_
                               (lambda (_%g117335117346%_)
                                 ((lambda (_%L117349%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117349%_ '()))
                                                (cons _%K117157%_
                                                      (cons _%E117149%_
                                                            '())))))
                                  _%g117335117346%_))))
                         (_%g117333117361%_ _%tgt117156%_))
                       (if (gx#stx-datum? _%hd117154%_)
                           (let* ((_%g117367117386%_
                                   (lambda (_%g117368117382%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117368117382%_)))
                                  (_%g117366117445%_
                                   (lambda (_%g117368117390%_)
                                     (if (gx#stx-pair? _%g117368117390%_)
                                         (let ((_%e117372117393%_
                                                (gx#syntax-e
                                                 _%g117368117390%_)))
                                           (let ((_%hd117373117397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117372117393%_)))
                                                 (_%tl117374117400%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117372117393%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117374117400%_)
                                                 (let ((_%e117375117403%_
                                                        (gx#syntax-e
                                                         _%tl117374117400%_)))
                                                   (let ((_%hd117376117407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117375117403%_)))
                                                         (_%tl117377117410%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117375117403%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117377117410%_)
                                                         (let ((_%e117378117413%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117377117410%_)))
                   (let ((_%hd117379117417%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117378117413%_)))
                         (_%tl117380117420%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117378117413%_))))
                     (if (gx#stx-null? _%tl117380117420%_)
                         ((lambda (_%L117423%_ _%L117425%_ _%L117426%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117423%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117426%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117425%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117157%_
                                              (cons _%E117149%_ '())))))
                          _%hd117379117417%_
                          _%hd117376117407%_
                          _%hd117373117397%_)
                         (_%g117367117386%_ _%g117368117390%_))))
                 (_%g117367117386%_ _%g117368117390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117367117386%_
                                                  _%g117368117390%_))))
                                         (_%g117367117386%_
                                          _%g117368117390%_)))))
                             (_%g117366117445%_
                              (list _%tgt117156%_
                                    _%hd117154%_
                                    (let ((_%e117449%_
                                           (gx#stx-e _%hd117154%_)))
                                      (if (or (keyword? _%e117449%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117449%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117449%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116599%_
                            _%where117144%_
                            _%hd117154%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117889117890%_)
                                                    (let ((_%e117164117471%_
                                                           (gx#syntax-e
                                                            _%__stx117889117890%_)))
                                                      (let ((_%tl117166117478%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117164117471%_)))
                    (_%hd117165117475%_
                     (let () (declare (not safe)) (##car _%e117164117471%_))))
                (_%__kont117892117893%_
                 _%tl117166117478%_
                 _%hd117165117475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117894117895%_)))))))
                                  (_%recur117151%_
                                   _%hd117146%_
                                   _%tgt116751%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117147%_
                                               (cons _%body117148%_
                                                     (cons _%E117149%_
                                                           '()))))))))
                             (_%generate-clauses116759%_
                              (lambda (_%clauses116882%_)
                                (let _%lp116885%_ ((_%rest116888%_
                                                    _%clauses116882%_)
                                                   (_%E116890%_
                                                    (gx#genident 'E))
                                                   (_%r116891%_ '()))
                                  (let* ((_%__stx117925117926%_ _%rest116888%_)
                                         (_%g116894116906%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117925117926%_))))
                                    (let ((_%__kont117928117929%_
                                           (lambda (_%L116971%_ _%L116973%_)
                                             (let* ((_%__stx117905117906%_
                                                     _%L116973%_)
                                                    (_%g116985116996%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117905117906%_))))
                                               (let ((_%__kont117908117909%_
                                                      (lambda (_%L117125%_)
                                                        (if (gx#stx-null?
                                                             _%L116971%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117125%_)
                             (not (gx#stx-null? _%L117125%_)))
                        (cons (cons _%E116890%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117125%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L116973%_))
                                          '()))
                              _%r116891%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116599%_
                         _%L116973%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116599%_
                     _%L116973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117910117911%_
                                                      (lambda ()
                                                        (let* ((_%g117007117015%_
                                                                (lambda (_%g117008117011%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117008117011%_)))
                       (_%g117006117104%_
                        (lambda (_%g117008117019%_)
                          ((lambda (_%L117022%_)
                             (let* ((_%g117038117046%_
                                     (lambda (_%g117039117042%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117039117042%_)))
                                    (_%g117037117100%_
                                     (lambda (_%g117039117050%_)
                                       ((lambda (_%L117053%_)
                                          (let* ((_%g117066117074%_
                                                  (lambda (_%g117067117070%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117067117070%_)))
                                                 (_%g117065117096%_
                                                  (lambda (_%g117067117078%_)
                                                    ((lambda (_%L117081%_)
                                                       (_%lp116885%_
                                                        _%L116971%_
                                                        _%L117022%_
                                                        (cons (cons _%E116890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117081%_ '()))
                      _%r116891%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117067117078%_))))
                                            (_%g117065117096%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117053%_
                                                                '())))
                                              (gx#stx-source _%L116973%_)))))
                                        _%g117039117050%_))))
                               (_%g117037117100%_
                                (_%generate-clause116756%_
                                 _%L116973%_
                                 (cons _%L117022%_ '())))))
                           _%g117008117019%_))))
                  (_%g117006117104%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117905117906%_)
                                                     (let ((_%e116988117115%_
                                                            (gx#syntax-e
                                                             _%__stx117905117906%_)))
                                                       (let ((_%tl116990117122%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e116988117115%_)))
                     (_%hd116989117119%_
                      (let () (declare (not safe)) (##car _%e116988117115%_))))
                 (if (gx#identifier? _%hd116989117119%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g117962_|
                          _%hd116989117119%_)
                         (_%__kont117908117909%_ _%tl116990117122%_)
                         (_%__kont117910117911%_))
                     (_%__kont117910117911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117910117911%_))))))
                                          (_%__kont117930117931%_
                                           (lambda ()
                                             (let* ((_%g116917116925%_
                                                     (lambda (_%g116918116921%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116918116921%_)))
                                                    (_%g116916116950%_
                                                     (lambda (_%g116918116929%_)
                                                       ((lambda (_%L116932%_)
                                                          (cons (cons _%E116890%_
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
                                 (cons _%L116932%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116599%_))
                                    '()))
                        _%r116891%_))
                _%g116918116929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116916116950%_
                                                _%tgt116751%_)))))
                                      (if (gx#stx-pair? _%__stx117925117926%_)
                                          (let ((_%e116898116961%_
                                                 (gx#syntax-e
                                                  _%__stx117925117926%_)))
                                            (let ((_%tl116900116968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116898116961%_)))
                                                  (_%hd116899116965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116898116961%_))))
                                              (_%__kont117928117929%_
                                               _%tl116900116968%_
                                               _%hd116899116965%_)))
                                          (_%__kont117930117931%_))))))))
                      (let* ((_%bind116761%_
                              (_%generate-clauses116759%_ _%clauses116754%_))
                             (_%g116764116781%_
                              (lambda (_%g116765116777%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116765116777%_)))
                             (_%g116763116878%_
                              (lambda (_%g116765116785%_)
                                (if (gx#stx-pair/null? _%g116765116785%_)
                                    (let ((_g117963_
                                           (gx#syntax-split-splice
                                            _%g116765116785%_
                                            '0)))
                                      (begin
                                        (let ((_g117964_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g117963_)
                                                     (##values-length
                                                      _g117963_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g117964_ 2)))
                                              (error "Context expects 2 values"
                                                     _g117964_)))
                                        (let ((_%target116767116788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117963_ 0)))
                                              (_%tl116769116791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g117963_ 1))))
                                          (if (gx#stx-null? _%tl116769116791%_)
                                              (letrec ((_%loop116770116794%_
                                                        (lambda (_%hd116768116798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116774116801%_)
                  (if (gx#stx-pair? _%hd116768116798%_)
                      (let ((_%e116771116804%_
                             (gx#syntax-e _%hd116768116798%_)))
                        (let ((_%lp-hd116772116808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116771116804%_)))
                              (_%lp-tl116773116811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116771116804%_))))
                          (_%loop116770116794%_
                           _%lp-tl116773116811%_
                           (cons _%lp-hd116772116808%_
                                 _%bind-try116774116801%_))))
                      (let ((_%bind-try116775116814%_
                             (reverse _%bind-try116774116801%_)))
                        ((lambda (_%L116818%_)
                           (let* ((_%g116836116844%_
                                   (lambda (_%g116837116840%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116837116840%_)))
                                  (_%g116835116874%_
                                   (lambda (_%g116837116848%_)
                                     ((lambda (_%L116851%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp117965
                                                           (lambda (_%g116865116868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116866116871%_)
                     (cons _%g116865116868%_ _%g116866116871%_))))
              (declare (not safe))
              (__foldr1 __tmp117965 '() _%L116818%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116851%_
                                                                '())
                                                          '()))))
                                      _%g116837116848%_))))
                             (_%g116835116874%_ (car (last _%bind116761%_)))))
                         _%bind-try116775116814%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116770116794%_
                                                 _%target116767116788%_
                                                 '()))
                                              (_%g116764116781%_
                                               _%g116765116785%_)))))
                                    (_%g116764116781%_ _%g116765116785%_)))))
                        (_%g116763116878%_ _%bind116761%_))))))
          (let* ((_%g116605116624%_
                  (lambda (_%g116606116620%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116606116620%_)))
                 (_%g116604116747%_
                  (lambda (_%g116606116628%_)
                    (if (gx#stx-pair? _%g116606116628%_)
                        (let ((_%e116610116631%_
                               (gx#syntax-e _%g116606116628%_)))
                          (let ((_%hd116611116635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116610116631%_)))
                                (_%tl116612116638%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116610116631%_))))
                            (if (gx#stx-pair? _%tl116612116638%_)
                                (let ((_%e116613116641%_
                                       (gx#syntax-e _%tl116612116638%_)))
                                  (let ((_%hd116614116645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116613116641%_)))
                                        (_%tl116615116648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116613116641%_))))
                                    (if (gx#stx-pair? _%tl116615116648%_)
                                        (let ((_%e116616116651%_
                                               (gx#syntax-e
                                                _%tl116615116648%_)))
                                          (let ((_%hd116617116655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116616116651%_)))
                                                (_%tl116618116658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116616116651%_))))
                                            ((lambda (_%L116661%_
                                                      _%L116663%_
                                                      _%L116664%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116663%_)
                                                        (gx#stx-list?
                                                         _%L116661%_))
                                                   (let* ((_%g116682116690%_
                                                           (lambda (_%g116683116686%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116683116686%_)))
                                                          (_%g116681116743%_
                                                           (lambda (_%g116683116694%_)
                                                             ((lambda (_%L116697%_)
                                                                (let* ((_%g116709116717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116710116713%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116710116713%_)))
                               (_%g116708116739%_
                                (lambda (_%g116710116721%_)
                                  ((lambda (_%L116724%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116697%_
                                                             (cons _%L116664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116724%_ '()))))
                                   _%g116710116721%_))))
                          (_%g116708116739%_
                           (_%generate116602%_
                            _%L116697%_
                            (gx#syntax->list _%L116663%_)
                            _%L116661%_))))
                      _%g116683116694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116681116743%_
                                                      (gx#genident 'e)))
                                                   (_%g116605116624%_
                                                    _%g116606116628%_)))
                                             _%tl116618116658%_
                                             _%hd116617116655%_
                                             _%hd116614116645%_)))
                                        (_%g116605116624%_
                                         _%g116606116628%_))))
                                (_%g116605116624%_ _%g116606116628%_))))
                        (_%g116605116624%_ _%g116606116628%_)))))
            (_%g116604116747%_ _%stx116599%_)))))))
