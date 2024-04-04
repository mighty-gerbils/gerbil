(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113741_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113743_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113745_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113747_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113748_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113750_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113751_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113753_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113754_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113756_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113757_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113760_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113737
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
          (##unchecked-structure-set! __obj113737 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '#f '11 '#f '#f))
        (let ((__tmp113740 |gx[1]#_g113741_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113740 '12 '#f '#f))
        (let ((__tmp113742 |gx[1]#_g113743_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113742 '13 '#f '#f))
        (let ((__tmp113744 |gx[1]#_g113745_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113744 '14 '#f '#f))
        (let ((__tmp113746
               (cons (cons 'e |gx[1]#_g113747_|)
                     (cons (cons 'source |gx[1]#_g113748_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113746 '15 '#f '#f))
        (let ((__tmp113749
               (cons (cons 'e |gx[1]#_g113750_|)
                     (cons (cons 'source |gx[1]#_g113751_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113749 '16 '#f '#f))
        (let ((__tmp113752
               (cons (cons 'e |gx[1]#_g113753_|)
                     (cons (cons 'source |gx[1]#_g113754_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113752 '17 '#f '#f))
        (let ((__tmp113755
               (cons (cons 'e |gx[1]#_g113756_|)
                     (cons (cons 'source |gx[1]#_g113757_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 __tmp113755 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113737 '() '20 '#f '#f))
        __obj113737))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112332%_)
        (let* ((_%g112336112350%_
                (lambda (_%g112337112346%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112337112346%_)))
               (_%g112335112392%_
                (lambda (_%g112337112354%_)
                  (if (gx#stx-pair? _%g112337112354%_)
                      (let ((_%e112341112357%_
                             (gx#syntax-e _%g112337112354%_)))
                        (let ((_%hd112340112361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112341112357%_)))
                              (_%tl112339112364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112341112357%_))))
                          (if (gx#stx-pair? _%tl112339112364%_)
                              (let ((_%e112344112367%_
                                     (gx#syntax-e _%tl112339112364%_)))
                                (let ((_%hd112343112371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112344112367%_)))
                                      (_%tl112342112374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112344112367%_))))
                                  (if (gx#stx-null? _%tl112342112374%_)
                                      ((lambda (_%L112377%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112377%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112343112371%_)
                                      (_%g112336112350%_ _%g112337112354%_))))
                              (_%g112336112350%_ _%g112337112354%_))))
                      (_%g112336112350%_ _%g112337112354%_)))))
          (_%g112335112392%_ _%$stx112332%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112396%_)
        (letrec ((_%generate112399%_
                  (lambda (_%tgt112548%_ _%kws112550%_ _%clauses112551%_)
                    (letrec ((_%generate-clause112553%_
                              (lambda (_%hd113488%_ _%E113490%_)
                                (let* ((_%__stx113640113641%_ _%hd113488%_)
                                       (_%g113494113521%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113640113641%_))))
                                  (let ((_%__kont113643113644%_
                                         (lambda (_%L113617%_ _%L113619%_)
                                           (_%generate1112555%_
                                            _%hd113488%_
                                            _%L113619%_
                                            '#t
                                            _%L113617%_
                                            _%E113490%_)))
                                        (_%__kont113645113646%_
                                         (lambda (_%L113569%_
                                                  _%L113571%_
                                                  _%L113572%_)
                                           (_%generate1112555%_
                                            _%hd113488%_
                                            _%L113572%_
                                            _%L113571%_
                                            _%L113569%_
                                            _%E113490%_)))
                                        (_%__kont113647113648%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112396%_
                                            _%hd113488%_))))
                                    (if (gx#stx-pair? _%__stx113640113641%_)
                                        (let ((_%e113500113597%_
                                               (gx#syntax-e
                                                _%__stx113640113641%_)))
                                          (let ((_%tl113498113604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113500113597%_)))
                                                (_%hd113499113601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113500113597%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113498113604%_)
                                                (let ((_%e113503113607%_
                                                       (gx#syntax-e
                                                        _%tl113498113604%_)))
                                                  (let ((_%tl113501113614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113503113607%_)))
                                                        (_%hd113502113611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113503113607%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113501113614%_)
                                                        (_%__kont113643113644%_
                                                         _%hd113502113611%_
                                                         _%hd113499113601%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113501113614%_)
                                                            (let ((_%e113515113559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113501113614%_)))
                      (let ((_%tl113513113566%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113515113559%_)))
                            (_%hd113514113563%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113515113559%_))))
                        (if (gx#stx-null? _%tl113513113566%_)
                            (_%__kont113645113646%_
                             _%hd113514113563%_
                             _%hd113502113611%_
                             _%hd113499113601%_)
                            (_%__kont113647113648%_))))
                    (_%__kont113647113648%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113647113648%_))))
                                        (_%__kont113647113648%_))))))
                             (_%generate1112555%_
                              (lambda (_%where112941%_
                                       _%hd112943%_
                                       _%fender112944%_
                                       _%body112945%_
                                       _%E112946%_)
                                (letrec ((_%recur112948%_
                                          (lambda (_%hd112951%_
                                                   _%tgt112953%_
                                                   _%K112954%_)
                                            (let* ((_%__stx113686113687%_
                                                    _%hd112951%_)
                                                   (_%g112957112969%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113686113687%_))))
                                              (let ((_%__kont113689113690%_
                                                     (lambda (_%L113278%_
                                                              _%L113280%_)
                                                       (let* ((_%g113291113299%_
                                                               (lambda (_%g113292113295%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113292113295%_)))
                      (_%g113290113480%_
                       (lambda (_%g113292113303%_)
                         ((lambda (_%L113306%_)
                            (let ()
                              (let* ((_%g113318113326%_
                                      (lambda (_%g113319113322%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113319113322%_)))
                                     (_%g113317113476%_
                                      (lambda (_%g113319113330%_)
                                        ((lambda (_%L113333%_)
                                           (let ()
                                             (let* ((_%g113346113354%_
                                                     (lambda (_%g113347113350%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113347113350%_)))
                                                    (_%g113345113472%_
                                                     (lambda (_%g113347113358%_)
                                                       ((lambda (_%L113361%_)
                                                          (let ()
                                                            (let* ((_%g113374113382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113375113378%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113375113378%_)))
                           (_%g113373113468%_
                            (lambda (_%g113375113386%_)
                              ((lambda (_%L113389%_)
                                 (let ()
                                   (let* ((_%g113402113410%_
                                           (lambda (_%g113403113406%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113403113406%_)))
                                          (_%g113401113464%_
                                           (lambda (_%g113403113414%_)
                                             ((lambda (_%L113417%_)
                                                (let ()
                                                  (let* ((_%g113430113438%_
                                                          (lambda (_%g113431113434%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113431113434%_)))
                                                         (_%g113429113460%_
                                                          (lambda (_%g113431113442%_)
                                                            ((lambda (_%L113445%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113306%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113306%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113361%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113333%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113389%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113417%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113445%_ '()))))))
                     _%g113431113442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113429113460%_
                                                     _%E112946%_))))
                                              _%g113403113414%_))))
                                     (_%g113401113464%_
                                      (_%recur112948%_
                                       _%L113280%_
                                       _%L113361%_
                                       (_%recur112948%_
                                        _%L113278%_
                                        _%L113389%_
                                        _%K112954%_))))))
                               _%g113375113386%_))))
                      (_%g113373113468%_ (gx#genident 'tl)))))
                _%g113347113358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113345113472%_
                                                (gx#genident 'hd)))))
                                         _%g113319113330%_))))
                                (_%g113317113476%_ (gx#genident 'e)))))
                          _%g113292113303%_))))
                 (_%g113290113480%_ _%tgt112953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113691113692%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112951%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112951%_)
                         (let () _%K112954%_)
                         (if (let ((__tmp113758
                                    (lambda (_%g112983112985%_)
                                      (gx#bound-identifier=?
                                       _%g112983112985%_
                                       _%hd112951%_))))
                               (declare (not safe))
                               (__find __tmp113758 _%kws112550%_))
                             (let ()
                               (let* ((_%g112991113006%_
                                       (lambda (_%g112992113002%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112992113002%_)))
                                      (_%g112990113059%_
                                       (lambda (_%g112992113010%_)
                                         (if (gx#stx-pair? _%g112992113010%_)
                                             (let ((_%e112997113013%_
                                                    (gx#syntax-e
                                                     _%g112992113010%_)))
                                               (let ((_%hd112996113017%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e112997113013%_)))
                                                     (_%tl112995113020%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e112997113013%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl112995113020%_)
                                                     (let ((_%e113000113023%_
                                                            (gx#syntax-e
                                                             _%tl112995113020%_)))
                                                       (let ((_%hd112999113027%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113000113023%_)))
                     (_%tl112998113030%_
                      (let () (declare (not safe)) (##cdr _%e113000113023%_))))
                 (if (gx#stx-null? _%tl112998113030%_)
                     ((lambda (_%L113033%_ _%L113035%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L113035%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L113035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L113033%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112954%_
                                            (cons _%E112946%_ '()))))))
                      _%hd112999113027%_
                      _%hd112996113017%_)
                     (_%g112991113006%_ _%g112992113010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112991113006%_
                                                      _%g112992113010%_))))
                                             (_%g112991113006%_
                                              _%g112992113010%_)))))
                                 (_%g112990113059%_
                                  (list _%tgt112953%_ _%hd112951%_))))
                             (let ()
                               (let* ((_%g113065113080%_
                                       (lambda (_%g113066113076%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113066113076%_)))
                                      (_%g113064113125%_
                                       (lambda (_%g113066113084%_)
                                         (if (gx#stx-pair? _%g113066113084%_)
                                             (let ((_%e113071113087%_
                                                    (gx#syntax-e
                                                     _%g113066113084%_)))
                                               (let ((_%hd113070113091%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113071113087%_)))
                                                     (_%tl113069113094%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113071113087%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113069113094%_)
                                                     (let ((_%e113074113097%_
                                                            (gx#syntax-e
                                                             _%tl113069113094%_)))
                                                       (let ((_%hd113073113101%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113074113097%_)))
                     (_%tl113072113104%_
                      (let () (declare (not safe)) (##cdr _%e113074113097%_))))
                 (if (gx#stx-null? _%tl113072113104%_)
                     ((lambda (_%L113107%_ _%L113109%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113107%_
                                                  (cons _%L113109%_ '()))
                                            '())
                                      (cons _%K112954%_ '())))))
                      _%hd113073113101%_
                      _%hd113070113091%_)
                     (_%g113065113080%_ _%g113066113084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113065113080%_
                                                      _%g113066113084%_))))
                                             (_%g113065113080%_
                                              _%g113066113084%_)))))
                                 (_%g113064113125%_
                                  (list _%tgt112953%_ _%hd112951%_)))))))
                   (if (gx#stx-null? _%hd112951%_)
                       (let ()
                         (let* ((_%g113131113139%_
                                 (lambda (_%g113132113135%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113132113135%_)))
                                (_%g113130113158%_
                                 (lambda (_%g113132113143%_)
                                   ((lambda (_%L113146%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113146%_
                                                                '()))
                                                    (cons _%K112954%_
                                                          (cons _%E112946%_
                                                                '()))))))
                                    _%g113132113143%_))))
                           (_%g113130113158%_ _%tgt112953%_)))
                       (if (gx#stx-datum? _%hd112951%_)
                           (let ()
                             (let* ((_%g113164113183%_
                                     (lambda (_%g113165113179%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113165113179%_)))
                                    (_%g113163113242%_
                                     (lambda (_%g113165113187%_)
                                       (if (gx#stx-pair? _%g113165113187%_)
                                           (let ((_%e113171113190%_
                                                  (gx#syntax-e
                                                   _%g113165113187%_)))
                                             (let ((_%hd113170113194%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113171113190%_)))
                                                   (_%tl113169113197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113171113190%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113169113197%_)
                                                   (let ((_%e113174113200%_
                                                          (gx#syntax-e
                                                           _%tl113169113197%_)))
                                                     (let ((_%hd113173113204%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113174113200%_)))
                                                           (_%tl113172113207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113174113200%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113172113207%_)
                                                           (let ((_%e113177113210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113172113207%_)))
                     (let ((_%hd113176113214%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113177113210%_)))
                           (_%tl113175113217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113177113210%_))))
                       (if (gx#stx-null? _%tl113175113217%_)
                           ((lambda (_%L113220%_ _%L113222%_ _%L113223%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113220%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113222%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112954%_
                                                  (cons _%E112946%_ '()))))))
                            _%hd113176113214%_
                            _%hd113173113204%_
                            _%hd113170113194%_)
                           (_%g113164113183%_ _%g113165113187%_))))
                   (_%g113164113183%_ _%g113165113187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113164113183%_
                                                    _%g113165113187%_))))
                                           (_%g113164113183%_
                                            _%g113165113187%_)))))
                               (_%g113163113242%_
                                (list _%tgt112953%_
                                      _%hd112951%_
                                      (let ((_%e113246%_
                                             (gx#stx-e _%hd112951%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113246%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113246%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113246%_))
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
                              _%stx112396%_
                              _%where112941%_
                              _%hd112951%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113686113687%_)
                                                    (let ((_%e112963113268%_
                                                           (gx#syntax-e
                                                            _%__stx113686113687%_)))
                                                      (let ((_%tl112961113275%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112963113268%_)))
                    (_%hd112962113272%_
                     (let () (declare (not safe)) (##car _%e112963113268%_))))
                (_%__kont113689113690%_
                 _%tl112961113275%_
                 _%hd112962113272%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113691113692%_)))))))
                                  (_%recur112948%_
                                   _%hd112943%_
                                   _%tgt112548%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112944%_
                                               (cons _%body112945%_
                                                     (cons _%E112946%_
                                                           '()))))))))
                             (_%generate-clauses112556%_
                              (lambda (_%clauses112679%_)
                                (let _%lp112682%_ ((_%rest112685%_
                                                    _%clauses112679%_)
                                                   (_%E112687%_
                                                    (gx#genident 'E))
                                                   (_%r112688%_ '()))
                                  (let* ((_%__stx113722113723%_ _%rest112685%_)
                                         (_%g112691112703%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113722113723%_))))
                                    (let ((_%__kont113725113726%_
                                           (lambda (_%L112768%_ _%L112770%_)
                                             (let* ((_%__stx113702113703%_
                                                     _%L112770%_)
                                                    (_%g112782112793%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113702113703%_))))
                                               (let ((_%__kont113705113706%_
                                                      (lambda (_%L112922%_)
                                                        (if (gx#stx-null?
                                                             _%L112768%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112922%_)
                             (let ((__tmp113759 (gx#stx-null? _%L112922%_)))
                               (declare (not safe))
                               (not __tmp113759)))
                        (cons (cons _%E112687%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112922%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112770%_))
                                          '()))
                              _%r112688%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112396%_
                         _%L112770%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112396%_
                     _%L112770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113707113708%_
                                                      (lambda ()
                                                        (let* ((_%g112804112812%_
                                                                (lambda (_%g112805112808%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112805112808%_)))
                       (_%g112803112901%_
                        (lambda (_%g112805112816%_)
                          ((lambda (_%L112819%_)
                             (let ()
                               (let* ((_%g112835112843%_
                                       (lambda (_%g112836112839%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112836112839%_)))
                                      (_%g112834112897%_
                                       (lambda (_%g112836112847%_)
                                         ((lambda (_%L112850%_)
                                            (let ()
                                              (let* ((_%g112863112871%_
                                                      (lambda (_%g112864112867%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112864112867%_)))
                                                     (_%g112862112893%_
                                                      (lambda (_%g112864112875%_)
                                                        ((lambda (_%L112878%_)
                                                           (let ()
                                                             (_%lp112682%_
                                                              _%L112768%_
                                                              _%L112819%_
                                                              (cons (cons _%E112687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112878%_ '()))
                            _%r112688%_))))
                 _%g112864112875%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112862112893%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112770%_))))))
                                          _%g112836112847%_))))
                                 (_%g112834112897%_
                                  (_%generate-clause112553%_
                                   _%L112770%_
                                   (cons _%L112819%_ '()))))))
                           _%g112805112816%_))))
                  (_%g112803112901%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113702113703%_)
                                                     (let ((_%e112787112912%_
                                                            (gx#syntax-e
                                                             _%__stx113702113703%_)))
                                                       (let ((_%tl112785112919%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112787112912%_)))
                     (_%hd112786112916%_
                      (let () (declare (not safe)) (##car _%e112787112912%_))))
                 (if (gx#identifier? _%hd112786112916%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113760_|
                          _%hd112786112916%_)
                         (_%__kont113705113706%_ _%tl112785112919%_)
                         (_%__kont113707113708%_))
                     (_%__kont113707113708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113707113708%_))))))
                                          (_%__kont113727113728%_
                                           (lambda ()
                                             (let* ((_%g112714112722%_
                                                     (lambda (_%g112715112718%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112715112718%_)))
                                                    (_%g112713112747%_
                                                     (lambda (_%g112715112726%_)
                                                       ((lambda (_%L112729%_)
                                                          (let ()
                                                            (cons (cons _%E112687%_
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
                                   (cons _%L112729%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112396%_))
                                      '()))
                          _%r112688%_)))
                _%g112715112726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112713112747%_
                                                _%tgt112548%_)))))
                                      (if (gx#stx-pair? _%__stx113722113723%_)
                                          (let ((_%e112697112758%_
                                                 (gx#syntax-e
                                                  _%__stx113722113723%_)))
                                            (let ((_%tl112695112765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112697112758%_)))
                                                  (_%hd112696112762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112697112758%_))))
                                              (_%__kont113725113726%_
                                               _%tl112695112765%_
                                               _%hd112696112762%_)))
                                          (_%__kont113727113728%_))))))))
                      (let* ((_%bind112558%_
                              (_%generate-clauses112556%_ _%clauses112551%_))
                             (_%g112561112578%_
                              (lambda (_%g112562112574%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112562112574%_)))
                             (_%g112560112675%_
                              (lambda (_%g112562112582%_)
                                (if (gx#stx-pair/null? _%g112562112582%_)
                                    (let ((_g113761_
                                           (gx#syntax-split-splice
                                            _%g112562112582%_
                                            '0)))
                                      (begin
                                        (let ((_g113762_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113761_)
                                                     (##vector-length
                                                      _g113761_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113762_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113762_)))
                                        (let ((_%target112564112585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113761_ 0)))
                                              (_%tl112566112588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113761_ 1))))
                                          (if (gx#stx-null? _%tl112566112588%_)
                                              (letrec ((_%loop112567112591%_
                                                        (lambda (_%hd112565112595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112571112598%_)
                  (if (gx#stx-pair? _%hd112565112595%_)
                      (let ((_%e112568112601%_
                             (gx#syntax-e _%hd112565112595%_)))
                        (let ((_%lp-hd112569112605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112568112601%_)))
                              (_%lp-tl112570112608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112568112601%_))))
                          (_%loop112567112591%_
                           _%lp-tl112570112608%_
                           (cons _%lp-hd112569112605%_
                                 _%bind-try112571112598%_))))
                      (let ((_%bind-try112572112611%_
                             (reverse _%bind-try112571112598%_)))
                        ((lambda (_%L112615%_)
                           (let ()
                             (let* ((_%g112633112641%_
                                     (lambda (_%g112634112637%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112634112637%_)))
                                    (_%g112632112671%_
                                     (lambda (_%g112634112645%_)
                                       ((lambda (_%L112648%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113763
                                                               (lambda (_%g112662112665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112663112668%_)
                         (cons _%g112662112665%_ _%g112663112668%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113763 '() _%L112615%_))
                (cons (cons _%L112648%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112634112645%_))))
                               (_%g112632112671%_
                                (car (last _%bind112558%_))))))
                         _%bind-try112572112611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112567112591%_
                                                 _%target112564112585%_
                                                 '()))
                                              (_%g112561112578%_
                                               _%g112562112582%_)))))
                                    (_%g112561112578%_ _%g112562112582%_)))))
                        (_%g112560112675%_ _%bind112558%_))))))
          (let* ((_%g112402112421%_
                  (lambda (_%g112403112417%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112403112417%_)))
                 (_%g112401112544%_
                  (lambda (_%g112403112425%_)
                    (if (gx#stx-pair? _%g112403112425%_)
                        (let ((_%e112409112428%_
                               (gx#syntax-e _%g112403112425%_)))
                          (let ((_%hd112408112432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112409112428%_)))
                                (_%tl112407112435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112409112428%_))))
                            (if (gx#stx-pair? _%tl112407112435%_)
                                (let ((_%e112412112438%_
                                       (gx#syntax-e _%tl112407112435%_)))
                                  (let ((_%hd112411112442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112412112438%_)))
                                        (_%tl112410112445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112412112438%_))))
                                    (if (gx#stx-pair? _%tl112410112445%_)
                                        (let ((_%e112415112448%_
                                               (gx#syntax-e
                                                _%tl112410112445%_)))
                                          (let ((_%hd112414112452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112415112448%_)))
                                                (_%tl112413112455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112415112448%_))))
                                            ((lambda (_%L112458%_
                                                      _%L112460%_
                                                      _%L112461%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112460%_)
                                                        (gx#stx-list?
                                                         _%L112458%_))
                                                   (let* ((_%g112479112487%_
                                                           (lambda (_%g112480112483%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112480112483%_)))
                                                          (_%g112478112540%_
                                                           (lambda (_%g112480112491%_)
                                                             ((lambda (_%L112494%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112506112514%_
                                  (lambda (_%g112507112510%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112507112510%_)))
                                 (_%g112505112536%_
                                  (lambda (_%g112507112518%_)
                                    ((lambda (_%L112521%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112461%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112521%_ '())))))
                                     _%g112507112518%_))))
                            (_%g112505112536%_
                             (_%generate112399%_
                              _%L112494%_
                              (gx#syntax->list _%L112460%_)
                              _%L112458%_)))))
                      _%g112480112491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112478112540%_
                                                      (gx#genident 'e)))
                                                   (_%g112402112421%_
                                                    _%g112403112425%_)))
                                             _%tl112413112455%_
                                             _%hd112414112452%_
                                             _%hd112411112442%_)))
                                        (_%g112402112421%_
                                         _%g112403112425%_))))
                                (_%g112402112421%_ _%g112403112425%_))))
                        (_%g112402112421%_ _%g112403112425%_)))))
            (_%g112401112544%_ _%stx112396%_)))))))
