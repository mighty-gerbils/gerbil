(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g117998_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118000_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118002_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118004_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118005_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118007_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118008_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118010_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118011_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118013_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118014_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g118016_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj117994
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
          (##unchecked-structure-set! __obj117994 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '#f '11 '#f '#f))
        (let ((__tmp117997 |gx[1]#_g117998_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp117997 '12 '#f '#f))
        (let ((__tmp117999 |gx[1]#_g118000_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp117999 '13 '#f '#f))
        (let ((__tmp118001 |gx[1]#_g118002_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp118001 '14 '#f '#f))
        (let ((__tmp118003
               (cons (cons 'e |gx[1]#_g118004_|)
                     (cons (cons 'source |gx[1]#_g118005_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp118003 '15 '#f '#f))
        (let ((__tmp118006
               (cons (cons 'e |gx[1]#_g118007_|)
                     (cons (cons 'source |gx[1]#_g118008_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp118006 '16 '#f '#f))
        (let ((__tmp118009
               (cons (cons 'e |gx[1]#_g118010_|)
                     (cons (cons 'source |gx[1]#_g118011_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp118009 '17 '#f '#f))
        (let ((__tmp118012
               (cons (cons 'e |gx[1]#_g118013_|)
                     (cons (cons 'source |gx[1]#_g118014_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 __tmp118012 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj117994 '() '20 '#f '#f))
        __obj117994))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx116589%_)
        (let* ((_%g116593116607%_
                (lambda (_%g116594116603%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g116594116603%_)))
               (_%g116592116649%_
                (lambda (_%g116594116611%_)
                  (if (gx#stx-pair? _%g116594116611%_)
                      (let ((_%e116596116614%_
                             (gx#syntax-e _%g116594116611%_)))
                        (let ((_%hd116597116618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116596116614%_)))
                              (_%tl116598116621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116596116614%_))))
                          (if (gx#stx-pair? _%tl116598116621%_)
                              (let ((_%e116599116624%_
                                     (gx#syntax-e _%tl116598116621%_)))
                                (let ((_%hd116600116628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e116599116624%_)))
                                      (_%tl116601116631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e116599116624%_))))
                                  (if (gx#stx-null? _%tl116601116631%_)
                                      ((lambda (_%L116634%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L116634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L116634%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd116600116628%_)
                                      (_%g116593116607%_ _%g116594116611%_))))
                              (_%g116593116607%_ _%g116594116611%_))))
                      (_%g116593116607%_ _%g116594116611%_)))))
          (_%g116592116649%_ _%$stx116589%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx116653%_)
        (letrec ((_%generate116656%_
                  (lambda (_%tgt116805%_ _%kws116807%_ _%clauses116808%_)
                    (letrec ((_%generate-clause116810%_
                              (lambda (_%hd117745%_ _%E117747%_)
                                (let* ((_%__stx117897117898%_ _%hd117745%_)
                                       (_%g117751117778%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx117897117898%_))))
                                  (let ((_%__kont117900117901%_
                                         (lambda (_%L117874%_ _%L117876%_)
                                           (_%generate1116812%_
                                            _%hd117745%_
                                            _%L117876%_
                                            '#t
                                            _%L117874%_
                                            _%E117747%_)))
                                        (_%__kont117902117903%_
                                         (lambda (_%L117826%_
                                                  _%L117828%_
                                                  _%L117829%_)
                                           (_%generate1116812%_
                                            _%hd117745%_
                                            _%L117829%_
                                            _%L117828%_
                                            _%L117826%_
                                            _%E117747%_)))
                                        (_%__kont117904117905%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx116653%_
                                            _%hd117745%_))))
                                    (if (gx#stx-pair? _%__stx117897117898%_)
                                        (let ((_%e117755117854%_
                                               (gx#syntax-e
                                                _%__stx117897117898%_)))
                                          (let ((_%tl117757117861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e117755117854%_)))
                                                (_%hd117756117858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e117755117854%_))))
                                            (if (gx#stx-pair?
                                                 _%tl117757117861%_)
                                                (let ((_%e117758117864%_
                                                       (gx#syntax-e
                                                        _%tl117757117861%_)))
                                                  (let ((_%tl117760117871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e117758117864%_)))
                                                        (_%hd117759117868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e117758117864%_))))
                                                    (if (gx#stx-null?
                                                         _%tl117760117871%_)
                                                        (_%__kont117900117901%_
                                                         _%hd117759117868%_
                                                         _%hd117756117858%_)
                                                        (if (gx#stx-pair?
                                                             _%tl117760117871%_)
                                                            (let ((_%e117770117816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl117760117871%_)))
                      (let ((_%tl117772117823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e117770117816%_)))
                            (_%hd117771117820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e117770117816%_))))
                        (if (gx#stx-null? _%tl117772117823%_)
                            (_%__kont117902117903%_
                             _%hd117771117820%_
                             _%hd117759117868%_
                             _%hd117756117858%_)
                            (_%__kont117904117905%_))))
                    (_%__kont117904117905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont117904117905%_))))
                                        (_%__kont117904117905%_))))))
                             (_%generate1116812%_
                              (lambda (_%where117198%_
                                       _%hd117200%_
                                       _%fender117201%_
                                       _%body117202%_
                                       _%E117203%_)
                                (letrec ((_%recur117205%_
                                          (lambda (_%hd117208%_
                                                   _%tgt117210%_
                                                   _%K117211%_)
                                            (let* ((_%__stx117943117944%_
                                                    _%hd117208%_)
                                                   (_%g117214117226%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx117943117944%_))))
                                              (let ((_%__kont117946117947%_
                                                     (lambda (_%L117535%_
                                                              _%L117537%_)
                                                       (let* ((_%g117548117556%_
                                                               (lambda (_%g117549117552%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g117549117552%_)))
                      (_%g117547117737%_
                       (lambda (_%g117549117560%_)
                         ((lambda (_%L117563%_)
                            (let* ((_%g117575117583%_
                                    (lambda (_%g117576117579%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g117576117579%_)))
                                   (_%g117574117733%_
                                    (lambda (_%g117576117587%_)
                                      ((lambda (_%L117590%_)
                                         (let* ((_%g117603117611%_
                                                 (lambda (_%g117604117607%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g117604117607%_)))
                                                (_%g117602117729%_
                                                 (lambda (_%g117604117615%_)
                                                   ((lambda (_%L117618%_)
                                                      (let* ((_%g117631117639%_
                                                              (lambda (_%g117632117635%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g117632117635%_)))
                     (_%g117630117725%_
                      (lambda (_%g117632117643%_)
                        ((lambda (_%L117646%_)
                           (let* ((_%g117659117667%_
                                   (lambda (_%g117660117663%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117660117663%_)))
                                  (_%g117658117721%_
                                   (lambda (_%g117660117671%_)
                                     ((lambda (_%L117674%_)
                                        (let* ((_%g117687117695%_
                                                (lambda (_%g117688117691%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g117688117691%_)))
                                               (_%g117686117717%_
                                                (lambda (_%g117688117699%_)
                                                  ((lambda (_%L117702%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L117563%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L117590%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L117563%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L117618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L117590%_ '()))
                                       '()))
                           (cons (cons _%L117646%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L117590%_ '()))
                                             '()))
                                 '()))
                     (cons _%L117674%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L117702%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g117688117699%_))))
                                          (_%g117686117717%_ _%E117203%_)))
                                      _%g117660117671%_))))
                             (_%g117658117721%_
                              (_%recur117205%_
                               _%L117537%_
                               _%L117618%_
                               (_%recur117205%_
                                _%L117535%_
                                _%L117646%_
                                _%K117211%_)))))
                         _%g117632117643%_))))
                (_%g117630117725%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g117604117615%_))))
                                           (_%g117602117729%_
                                            (gx#genident 'hd))))
                                       _%g117576117587%_))))
                              (_%g117574117733%_ (gx#genident 'e))))
                          _%g117549117560%_))))
                 (_%g117547117737%_ _%tgt117210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117948117949%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd117208%_)
                                                           (if (gx#underscore?
                                                                _%hd117208%_)
                                                               _%K117211%_
                                                               (if (let ((__tmp118015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g117240117242%_)
                                    (gx#bound-identifier=?
                                     _%g117240117242%_
                                     _%hd117208%_))))
                             (declare (not safe))
                             (__find __tmp118015 _%kws116807%_))
                           (let* ((_%g117248117263%_
                                   (lambda (_%g117249117259%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117249117259%_)))
                                  (_%g117247117316%_
                                   (lambda (_%g117249117267%_)
                                     (if (gx#stx-pair? _%g117249117267%_)
                                         (let ((_%e117252117270%_
                                                (gx#syntax-e
                                                 _%g117249117267%_)))
                                           (let ((_%hd117253117274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117252117270%_)))
                                                 (_%tl117254117277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117252117270%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117254117277%_)
                                                 (let ((_%e117255117280%_
                                                        (gx#syntax-e
                                                         _%tl117254117277%_)))
                                                   (let ((_%hd117256117284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117255117280%_)))
                                                         (_%tl117257117287%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117255117280%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117257117287%_)
                                                         ((lambda (_%L117290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117292%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L117292%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L117292%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L117290%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K117211%_ (cons _%E117203%_ '())))))
                  _%hd117256117284%_
                  _%hd117253117274%_)
                 (_%g117248117263%_ _%g117249117267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117248117263%_
                                                  _%g117249117267%_))))
                                         (_%g117248117263%_
                                          _%g117249117267%_)))))
                             (_%g117247117316%_
                              (list _%tgt117210%_ _%hd117208%_)))
                           (let* ((_%g117322117337%_
                                   (lambda (_%g117323117333%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117323117333%_)))
                                  (_%g117321117382%_
                                   (lambda (_%g117323117341%_)
                                     (if (gx#stx-pair? _%g117323117341%_)
                                         (let ((_%e117326117344%_
                                                (gx#syntax-e
                                                 _%g117323117341%_)))
                                           (let ((_%hd117327117348%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117326117344%_)))
                                                 (_%tl117328117351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117326117344%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117328117351%_)
                                                 (let ((_%e117329117354%_
                                                        (gx#syntax-e
                                                         _%tl117328117351%_)))
                                                   (let ((_%hd117330117358%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117329117354%_)))
                                                         (_%tl117331117361%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117329117354%_))))
                                                     (if (gx#stx-null?
                                                          _%tl117331117361%_)
                                                         ((lambda (_%L117364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L117366%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L117364%_ (cons _%L117366%_ '()))
                                      '())
                                (cons _%K117211%_ '()))))
                  _%hd117330117358%_
                  _%hd117327117348%_)
                 (_%g117322117337%_ _%g117323117341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117322117337%_
                                                  _%g117323117341%_))))
                                         (_%g117322117337%_
                                          _%g117323117341%_)))))
                             (_%g117321117382%_
                              (list _%tgt117210%_ _%hd117208%_)))))
                   (if (gx#stx-null? _%hd117208%_)
                       (let* ((_%g117388117396%_
                               (lambda (_%g117389117392%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g117389117392%_)))
                              (_%g117387117415%_
                               (lambda (_%g117389117400%_)
                                 ((lambda (_%L117403%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L117403%_ '()))
                                                (cons _%K117211%_
                                                      (cons _%E117203%_
                                                            '())))))
                                  _%g117389117400%_))))
                         (_%g117387117415%_ _%tgt117210%_))
                       (if (gx#stx-datum? _%hd117208%_)
                           (let* ((_%g117421117440%_
                                   (lambda (_%g117422117436%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g117422117436%_)))
                                  (_%g117420117499%_
                                   (lambda (_%g117422117444%_)
                                     (if (gx#stx-pair? _%g117422117444%_)
                                         (let ((_%e117426117447%_
                                                (gx#syntax-e
                                                 _%g117422117444%_)))
                                           (let ((_%hd117427117451%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e117426117447%_)))
                                                 (_%tl117428117454%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e117426117447%_))))
                                             (if (gx#stx-pair?
                                                  _%tl117428117454%_)
                                                 (let ((_%e117429117457%_
                                                        (gx#syntax-e
                                                         _%tl117428117454%_)))
                                                   (let ((_%hd117430117461%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e117429117457%_)))
                                                         (_%tl117431117464%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e117429117457%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl117431117464%_)
                                                         (let ((_%e117432117467%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl117431117464%_)))
                   (let ((_%hd117433117471%_
                          (let ()
                            (declare (not safe))
                            (##car _%e117432117467%_)))
                         (_%tl117434117474%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e117432117467%_))))
                     (if (gx#stx-null? _%tl117434117474%_)
                         ((lambda (_%L117477%_ _%L117479%_ _%L117480%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L117477%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L117480%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L117479%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K117211%_
                                              (cons _%E117203%_ '())))))
                          _%hd117433117471%_
                          _%hd117430117461%_
                          _%hd117427117451%_)
                         (_%g117421117440%_ _%g117422117444%_))))
                 (_%g117421117440%_ _%g117422117444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g117421117440%_
                                                  _%g117422117444%_))))
                                         (_%g117421117440%_
                                          _%g117422117444%_)))))
                             (_%g117420117499%_
                              (list _%tgt117210%_
                                    _%hd117208%_
                                    (let ((_%e117503%_
                                           (gx#stx-e _%hd117208%_)))
                                      (if (or (keyword? _%e117503%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e117503%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e117503%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx116653%_
                            _%where117198%_
                            _%hd117208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx117943117944%_)
                                                    (let ((_%e117218117525%_
                                                           (gx#syntax-e
                                                            _%__stx117943117944%_)))
                                                      (let ((_%tl117220117532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e117218117525%_)))
                    (_%hd117219117529%_
                     (let () (declare (not safe)) (##car _%e117218117525%_))))
                (_%__kont117946117947%_
                 _%tl117220117532%_
                 _%hd117219117529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont117948117949%_)))))))
                                  (_%recur117205%_
                                   _%hd117200%_
                                   _%tgt116805%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender117201%_
                                               (cons _%body117202%_
                                                     (cons _%E117203%_
                                                           '()))))))))
                             (_%generate-clauses116813%_
                              (lambda (_%clauses116936%_)
                                (let _%lp116939%_ ((_%rest116942%_
                                                    _%clauses116936%_)
                                                   (_%E116944%_
                                                    (gx#genident 'E))
                                                   (_%r116945%_ '()))
                                  (let* ((_%__stx117979117980%_ _%rest116942%_)
                                         (_%g116948116960%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx117979117980%_))))
                                    (let ((_%__kont117982117983%_
                                           (lambda (_%L117025%_ _%L117027%_)
                                             (let* ((_%__stx117959117960%_
                                                     _%L117027%_)
                                                    (_%g117039117050%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx117959117960%_))))
                                               (let ((_%__kont117962117963%_
                                                      (lambda (_%L117179%_)
                                                        (if (gx#stx-null?
                                                             _%L117025%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L117179%_)
                             (not (gx#stx-null? _%L117179%_)))
                        (cons (cons _%E116944%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L117179%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L117027%_))
                                          '()))
                              _%r116945%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx116653%_
                         _%L117027%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx116653%_
                     _%L117027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117964117965%_
                                                      (lambda ()
                                                        (let* ((_%g117061117069%_
                                                                (lambda (_%g117062117065%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g117062117065%_)))
                       (_%g117060117158%_
                        (lambda (_%g117062117073%_)
                          ((lambda (_%L117076%_)
                             (let* ((_%g117092117100%_
                                     (lambda (_%g117093117096%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g117093117096%_)))
                                    (_%g117091117154%_
                                     (lambda (_%g117093117104%_)
                                       ((lambda (_%L117107%_)
                                          (let* ((_%g117120117128%_
                                                  (lambda (_%g117121117124%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g117121117124%_)))
                                                 (_%g117119117150%_
                                                  (lambda (_%g117121117132%_)
                                                    ((lambda (_%L117135%_)
                                                       (_%lp116939%_
                                                        _%L117025%_
                                                        _%L117076%_
                                                        (cons (cons _%E116944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L117135%_ '()))
                      _%r116945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g117121117132%_))))
                                            (_%g117119117150%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L117107%_
                                                                '())))
                                              (gx#stx-source _%L117027%_)))))
                                        _%g117093117104%_))))
                               (_%g117091117154%_
                                (_%generate-clause116810%_
                                 _%L117027%_
                                 (cons _%L117076%_ '())))))
                           _%g117062117073%_))))
                  (_%g117060117158%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx117959117960%_)
                                                     (let ((_%e117042117169%_
                                                            (gx#syntax-e
                                                             _%__stx117959117960%_)))
                                                       (let ((_%tl117044117176%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e117042117169%_)))
                     (_%hd117043117173%_
                      (let () (declare (not safe)) (##car _%e117042117169%_))))
                 (if (gx#identifier? _%hd117043117173%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g118016_|
                          _%hd117043117173%_)
                         (_%__kont117962117963%_ _%tl117044117176%_)
                         (_%__kont117964117965%_))
                     (_%__kont117964117965%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont117964117965%_))))))
                                          (_%__kont117984117985%_
                                           (lambda ()
                                             (let* ((_%g116971116979%_
                                                     (lambda (_%g116972116975%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g116972116975%_)))
                                                    (_%g116970117004%_
                                                     (lambda (_%g116972116983%_)
                                                       ((lambda (_%L116986%_)
                                                          (cons (cons _%E116944%_
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
                                 (cons _%L116986%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx116653%_))
                                    '()))
                        _%r116945%_))
                _%g116972116983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g116970117004%_
                                                _%tgt116805%_)))))
                                      (if (gx#stx-pair? _%__stx117979117980%_)
                                          (let ((_%e116952117015%_
                                                 (gx#syntax-e
                                                  _%__stx117979117980%_)))
                                            (let ((_%tl116954117022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e116952117015%_)))
                                                  (_%hd116953117019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e116952117015%_))))
                                              (_%__kont117982117983%_
                                               _%tl116954117022%_
                                               _%hd116953117019%_)))
                                          (_%__kont117984117985%_))))))))
                      (let* ((_%bind116815%_
                              (_%generate-clauses116813%_ _%clauses116808%_))
                             (_%g116818116835%_
                              (lambda (_%g116819116831%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g116819116831%_)))
                             (_%g116817116932%_
                              (lambda (_%g116819116839%_)
                                (if (gx#stx-pair/null? _%g116819116839%_)
                                    (let ((_g118017_
                                           (gx#syntax-split-splice
                                            _%g116819116839%_
                                            '0)))
                                      (begin
                                        (let ((_g118018_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g118017_)
                                                     (##values-length
                                                      _g118017_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g118018_ 2)))
                                              (error "Context expects 2 values"
                                                     _g118018_)))
                                        (let ((_%target116821116842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g118017_ 0)))
                                              (_%tl116823116845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g118017_ 1))))
                                          (if (gx#stx-null? _%tl116823116845%_)
                                              (letrec ((_%loop116824116848%_
                                                        (lambda (_%hd116822116852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try116828116855%_)
                  (if (gx#stx-pair? _%hd116822116852%_)
                      (let ((_%e116825116858%_
                             (gx#syntax-e _%hd116822116852%_)))
                        (let ((_%lp-hd116826116862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e116825116858%_)))
                              (_%lp-tl116827116865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e116825116858%_))))
                          (_%loop116824116848%_
                           _%lp-tl116827116865%_
                           (cons _%lp-hd116826116862%_
                                 _%bind-try116828116855%_))))
                      (let ((_%bind-try116829116868%_
                             (reverse _%bind-try116828116855%_)))
                        ((lambda (_%L116872%_)
                           (let* ((_%g116890116898%_
                                   (lambda (_%g116891116894%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g116891116894%_)))
                                  (_%g116889116928%_
                                   (lambda (_%g116891116902%_)
                                     ((lambda (_%L116905%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp118019
                                                           (lambda (_%g116919116922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g116920116925%_)
                     (cons _%g116919116922%_ _%g116920116925%_))))
              (declare (not safe))
              (__foldr1 __tmp118019 '() _%L116872%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L116905%_
                                                                '())
                                                          '()))))
                                      _%g116891116902%_))))
                             (_%g116889116928%_ (car (last _%bind116815%_)))))
                         _%bind-try116829116868%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop116824116848%_
                                                 _%target116821116842%_
                                                 '()))
                                              (_%g116818116835%_
                                               _%g116819116839%_)))))
                                    (_%g116818116835%_ _%g116819116839%_)))))
                        (_%g116817116932%_ _%bind116815%_))))))
          (let* ((_%g116659116678%_
                  (lambda (_%g116660116674%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g116660116674%_)))
                 (_%g116658116801%_
                  (lambda (_%g116660116682%_)
                    (if (gx#stx-pair? _%g116660116682%_)
                        (let ((_%e116664116685%_
                               (gx#syntax-e _%g116660116682%_)))
                          (let ((_%hd116665116689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e116664116685%_)))
                                (_%tl116666116692%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e116664116685%_))))
                            (if (gx#stx-pair? _%tl116666116692%_)
                                (let ((_%e116667116695%_
                                       (gx#syntax-e _%tl116666116692%_)))
                                  (let ((_%hd116668116699%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e116667116695%_)))
                                        (_%tl116669116702%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e116667116695%_))))
                                    (if (gx#stx-pair? _%tl116669116702%_)
                                        (let ((_%e116670116705%_
                                               (gx#syntax-e
                                                _%tl116669116702%_)))
                                          (let ((_%hd116671116709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e116670116705%_)))
                                                (_%tl116672116712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e116670116705%_))))
                                            ((lambda (_%L116715%_
                                                      _%L116717%_
                                                      _%L116718%_)
                                               (if (and (gx#identifier-list?
                                                         _%L116717%_)
                                                        (gx#stx-list?
                                                         _%L116715%_))
                                                   (let* ((_%g116736116744%_
                                                           (lambda (_%g116737116740%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g116737116740%_)))
                                                          (_%g116735116797%_
                                                           (lambda (_%g116737116748%_)
                                                             ((lambda (_%L116751%_)
                                                                (let* ((_%g116763116771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g116764116767%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g116764116767%_)))
                               (_%g116762116793%_
                                (lambda (_%g116764116775%_)
                                  ((lambda (_%L116778%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L116751%_
                                                             (cons _%L116718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L116778%_ '()))))
                                   _%g116764116775%_))))
                          (_%g116762116793%_
                           (_%generate116656%_
                            _%L116751%_
                            (gx#syntax->list _%L116717%_)
                            _%L116715%_))))
                      _%g116737116748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g116735116797%_
                                                      (gx#genident 'e)))
                                                   (_%g116659116678%_
                                                    _%g116660116682%_)))
                                             _%tl116672116712%_
                                             _%hd116671116709%_
                                             _%hd116668116699%_)))
                                        (_%g116659116678%_
                                         _%g116660116682%_))))
                                (_%g116659116678%_ _%g116660116682%_))))
                        (_%g116659116678%_ _%g116660116682%_)))))
            (_%g116658116801%_ _%stx116653%_)))))))
