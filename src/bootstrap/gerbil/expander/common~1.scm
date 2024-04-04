(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g113766_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113768_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113770_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113772_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113773_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113775_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113776_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113778_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113779_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113781_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113782_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g113785_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj113762
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
          (##unchecked-structure-set! __obj113762 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '#f '11 '#f '#f))
        (let ((__tmp113765 |gx[1]#_g113766_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113765 '12 '#f '#f))
        (let ((__tmp113767 |gx[1]#_g113768_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113767 '13 '#f '#f))
        (let ((__tmp113769 |gx[1]#_g113770_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113769 '14 '#f '#f))
        (let ((__tmp113771
               (cons (cons 'e |gx[1]#_g113772_|)
                     (cons (cons 'source |gx[1]#_g113773_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113771 '15 '#f '#f))
        (let ((__tmp113774
               (cons (cons 'e |gx[1]#_g113775_|)
                     (cons (cons 'source |gx[1]#_g113776_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113774 '16 '#f '#f))
        (let ((__tmp113777
               (cons (cons 'e |gx[1]#_g113778_|)
                     (cons (cons 'source |gx[1]#_g113779_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113777 '17 '#f '#f))
        (let ((__tmp113780
               (cons (cons 'e |gx[1]#_g113781_|)
                     (cons (cons 'source |gx[1]#_g113782_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 __tmp113780 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj113762 '() '20 '#f '#f))
        __obj113762))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx112357%_)
        (let* ((_%g112361112375%_
                (lambda (_%g112362112371%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g112362112371%_)))
               (_%g112360112417%_
                (lambda (_%g112362112379%_)
                  (if (gx#stx-pair? _%g112362112379%_)
                      (let ((_%e112366112382%_
                             (gx#syntax-e _%g112362112379%_)))
                        (let ((_%hd112365112386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112366112382%_)))
                              (_%tl112364112389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112366112382%_))))
                          (if (gx#stx-pair? _%tl112364112389%_)
                              (let ((_%e112369112392%_
                                     (gx#syntax-e _%tl112364112389%_)))
                                (let ((_%hd112368112396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e112369112392%_)))
                                      (_%tl112367112399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e112369112392%_))))
                                  (if (gx#stx-null? _%tl112367112399%_)
                                      ((lambda (_%L112402%_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _%L112402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _%L112402%_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd112368112396%_)
                                      (_%g112361112375%_ _%g112362112379%_))))
                              (_%g112361112375%_ _%g112362112379%_))))
                      (_%g112361112375%_ _%g112362112379%_)))))
          (_%g112360112417%_ _%$stx112357%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx112421%_)
        (letrec ((_%generate112424%_
                  (lambda (_%tgt112573%_ _%kws112575%_ _%clauses112576%_)
                    (letrec ((_%generate-clause112578%_
                              (lambda (_%hd113513%_ _%E113515%_)
                                (let* ((_%__stx113665113666%_ _%hd113513%_)
                                       (_%g113519113546%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx113665113666%_))))
                                  (let ((_%__kont113668113669%_
                                         (lambda (_%L113642%_ _%L113644%_)
                                           (_%generate1112580%_
                                            _%hd113513%_
                                            _%L113644%_
                                            '#t
                                            _%L113642%_
                                            _%E113515%_)))
                                        (_%__kont113670113671%_
                                         (lambda (_%L113594%_
                                                  _%L113596%_
                                                  _%L113597%_)
                                           (_%generate1112580%_
                                            _%hd113513%_
                                            _%L113597%_
                                            _%L113596%_
                                            _%L113594%_
                                            _%E113515%_)))
                                        (_%__kont113672113673%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx112421%_
                                            _%hd113513%_))))
                                    (if (gx#stx-pair? _%__stx113665113666%_)
                                        (let ((_%e113525113622%_
                                               (gx#syntax-e
                                                _%__stx113665113666%_)))
                                          (let ((_%tl113523113629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e113525113622%_)))
                                                (_%hd113524113626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e113525113622%_))))
                                            (if (gx#stx-pair?
                                                 _%tl113523113629%_)
                                                (let ((_%e113528113632%_
                                                       (gx#syntax-e
                                                        _%tl113523113629%_)))
                                                  (let ((_%tl113526113639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e113528113632%_)))
                                                        (_%hd113527113636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e113528113632%_))))
                                                    (if (gx#stx-null?
                                                         _%tl113526113639%_)
                                                        (_%__kont113668113669%_
                                                         _%hd113527113636%_
                                                         _%hd113524113626%_)
                                                        (if (gx#stx-pair?
                                                             _%tl113526113639%_)
                                                            (let ((_%e113540113584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl113526113639%_)))
                      (let ((_%tl113538113591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e113540113584%_)))
                            (_%hd113539113588%_
                             (let ()
                               (declare (not safe))
                               (##car _%e113540113584%_))))
                        (if (gx#stx-null? _%tl113538113591%_)
                            (_%__kont113670113671%_
                             _%hd113539113588%_
                             _%hd113527113636%_
                             _%hd113524113626%_)
                            (_%__kont113672113673%_))))
                    (_%__kont113672113673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont113672113673%_))))
                                        (_%__kont113672113673%_))))))
                             (_%generate1112580%_
                              (lambda (_%where112966%_
                                       _%hd112968%_
                                       _%fender112969%_
                                       _%body112970%_
                                       _%E112971%_)
                                (letrec ((_%recur112973%_
                                          (lambda (_%hd112976%_
                                                   _%tgt112978%_
                                                   _%K112979%_)
                                            (let* ((_%__stx113711113712%_
                                                    _%hd112976%_)
                                                   (_%g112982112994%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx113711113712%_))))
                                              (let ((_%__kont113714113715%_
                                                     (lambda (_%L113303%_
                                                              _%L113305%_)
                                                       (let* ((_%g113316113324%_
                                                               (lambda (_%g113317113320%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g113317113320%_)))
                      (_%g113315113505%_
                       (lambda (_%g113317113328%_)
                         ((lambda (_%L113331%_)
                            (let ()
                              (let* ((_%g113343113351%_
                                      (lambda (_%g113344113347%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g113344113347%_)))
                                     (_%g113342113501%_
                                      (lambda (_%g113344113355%_)
                                        ((lambda (_%L113358%_)
                                           (let ()
                                             (let* ((_%g113371113379%_
                                                     (lambda (_%g113372113375%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g113372113375%_)))
                                                    (_%g113370113497%_
                                                     (lambda (_%g113372113383%_)
                                                       ((lambda (_%L113386%_)
                                                          (let ()
                                                            (let* ((_%g113399113407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g113400113403%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g113400113403%_)))
                           (_%g113398113493%_
                            (lambda (_%g113400113411%_)
                              ((lambda (_%L113414%_)
                                 (let ()
                                   (let* ((_%g113427113435%_
                                           (lambda (_%g113428113431%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g113428113431%_)))
                                          (_%g113426113489%_
                                           (lambda (_%g113428113439%_)
                                             ((lambda (_%L113442%_)
                                                (let ()
                                                  (let* ((_%g113455113463%_
                                                          (lambda (_%g113456113459%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g113456113459%_)))
                                                         (_%g113454113485%_
                                                          (lambda (_%g113456113467%_)
                                                            ((lambda (_%L113470%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                           (cons _%L113331%_ '()))
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _%L113358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                       (cons _%L113331%_ '()))
                                 '()))
                     '())
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _%L113386%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##car)
                                                         (cons _%L113358%_
                                                               '()))
                                                   '()))
                                       (cons (cons _%L113414%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##cdr)
                                                               (cons _%L113358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons _%L113442%_ '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%L113470%_ '()))))))
                     _%g113456113467%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g113454113485%_
                                                     _%E112971%_))))
                                              _%g113428113439%_))))
                                     (_%g113426113489%_
                                      (_%recur112973%_
                                       _%L113305%_
                                       _%L113386%_
                                       (_%recur112973%_
                                        _%L113303%_
                                        _%L113414%_
                                        _%K112979%_))))))
                               _%g113400113411%_))))
                      (_%g113398113493%_ (gx#genident 'tl)))))
                _%g113372113383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g113370113497%_
                                                (gx#genident 'hd)))))
                                         _%g113344113355%_))))
                                (_%g113342113501%_ (gx#genident 'e)))))
                          _%g113317113328%_))))
                 (_%g113315113505%_ _%tgt112978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113716113717%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd112976%_)
                                                           (let ()
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd112976%_)
                         (let () _%K112979%_)
                         (if (let ((__tmp113783
                                    (lambda (_%g113008113010%_)
                                      (gx#bound-identifier=?
                                       _%g113008113010%_
                                       _%hd112976%_))))
                               (declare (not safe))
                               (__find __tmp113783 _%kws112575%_))
                             (let ()
                               (let* ((_%g113016113031%_
                                       (lambda (_%g113017113027%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113017113027%_)))
                                      (_%g113015113084%_
                                       (lambda (_%g113017113035%_)
                                         (if (gx#stx-pair? _%g113017113035%_)
                                             (let ((_%e113022113038%_
                                                    (gx#syntax-e
                                                     _%g113017113035%_)))
                                               (let ((_%hd113021113042%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113022113038%_)))
                                                     (_%tl113020113045%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113022113038%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113020113045%_)
                                                     (let ((_%e113025113048%_
                                                            (gx#syntax-e
                                                             _%tl113020113045%_)))
                                                       (let ((_%hd113024113052%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113025113048%_)))
                     (_%tl113023113055%_
                      (let () (declare (not safe)) (##cdr _%e113025113048%_))))
                 (if (gx#stx-null? _%tl113023113055%_)
                     ((lambda (_%L113058%_ _%L113060%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'and)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'identifier?)
                                                        (cons _%L113060%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'core-identifier=?)
                                                              (cons _%L113060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _%L113058%_ '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons _%K112979%_
                                            (cons _%E112971%_ '()))))))
                      _%hd113024113052%_
                      _%hd113021113042%_)
                     (_%g113016113031%_ _%g113017113035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113016113031%_
                                                      _%g113017113035%_))))
                                             (_%g113016113031%_
                                              _%g113017113035%_)))))
                                 (_%g113015113084%_
                                  (list _%tgt112978%_ _%hd112976%_))))
                             (let ()
                               (let* ((_%g113090113105%_
                                       (lambda (_%g113091113101%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g113091113101%_)))
                                      (_%g113089113150%_
                                       (lambda (_%g113091113109%_)
                                         (if (gx#stx-pair? _%g113091113109%_)
                                             (let ((_%e113096113112%_
                                                    (gx#syntax-e
                                                     _%g113091113109%_)))
                                               (let ((_%hd113095113116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e113096113112%_)))
                                                     (_%tl113094113119%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e113096113112%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl113094113119%_)
                                                     (let ((_%e113099113122%_
                                                            (gx#syntax-e
                                                             _%tl113094113119%_)))
                                                       (let ((_%hd113098113126%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e113099113122%_)))
                     (_%tl113097113129%_
                      (let () (declare (not safe)) (##cdr _%e113099113122%_))))
                 (if (gx#stx-null? _%tl113097113129%_)
                     ((lambda (_%L113132%_ _%L113134%_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _%L113132%_
                                                  (cons _%L113134%_ '()))
                                            '())
                                      (cons _%K112979%_ '())))))
                      _%hd113098113126%_
                      _%hd113095113116%_)
                     (_%g113090113105%_ _%g113091113109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g113090113105%_
                                                      _%g113091113109%_))))
                                             (_%g113090113105%_
                                              _%g113091113109%_)))))
                                 (_%g113089113150%_
                                  (list _%tgt112978%_ _%hd112976%_)))))))
                   (if (gx#stx-null? _%hd112976%_)
                       (let ()
                         (let* ((_%g113156113164%_
                                 (lambda (_%g113157113160%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g113157113160%_)))
                                (_%g113155113183%_
                                 (lambda (_%g113157113168%_)
                                   ((lambda (_%L113171%_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _%L113171%_
                                                                '()))
                                                    (cons _%K112979%_
                                                          (cons _%E112971%_
                                                                '()))))))
                                    _%g113157113168%_))))
                           (_%g113155113183%_ _%tgt112978%_)))
                       (if (gx#stx-datum? _%hd112976%_)
                           (let ()
                             (let* ((_%g113189113208%_
                                     (lambda (_%g113190113204%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g113190113204%_)))
                                    (_%g113188113267%_
                                     (lambda (_%g113190113212%_)
                                       (if (gx#stx-pair? _%g113190113212%_)
                                           (let ((_%e113196113215%_
                                                  (gx#syntax-e
                                                   _%g113190113212%_)))
                                             (let ((_%hd113195113219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e113196113215%_)))
                                                   (_%tl113194113222%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e113196113215%_))))
                                               (if (gx#stx-pair?
                                                    _%tl113194113222%_)
                                                   (let ((_%e113199113225%_
                                                          (gx#syntax-e
                                                           _%tl113194113222%_)))
                                                     (let ((_%hd113198113229%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e113199113225%_)))
                                                           (_%tl113197113232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e113199113225%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl113197113232%_)
                                                           (let ((_%e113202113235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl113197113232%_)))
                     (let ((_%hd113201113239%_
                            (let ()
                              (declare (not safe))
                              (##car _%e113202113235%_)))
                           (_%tl113200113242%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e113202113235%_))))
                       (if (gx#stx-null? _%tl113200113242%_)
                           ((lambda (_%L113245%_ _%L113247%_ _%L113248%_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _%L113245%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _%L113248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote)
                            (cons _%L113247%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%K112979%_
                                                  (cons _%E112971%_ '()))))))
                            _%hd113201113239%_
                            _%hd113198113229%_
                            _%hd113195113219%_)
                           (_%g113189113208%_ _%g113190113212%_))))
                   (_%g113189113208%_ _%g113190113212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g113189113208%_
                                                    _%g113190113212%_))))
                                           (_%g113189113208%_
                                            _%g113190113212%_)))))
                               (_%g113188113267%_
                                (list _%tgt112978%_
                                      _%hd112976%_
                                      (let ((_%e113271%_
                                             (gx#stx-e _%hd112976%_)))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (keyword? _%e113271%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (immediate? _%e113271%_)))
                                            (let ()
                                              (gx#datum->syntax '#f 'eq?))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (number? _%e113271%_))
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
                              _%stx112421%_
                              _%where112966%_
                              _%hd112976%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx113711113712%_)
                                                    (let ((_%e112988113293%_
                                                           (gx#syntax-e
                                                            _%__stx113711113712%_)))
                                                      (let ((_%tl112986113300%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e112988113293%_)))
                    (_%hd112987113297%_
                     (let () (declare (not safe)) (##car _%e112988113293%_))))
                (_%__kont113714113715%_
                 _%tl112986113300%_
                 _%hd112987113297%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont113716113717%_)))))))
                                  (_%recur112973%_
                                   _%hd112968%_
                                   _%tgt112573%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender112969%_
                                               (cons _%body112970%_
                                                     (cons _%E112971%_
                                                           '()))))))))
                             (_%generate-clauses112581%_
                              (lambda (_%clauses112704%_)
                                (let _%lp112707%_ ((_%rest112710%_
                                                    _%clauses112704%_)
                                                   (_%E112712%_
                                                    (gx#genident 'E))
                                                   (_%r112713%_ '()))
                                  (let* ((_%__stx113747113748%_ _%rest112710%_)
                                         (_%g112716112728%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx113747113748%_))))
                                    (let ((_%__kont113750113751%_
                                           (lambda (_%L112793%_ _%L112795%_)
                                             (let* ((_%__stx113727113728%_
                                                     _%L112795%_)
                                                    (_%g112807112818%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx113727113728%_))))
                                               (let ((_%__kont113730113731%_
                                                      (lambda (_%L112947%_)
                                                        (if (gx#stx-null?
                                                             _%L112793%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L112947%_)
                             (let ((__tmp113784 (gx#stx-null? _%L112947%_)))
                               (declare (not safe))
                               (not __tmp113784)))
                        (cons (cons _%E112712%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%L112947%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%L112795%_))
                                          '()))
                              _%r112713%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx112421%_
                         _%L112795%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx112421%_
                     _%L112795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113732113733%_
                                                      (lambda ()
                                                        (let* ((_%g112829112837%_
                                                                (lambda (_%g112830112833%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g112830112833%_)))
                       (_%g112828112926%_
                        (lambda (_%g112830112841%_)
                          ((lambda (_%L112844%_)
                             (let ()
                               (let* ((_%g112860112868%_
                                       (lambda (_%g112861112864%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g112861112864%_)))
                                      (_%g112859112922%_
                                       (lambda (_%g112861112872%_)
                                         ((lambda (_%L112875%_)
                                            (let ()
                                              (let* ((_%g112888112896%_
                                                      (lambda (_%g112889112892%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g112889112892%_)))
                                                     (_%g112887112918%_
                                                      (lambda (_%g112889112900%_)
                                                        ((lambda (_%L112903%_)
                                                           (let ()
                                                             (_%lp112707%_
                                                              _%L112793%_
                                                              _%L112844%_
                                                              (cons (cons _%E112712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L112903%_ '()))
                            _%r112713%_))))
                 _%g112889112900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g112887112918%_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%L112875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%L112795%_))))))
                                          _%g112861112872%_))))
                                 (_%g112859112922%_
                                  (_%generate-clause112578%_
                                   _%L112795%_
                                   (cons _%L112844%_ '()))))))
                           _%g112830112841%_))))
                  (_%g112828112926%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx113727113728%_)
                                                     (let ((_%e112812112937%_
                                                            (gx#syntax-e
                                                             _%__stx113727113728%_)))
                                                       (let ((_%tl112810112944%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e112812112937%_)))
                     (_%hd112811112941%_
                      (let () (declare (not safe)) (##car _%e112812112937%_))))
                 (if (gx#identifier? _%hd112811112941%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g113785_|
                          _%hd112811112941%_)
                         (_%__kont113730113731%_ _%tl112810112944%_)
                         (_%__kont113732113733%_))
                     (_%__kont113732113733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont113732113733%_))))))
                                          (_%__kont113752113753%_
                                           (lambda ()
                                             (let* ((_%g112739112747%_
                                                     (lambda (_%g112740112743%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g112740112743%_)))
                                                    (_%g112738112772%_
                                                     (lambda (_%g112740112751%_)
                                                       ((lambda (_%L112754%_)
                                                          (let ()
                                                            (cons (cons _%E112712%_
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
                                   (cons _%L112754%_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _%stx112421%_))
                                      '()))
                          _%r112713%_)))
                _%g112740112751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g112738112772%_
                                                _%tgt112573%_)))))
                                      (if (gx#stx-pair? _%__stx113747113748%_)
                                          (let ((_%e112722112783%_
                                                 (gx#syntax-e
                                                  _%__stx113747113748%_)))
                                            (let ((_%tl112720112790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e112722112783%_)))
                                                  (_%hd112721112787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e112722112783%_))))
                                              (_%__kont113750113751%_
                                               _%tl112720112790%_
                                               _%hd112721112787%_)))
                                          (_%__kont113752113753%_))))))))
                      (let* ((_%bind112583%_
                              (_%generate-clauses112581%_ _%clauses112576%_))
                             (_%g112586112603%_
                              (lambda (_%g112587112599%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g112587112599%_)))
                             (_%g112585112700%_
                              (lambda (_%g112587112607%_)
                                (if (gx#stx-pair/null? _%g112587112607%_)
                                    (let ((_g113786_
                                           (gx#syntax-split-splice
                                            _%g112587112607%_
                                            '0)))
                                      (begin
                                        (let ((_g113787_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g113786_)
                                                     (##vector-length
                                                      _g113786_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g113787_ 2)))
                                              (error "Context expects 2 values"
                                                     _g113787_)))
                                        (let ((_%target112589112610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113786_ 0)))
                                              (_%tl112591112613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g113786_ 1))))
                                          (if (gx#stx-null? _%tl112591112613%_)
                                              (letrec ((_%loop112592112616%_
                                                        (lambda (_%hd112590112620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%bind-try112596112623%_)
                  (if (gx#stx-pair? _%hd112590112620%_)
                      (let ((_%e112593112626%_
                             (gx#syntax-e _%hd112590112620%_)))
                        (let ((_%lp-hd112594112630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e112593112626%_)))
                              (_%lp-tl112595112633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e112593112626%_))))
                          (_%loop112592112616%_
                           _%lp-tl112595112633%_
                           (cons _%lp-hd112594112630%_
                                 _%bind-try112596112623%_))))
                      (let ((_%bind-try112597112636%_
                             (reverse _%bind-try112596112623%_)))
                        ((lambda (_%L112640%_)
                           (let ()
                             (let* ((_%g112658112666%_
                                     (lambda (_%g112659112662%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g112659112662%_)))
                                    (_%g112657112696%_
                                     (lambda (_%g112659112670%_)
                                       ((lambda (_%L112673%_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (let ((__tmp113788
                                                               (lambda (_%g112687112690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g112688112693%_)
                         (cons _%g112687112690%_ _%g112688112693%_))))
                  (declare (not safe))
                  (__foldr1 __tmp113788 '() _%L112640%_))
                (cons (cons _%L112673%_ '()) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g112659112670%_))))
                               (_%g112657112696%_
                                (car (last _%bind112583%_))))))
                         _%bind-try112597112636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop112592112616%_
                                                 _%target112589112610%_
                                                 '()))
                                              (_%g112586112603%_
                                               _%g112587112607%_)))))
                                    (_%g112586112603%_ _%g112587112607%_)))))
                        (_%g112585112700%_ _%bind112583%_))))))
          (let* ((_%g112427112446%_
                  (lambda (_%g112428112442%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g112428112442%_)))
                 (_%g112426112569%_
                  (lambda (_%g112428112450%_)
                    (if (gx#stx-pair? _%g112428112450%_)
                        (let ((_%e112434112453%_
                               (gx#syntax-e _%g112428112450%_)))
                          (let ((_%hd112433112457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e112434112453%_)))
                                (_%tl112432112460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e112434112453%_))))
                            (if (gx#stx-pair? _%tl112432112460%_)
                                (let ((_%e112437112463%_
                                       (gx#syntax-e _%tl112432112460%_)))
                                  (let ((_%hd112436112467%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e112437112463%_)))
                                        (_%tl112435112470%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e112437112463%_))))
                                    (if (gx#stx-pair? _%tl112435112470%_)
                                        (let ((_%e112440112473%_
                                               (gx#syntax-e
                                                _%tl112435112470%_)))
                                          (let ((_%hd112439112477%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e112440112473%_)))
                                                (_%tl112438112480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e112440112473%_))))
                                            ((lambda (_%L112483%_
                                                      _%L112485%_
                                                      _%L112486%_)
                                               (if (and (gx#identifier-list?
                                                         _%L112485%_)
                                                        (gx#stx-list?
                                                         _%L112483%_))
                                                   (let* ((_%g112504112512%_
                                                           (lambda (_%g112505112508%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g112505112508%_)))
                                                          (_%g112503112565%_
                                                           (lambda (_%g112505112516%_)
                                                             ((lambda (_%L112519%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g112531112539%_
                                  (lambda (_%g112532112535%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g112532112535%_)))
                                 (_%g112530112561%_
                                  (lambda (_%g112532112543%_)
                                    ((lambda (_%L112546%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _%L112519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L112486%_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%L112546%_ '())))))
                                     _%g112532112543%_))))
                            (_%g112530112561%_
                             (_%generate112424%_
                              _%L112519%_
                              (gx#syntax->list _%L112485%_)
                              _%L112483%_)))))
                      _%g112505112516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g112503112565%_
                                                      (gx#genident 'e)))
                                                   (_%g112427112446%_
                                                    _%g112428112450%_)))
                                             _%tl112438112480%_
                                             _%hd112439112477%_
                                             _%hd112436112467%_)))
                                        (_%g112427112446%_
                                         _%g112428112450%_))))
                                (_%g112427112446%_ _%g112428112450%_))))
                        (_%g112427112446%_ _%g112428112450%_)))))
            (_%g112426112569%_ _%stx112421%_)))))))
