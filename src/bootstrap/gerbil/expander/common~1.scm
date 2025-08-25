(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g124064_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124066_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124068_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124070_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124071_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124073_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124074_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124076_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124077_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124079_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124080_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g124082_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj124060
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
          (##unchecked-structure-set! __obj124060 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '#f '11 '#f '#f))
        (let ((__tmp124063 |gx[1]#_g124064_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124063 '12 '#f '#f))
        (let ((__tmp124065 |gx[1]#_g124066_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124065 '13 '#f '#f))
        (let ((__tmp124067 |gx[1]#_g124068_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124067 '14 '#f '#f))
        (let ((__tmp124069
               (cons (cons 'e |gx[1]#_g124070_|)
                     (cons (cons 'source |gx[1]#_g124071_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124069 '15 '#f '#f))
        (let ((__tmp124072
               (cons (cons 'e |gx[1]#_g124073_|)
                     (cons (cons 'source |gx[1]#_g124074_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124072 '16 '#f '#f))
        (let ((__tmp124075
               (cons (cons 'e |gx[1]#_g124076_|)
                     (cons (cons 'source |gx[1]#_g124077_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124075 '17 '#f '#f))
        (let ((__tmp124078
               (cons (cons 'e |gx[1]#_g124079_|)
                     (cons (cons 'source |gx[1]#_g124080_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 __tmp124078 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj124060 '() '20 '#f '#f))
        __obj124060))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx122655%_)
        (let* ((_%g122659122673%_
                (lambda (_%g122660122669%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g122660122669%_)))
               (_%g122658122715%_
                (lambda (_%g122660122677%_)
                  (if (gx#stx-pair? _%g122660122677%_)
                      (let ((_%e122662122680%_
                             (gx#syntax-e _%g122660122677%_)))
                        (let ((_%hd122663122684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e122662122680%_)))
                              (_%tl122664122687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e122662122680%_))))
                          (if (gx#stx-pair? _%tl122664122687%_)
                              (let ((_%e122665122690%_
                                     (gx#syntax-e _%tl122664122687%_)))
                                (let ((_%hd122666122694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e122665122690%_)))
                                      (_%tl122667122697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e122665122690%_))))
                                  (if (gx#stx-null? _%tl122667122697%_)
                                      ((lambda (_%L122700%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L122700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L122700%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd122666122694%_)
                                      (_%g122659122673%_ _%g122660122677%_))))
                              (_%g122659122673%_ _%g122660122677%_))))
                      (_%g122659122673%_ _%g122660122677%_)))))
          (_%g122658122715%_ _%$stx122655%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx122719%_)
        (letrec ((_%generate122722%_
                  (lambda (_%tgt122871%_ _%kws122873%_ _%clauses122874%_)
                    (letrec ((_%generate-clause122876%_
                              (lambda (_%hd123811%_ _%E123813%_)
                                (let* ((_%__stx123963123964%_ _%hd123811%_)
                                       (_%g123817123844%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx123963123964%_))))
                                  (let ((_%__kont123966123967%_
                                         (lambda (_%L123940%_ _%L123942%_)
                                           (_%generate1122878%_
                                            _%hd123811%_
                                            _%L123942%_
                                            '#t
                                            _%L123940%_
                                            _%E123813%_)))
                                        (_%__kont123968123969%_
                                         (lambda (_%L123892%_
                                                  _%L123894%_
                                                  _%L123895%_)
                                           (_%generate1122878%_
                                            _%hd123811%_
                                            _%L123895%_
                                            _%L123894%_
                                            _%L123892%_
                                            _%E123813%_)))
                                        (_%__kont123970123971%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx122719%_
                                            _%hd123811%_))))
                                    (if (gx#stx-pair? _%__stx123963123964%_)
                                        (let ((_%e123821123920%_
                                               (gx#syntax-e
                                                _%__stx123963123964%_)))
                                          (let ((_%tl123823123927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e123821123920%_)))
                                                (_%hd123822123924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e123821123920%_))))
                                            (if (gx#stx-pair?
                                                 _%tl123823123927%_)
                                                (let ((_%e123824123930%_
                                                       (gx#syntax-e
                                                        _%tl123823123927%_)))
                                                  (let ((_%tl123826123937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e123824123930%_)))
                                                        (_%hd123825123934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e123824123930%_))))
                                                    (if (gx#stx-null?
                                                         _%tl123826123937%_)
                                                        (_%__kont123966123967%_
                                                         _%hd123825123934%_
                                                         _%hd123822123924%_)
                                                        (if (gx#stx-pair?
                                                             _%tl123826123937%_)
                                                            (let ((_%e123836123882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl123826123937%_)))
                      (let ((_%tl123838123889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e123836123882%_)))
                            (_%hd123837123886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e123836123882%_))))
                        (if (gx#stx-null? _%tl123838123889%_)
                            (_%__kont123968123969%_
                             _%hd123837123886%_
                             _%hd123825123934%_
                             _%hd123822123924%_)
                            (_%__kont123970123971%_))))
                    (_%__kont123970123971%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont123970123971%_))))
                                        (_%__kont123970123971%_))))))
                             (_%generate1122878%_
                              (lambda (_%where123264%_
                                       _%hd123266%_
                                       _%fender123267%_
                                       _%body123268%_
                                       _%E123269%_)
                                (letrec ((_%recur123271%_
                                          (lambda (_%hd123274%_
                                                   _%tgt123276%_
                                                   _%K123277%_)
                                            (let* ((_%__stx124009124010%_
                                                    _%hd123274%_)
                                                   (_%g123280123292%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx124009124010%_))))
                                              (let ((_%__kont124012124013%_
                                                     (lambda (_%L123601%_
                                                              _%L123603%_)
                                                       (let* ((_%g123614123622%_
                                                               (lambda (_%g123615123618%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g123615123618%_)))
                      (_%g123613123803%_
                       (lambda (_%g123615123626%_)
                         ((lambda (_%L123629%_)
                            (let* ((_%g123641123649%_
                                    (lambda (_%g123642123645%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g123642123645%_)))
                                   (_%g123640123799%_
                                    (lambda (_%g123642123653%_)
                                      ((lambda (_%L123656%_)
                                         (let* ((_%g123669123677%_
                                                 (lambda (_%g123670123673%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g123670123673%_)))
                                                (_%g123668123795%_
                                                 (lambda (_%g123670123681%_)
                                                   ((lambda (_%L123684%_)
                                                      (let* ((_%g123697123705%_
                                                              (lambda (_%g123698123701%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g123698123701%_)))
                     (_%g123696123791%_
                      (lambda (_%g123698123709%_)
                        ((lambda (_%L123712%_)
                           (let* ((_%g123725123733%_
                                   (lambda (_%g123726123729%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123726123729%_)))
                                  (_%g123724123787%_
                                   (lambda (_%g123726123737%_)
                                     ((lambda (_%L123740%_)
                                        (let* ((_%g123753123761%_
                                                (lambda (_%g123754123757%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g123754123757%_)))
                                               (_%g123752123783%_
                                                (lambda (_%g123754123765%_)
                                                  ((lambda (_%L123768%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-pair?)
                               (cons _%L123629%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L123656%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax-e)
                           (cons _%L123629%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _%L123684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f '##car)
                                             (cons _%L123656%_ '()))
                                       '()))
                           (cons (cons _%L123712%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons _%L123656%_ '()))
                                             '()))
                                 '()))
                     (cons _%L123740%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%L123768%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g123754123765%_))))
                                          (_%g123752123783%_ _%E123269%_)))
                                      _%g123726123737%_))))
                             (_%g123724123787%_
                              (_%recur123271%_
                               _%L123603%_
                               _%L123684%_
                               (_%recur123271%_
                                _%L123601%_
                                _%L123712%_
                                _%K123277%_)))))
                         _%g123698123709%_))))
                (_%g123696123791%_ (gx#genident 'tl))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g123670123681%_))))
                                           (_%g123668123795%_
                                            (gx#genident 'hd))))
                                       _%g123642123653%_))))
                              (_%g123640123799%_ (gx#genident 'e))))
                          _%g123615123626%_))))
                 (_%g123613123803%_ _%tgt123276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124014124015%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd123274%_)
                                                           (if (gx#underscore?
                                                                _%hd123274%_)
                                                               _%K123277%_
                                                               (if (let ((__tmp124081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%g123306123308%_)
                                    (gx#bound-identifier=?
                                     _%g123306123308%_
                                     _%hd123274%_))))
                             (declare (not safe))
                             (__find __tmp124081 _%kws122873%_))
                           (let* ((_%g123314123329%_
                                   (lambda (_%g123315123325%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123315123325%_)))
                                  (_%g123313123382%_
                                   (lambda (_%g123315123333%_)
                                     (if (gx#stx-pair? _%g123315123333%_)
                                         (let ((_%e123318123336%_
                                                (gx#syntax-e
                                                 _%g123315123333%_)))
                                           (let ((_%hd123319123340%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e123318123336%_)))
                                                 (_%tl123320123343%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e123318123336%_))))
                                             (if (gx#stx-pair?
                                                  _%tl123320123343%_)
                                                 (let ((_%e123321123346%_
                                                        (gx#syntax-e
                                                         _%tl123320123343%_)))
                                                   (let ((_%hd123322123350%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e123321123346%_)))
                                                         (_%tl123323123353%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e123321123346%_))))
                                                     (if (gx#stx-null?
                                                          _%tl123323123353%_)
                                                         ((lambda (_%L123356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L123358%_)
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _%L123358%_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _%L123358%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%L123356%_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _%K123277%_ (cons _%E123269%_ '())))))
                  _%hd123322123350%_
                  _%hd123319123340%_)
                 (_%g123314123329%_ _%g123315123333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g123314123329%_
                                                  _%g123315123333%_))))
                                         (_%g123314123329%_
                                          _%g123315123333%_)))))
                             (_%g123313123382%_
                              (list _%tgt123276%_ _%hd123274%_)))
                           (let* ((_%g123388123403%_
                                   (lambda (_%g123389123399%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123389123399%_)))
                                  (_%g123387123448%_
                                   (lambda (_%g123389123407%_)
                                     (if (gx#stx-pair? _%g123389123407%_)
                                         (let ((_%e123392123410%_
                                                (gx#syntax-e
                                                 _%g123389123407%_)))
                                           (let ((_%hd123393123414%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e123392123410%_)))
                                                 (_%tl123394123417%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e123392123410%_))))
                                             (if (gx#stx-pair?
                                                  _%tl123394123417%_)
                                                 (let ((_%e123395123420%_
                                                        (gx#syntax-e
                                                         _%tl123394123417%_)))
                                                   (let ((_%hd123396123424%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e123395123420%_)))
                                                         (_%tl123397123427%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e123395123420%_))))
                                                     (if (gx#stx-null?
                                                          _%tl123397123427%_)
                                                         ((lambda (_%L123430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L123432%_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _%L123430%_ (cons _%L123432%_ '()))
                                      '())
                                (cons _%K123277%_ '()))))
                  _%hd123396123424%_
                  _%hd123393123414%_)
                 (_%g123388123403%_ _%g123389123407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g123388123403%_
                                                  _%g123389123407%_))))
                                         (_%g123388123403%_
                                          _%g123389123407%_)))))
                             (_%g123387123448%_
                              (list _%tgt123276%_ _%hd123274%_)))))
                   (if (gx#stx-null? _%hd123274%_)
                       (let* ((_%g123454123462%_
                               (lambda (_%g123455123458%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g123455123458%_)))
                              (_%g123453123481%_
                               (lambda (_%g123455123466%_)
                                 ((lambda (_%L123469%_)
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _%L123469%_ '()))
                                                (cons _%K123277%_
                                                      (cons _%E123269%_
                                                            '())))))
                                  _%g123455123466%_))))
                         (_%g123453123481%_ _%tgt123276%_))
                       (if (gx#stx-datum? _%hd123274%_)
                           (let* ((_%g123487123506%_
                                   (lambda (_%g123488123502%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g123488123502%_)))
                                  (_%g123486123565%_
                                   (lambda (_%g123488123510%_)
                                     (if (gx#stx-pair? _%g123488123510%_)
                                         (let ((_%e123492123513%_
                                                (gx#syntax-e
                                                 _%g123488123510%_)))
                                           (let ((_%hd123493123517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e123492123513%_)))
                                                 (_%tl123494123520%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e123492123513%_))))
                                             (if (gx#stx-pair?
                                                  _%tl123494123520%_)
                                                 (let ((_%e123495123523%_
                                                        (gx#syntax-e
                                                         _%tl123494123520%_)))
                                                   (let ((_%hd123496123527%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e123495123523%_)))
                                                         (_%tl123497123530%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e123495123523%_))))
                                                     (if (gx#stx-pair?
                                                          _%tl123497123530%_)
                                                         (let ((_%e123498123533%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl123497123530%_)))
                   (let ((_%hd123499123537%_
                          (let ()
                            (declare (not safe))
                            (##car _%e123498123533%_)))
                         (_%tl123500123540%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e123498123533%_))))
                     (if (gx#stx-null? _%tl123500123540%_)
                         ((lambda (_%L123543%_ _%L123545%_ _%L123546%_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _%L123543%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _%L123546%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L123545%_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _%K123277%_
                                              (cons _%E123269%_ '())))))
                          _%hd123499123537%_
                          _%hd123496123527%_
                          _%hd123493123517%_)
                         (_%g123487123506%_ _%g123488123510%_))))
                 (_%g123487123506%_ _%g123488123510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g123487123506%_
                                                  _%g123488123510%_))))
                                         (_%g123487123506%_
                                          _%g123488123510%_)))))
                             (_%g123486123565%_
                              (list _%tgt123276%_
                                    _%hd123274%_
                                    (let ((_%e123569%_
                                           (gx#stx-e _%hd123274%_)))
                                      (if (or (keyword? _%e123569%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e123569%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e123569%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx122719%_
                            _%where123264%_
                            _%hd123274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx124009124010%_)
                                                    (let ((_%e123284123591%_
                                                           (gx#syntax-e
                                                            _%__stx124009124010%_)))
                                                      (let ((_%tl123286123598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e123284123591%_)))
                    (_%hd123285123595%_
                     (let () (declare (not safe)) (##car _%e123284123591%_))))
                (_%__kont124012124013%_
                 _%tl123286123598%_
                 _%hd123285123595%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont124014124015%_)))))))
                                  (_%recur123271%_
                                   _%hd123266%_
                                   _%tgt122871%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender123267%_
                                               (cons _%body123268%_
                                                     (cons _%E123269%_
                                                           '()))))))))
                             (_%generate-clauses122879%_
                              (lambda (_%clauses123002%_)
                                (let _%lp123005%_ ((_%rest123008%_
                                                    _%clauses123002%_)
                                                   (_%E123010%_
                                                    (gx#genident 'E))
                                                   (_%r123011%_ '()))
                                  (let* ((_%__stx124045124046%_ _%rest123008%_)
                                         (_%g123014123026%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx124045124046%_))))
                                    (let ((_%__kont124048124049%_
                                           (lambda (_%L123091%_ _%L123093%_)
                                             (let* ((_%__stx124025124026%_
                                                     _%L123093%_)
                                                    (_%g123105123116%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx124025124026%_))))
                                               (let ((_%__kont124028124029%_
                                                      (lambda (_%L123245%_)
                                                        (if (gx#stx-null?
                                                             _%L123091%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L123245%_)
                             (not (gx#stx-null? _%L123245%_)))
                        (cons (cons _%E123010%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L123245%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L123093%_))
                                          '()))
                              _%r123011%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx122719%_
                         _%L123093%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx122719%_
                     _%L123093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont124030124031%_
                                                      (lambda ()
                                                        (let* ((_%g123127123135%_
                                                                (lambda (_%g123128123131%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g123128123131%_)))
                       (_%g123126123224%_
                        (lambda (_%g123128123139%_)
                          ((lambda (_%L123142%_)
                             (let* ((_%g123158123166%_
                                     (lambda (_%g123159123162%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g123159123162%_)))
                                    (_%g123157123220%_
                                     (lambda (_%g123159123170%_)
                                       ((lambda (_%L123173%_)
                                          (let* ((_%g123186123194%_
                                                  (lambda (_%g123187123190%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g123187123190%_)))
                                                 (_%g123185123216%_
                                                  (lambda (_%g123187123198%_)
                                                    ((lambda (_%L123201%_)
                                                       (_%lp123005%_
                                                        _%L123091%_
                                                        _%L123142%_
                                                        (cons (cons _%E123010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L123201%_ '()))
                      _%r123011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g123187123198%_))))
                                            (_%g123185123216%_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%L123173%_
                                                                '())))
                                              (gx#stx-source _%L123093%_)))))
                                        _%g123159123170%_))))
                               (_%g123157123220%_
                                (_%generate-clause122876%_
                                 _%L123093%_
                                 (cons _%L123142%_ '())))))
                           _%g123128123139%_))))
                  (_%g123126123224%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx124025124026%_)
                                                     (let ((_%e123108123235%_
                                                            (gx#syntax-e
                                                             _%__stx124025124026%_)))
                                                       (let ((_%tl123110123242%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e123108123235%_)))
                     (_%hd123109123239%_
                      (let () (declare (not safe)) (##car _%e123108123235%_))))
                 (if (gx#identifier? _%hd123109123239%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g124082_|
                          _%hd123109123239%_)
                         (_%__kont124028124029%_ _%tl123110123242%_)
                         (_%__kont124030124031%_))
                     (_%__kont124030124031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont124030124031%_))))))
                                          (_%__kont124050124051%_
                                           (lambda ()
                                             (let* ((_%g123037123045%_
                                                     (lambda (_%g123038123041%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g123038123041%_)))
                                                    (_%g123036123070%_
                                                     (lambda (_%g123038123049%_)
                                                       ((lambda (_%L123052%_)
                                                          (cons (cons _%E123010%_
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
                                 (cons _%L123052%_ '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (gx#stx-source _%stx122719%_))
                                    '()))
                        _%r123011%_))
                _%g123038123049%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g123036123070%_
                                                _%tgt122871%_)))))
                                      (if (gx#stx-pair? _%__stx124045124046%_)
                                          (let ((_%e123018123081%_
                                                 (gx#syntax-e
                                                  _%__stx124045124046%_)))
                                            (let ((_%tl123020123088%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e123018123081%_)))
                                                  (_%hd123019123085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e123018123081%_))))
                                              (_%__kont124048124049%_
                                               _%tl123020123088%_
                                               _%hd123019123085%_)))
                                          (_%__kont124050124051%_))))))))
                      (let* ((_%bind122881%_
                              (_%generate-clauses122879%_ _%clauses122874%_))
                             (_%g122884122901%_
                              (lambda (_%g122885122897%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g122885122897%_)))
                             (_%g122883122998%_
                              (lambda (_%g122885122905%_)
                                (if (gx#stx-pair/null? _%g122885122905%_)
                                    (let ((_g124083_
                                           (gx#syntax-split-splice
                                            _%g122885122905%_
                                            '0)))
                                      (begin
                                        (let ((_g124084_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g124083_)
                                                     (##values-length
                                                      _g124083_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g124084_ 2)))
                                              (error "Context expects 2 values"
                                                     _g124084_)))
                                        (let ((_%target122887122908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g124083_ 0)))
                                              (_%tl122889122911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g124083_ 1))))
                                          (if (gx#stx-null? _%tl122889122911%_)
                                              (letrec ((_%loop122890122914%_
                                                        (lambda (_%hd122888122918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try122894122921%_)
                  (if (gx#stx-pair? _%hd122888122918%_)
                      (let ((_%e122891122924%_
                             (gx#syntax-e _%hd122888122918%_)))
                        (let ((_%lp-hd122892122928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e122891122924%_)))
                              (_%lp-tl122893122931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e122891122924%_))))
                          (_%loop122890122914%_
                           _%lp-tl122893122931%_
                           (cons _%lp-hd122892122928%_
                                 _%bind-try122894122921%_))))
                      (let ((_%bind-try122895122934%_
                             (reverse _%bind-try122894122921%_)))
                        ((lambda (_%L122938%_)
                           (let* ((_%g122956122964%_
                                   (lambda (_%g122957122960%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g122957122960%_)))
                                  (_%g122955122994%_
                                   (lambda (_%g122957122968%_)
                                     ((lambda (_%L122971%_)
                                        (cons (gx#datum->syntax '#f 'let*)
                                              (cons (let ((__tmp124085
                                                           (lambda (_%g122985122988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g122986122991%_)
                     (cons _%g122985122988%_ _%g122986122991%_))))
              (declare (not safe))
              (__foldr1 __tmp124085 '() _%L122938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%L122971%_
                                                                '())
                                                          '()))))
                                      _%g122957122968%_))))
                             (_%g122955122994%_ (car (last _%bind122881%_)))))
                         _%bind-try122895122934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop122890122914%_
                                                 _%target122887122908%_
                                                 '()))
                                              (_%g122884122901%_
                                               _%g122885122905%_)))))
                                    (_%g122884122901%_ _%g122885122905%_)))))
                        (_%g122883122998%_ _%bind122881%_))))))
          (let* ((_%g122725122744%_
                  (lambda (_%g122726122740%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g122726122740%_)))
                 (_%g122724122867%_
                  (lambda (_%g122726122748%_)
                    (if (gx#stx-pair? _%g122726122748%_)
                        (let ((_%e122730122751%_
                               (gx#syntax-e _%g122726122748%_)))
                          (let ((_%hd122731122755%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e122730122751%_)))
                                (_%tl122732122758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e122730122751%_))))
                            (if (gx#stx-pair? _%tl122732122758%_)
                                (let ((_%e122733122761%_
                                       (gx#syntax-e _%tl122732122758%_)))
                                  (let ((_%hd122734122765%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e122733122761%_)))
                                        (_%tl122735122768%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e122733122761%_))))
                                    (if (gx#stx-pair? _%tl122735122768%_)
                                        (let ((_%e122736122771%_
                                               (gx#syntax-e
                                                _%tl122735122768%_)))
                                          (let ((_%hd122737122775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e122736122771%_)))
                                                (_%tl122738122778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e122736122771%_))))
                                            ((lambda (_%L122781%_
                                                      _%L122783%_
                                                      _%L122784%_)
                                               (if (and (gx#identifier-list?
                                                         _%L122783%_)
                                                        (gx#stx-list?
                                                         _%L122781%_))
                                                   (let* ((_%g122802122810%_
                                                           (lambda (_%g122803122806%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g122803122806%_)))
                                                          (_%g122801122863%_
                                                           (lambda (_%g122803122814%_)
                                                             ((lambda (_%L122817%_)
                                                                (let* ((_%g122829122837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g122830122833%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g122830122833%_)))
                               (_%g122828122859%_
                                (lambda (_%g122830122841%_)
                                  ((lambda (_%L122844%_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _%L122817%_
                                                             (cons _%L122784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L122844%_ '()))))
                                   _%g122830122841%_))))
                          (_%g122828122859%_
                           (_%generate122722%_
                            _%L122817%_
                            (gx#syntax->list _%L122783%_)
                            _%L122781%_))))
                      _%g122803122814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g122801122863%_
                                                      (gx#genident 'e)))
                                                   (_%g122725122744%_
                                                    _%g122726122748%_)))
                                             _%tl122738122778%_
                                             _%hd122737122775%_
                                             _%hd122734122765%_)))
                                        (_%g122725122744%_
                                         _%g122726122748%_))))
                                (_%g122725122744%_ _%g122726122748%_))))
                        (_%g122725122744%_ _%g122726122748%_)))))
            (_%g122724122867%_ _%stx122719%_)))))))
